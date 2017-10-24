.class public Lcom/android/server/bridge/BridgeProxy;
.super Ljava/lang/Object;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;,
        Lcom/android/server/bridge/BridgeProxy$Apps;,
        Lcom/android/server/bridge/BridgeProxy$BridgeLog;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;,
        Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;,
        Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;,
        Lcom/android/server/bridge/BridgeProxy$IncomingHandler;,
        Lcom/android/server/bridge/BridgeProxy$PackageReceiver;,
        Lcom/android/server/bridge/BridgeProxy$PolicyChanged;,
        Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;,
        Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;,
        Lcom/android/server/bridge/BridgeProxy$RunnableCallback;,
        Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0x1b58L

.field private static final DIR_FILEPATH:Ljava/lang/String; = "/data/misc/BridgeProxy"

.field private static final DST_FILENAME:Ljava/lang/String; = "dstCreateFile"

.field private static final FILE_EXPORT_POLICY_TYPE:I = 0x1

.field private static final FILE_IMPORT_POLICY_TYPE:I = 0x2

.field private static final KNOX_DEBUG:Z

.field private static final MAX_INIT_COUNT:I = 0xa

.field private static final PATH_MNT_EXTSD:Ljava/lang/String; = "/mnt/extSdCard"

.field private static final PATH_MNT_INTERNALSD:Ljava/lang/String; = "/mnt/sdcard"

.field private static final PATH_STORAGE_EXTSD:Ljava/lang/String; = "/storage/extSdCard"

.field private static final PATH_STORAGE_USB:Ljava/lang/String; = "/storage/"

.field private static final RCP_POLICY_CHANGED:Ljava/lang/String; = "samsung.knox.intent.action.RCP_POLICY_CHANGED"

.field private static final SRC_FILENAME:Ljava/lang/String; = "srcCreateFile"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ACTION_SHORTUCT_MIGRATION:Ljava/lang/String;

.field private final cb:Landroid/os/IRunnableCallback;

.field private dbObserver:Lcom/android/server/bridge/operations/DbObserver;

.field private mAccountChanged:Z

.field private mBridgeContext:Landroid/content/Context;

.field private mBridgePackage:Ljava/lang/String;

.field private final mBridgeProviderList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/IProviderCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerInfoResult:Landroid/content/CustomCursor;

.field private mContext:Landroid/content/Context;

.field private mCurrentInvalidKnoxName:Ljava/lang/String;

.field private mDelegateUserHandle:Landroid/os/UserHandle;

.field private mDelegateUserId:I

.field private final mHandlerDoSync:Landroid/os/Handler;

.field private mHandlerPolicyChanged:Landroid/os/Handler;

.field private final mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

.field private final mIBridgeCommandExe:Landroid/content/ICommandExeCallBack;

.field private final mIBridgeProvider:Landroid/content/IProviderCallBack;

.field private final mIBridgeSync:Landroid/content/ISyncCallBack;

.field private final mIRCPGlobalContactsDirectoryService:Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

.field private final mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

.field private final mListPolicyChanged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/bridge/BridgeProxy$PolicyChanged;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessenger:Landroid/os/Messenger;

.field private mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private mProviderServiceName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

.field private mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

.field private mSyncerServiceName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

.field private preInstalledAppsMinusEmail:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

.field private result:Landroid/content/CustomCursor;

.field private final resultLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/bridge/BridgeProxy;->KNOX_DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/IProviderCallBack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeProvider:Landroid/content/IProviderCallBack;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mProviderServiceName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/DbObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/ProcessBadgeData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeProviderList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/bridge/BridgeProxy;)I
    .locals 1

    iget v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/bridge/BridgeProxy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/bridge/BridgeProxy;->mAccountChanged:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->getBridgeContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/bridge/BridgeProxy;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "bdl"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->bridgeCmd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "resIdString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->getSyncPolicy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/bridge/BridgeProxy;Z)V
    .locals 0
    .param p1, "isUserSwitch"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->doSyncForAllSyncers(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;I)V
    .locals 0
    .param p1, "syncerName"    # Ljava/lang/String;
    .param p2, "mUserID"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->doSyncForSyncer(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/bridge/BridgeProxy;I)V
    .locals 0
    .param p1, "initCount"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->initBadgeDataAndObserver(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "syncerName"    # Ljava/lang/String;
    .param p2, "policyName"    # Ljava/lang/String;
    .param p3, "policyChangedForUser"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/BridgeProxy;->policyChanged(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;Landroid/content/CustomCursor;ZLjava/util/HashMap;)Landroid/os/Bundle;
    .locals 1
    .param p1, "mRaw_Cursor"    # Landroid/content/CustomCursor;
    .param p2, "mData_Cursor"    # Landroid/content/CustomCursor;
    .param p3, "isPhotoFilePresent"    # Z
    .param p4, "mPhotoFileMap"    # Ljava/util/HashMap;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/bridge/BridgeProxy;->insertContact(Landroid/content/CustomCursor;Landroid/content/CustomCursor;ZLjava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->isAllowedPackagesForBridgeCmd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Ljava/lang/String;)Z
    .locals 1
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->isBridgeCmd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I
    .locals 1
    .param p1, "resIdString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/bridge/BridgeProxy;II)I
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "policyType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getFilesPolicy(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/bridge/BridgeProxy;I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/bridge/BridgeProxy;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "mCurrentInvalidKnoxName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    const-class v0, Lcom/android/server/bridge/BridgeProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bridge/BridgeProxy;->KNOX_DEBUG:Z

    .line 96
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/server/bridge/operations/SimplePersonaInfos;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "bridgePackage"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string/jumbo v0, "com.sec.knox.action.SHORTCUT_MIGRATION_FOR_2_3_0"

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->ACTION_SHORTUCT_MIGRATION:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    .line 121
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;

    .line 122
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;

    .line 125
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    .line 126
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeProvider:Landroid/content/IProviderCallBack;

    .line 127
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeSync:Landroid/content/ISyncCallBack;

    .line 128
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeCommandExe:Landroid/content/ICommandExeCallBack;

    .line 129
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIRCPGlobalContactsDirectoryService:Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

    .line 130
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    .line 132
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeProviderList:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mThreadMap:Ljava/util/HashMap;

    .line 137
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 145
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    .line 146
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mListPolicyChanged:Ljava/util/List;

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    .line 150
    iput-boolean v1, p0, Lcom/android/server/bridge/BridgeProxy;->mAccountChanged:Z

    .line 151
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;

    .line 160
    iput v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 161
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 162
    const-string/jumbo v0, "com.samsung.knox.rcp.components"

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    .line 164
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    .line 165
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    .line 166
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 173
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mProviderServiceName:Ljava/util/HashMap;

    .line 176
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    .line 1432
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IncomingHandler;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mMessenger:Landroid/os/Messenger;

    .line 2545
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$RunnableCallback;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->cb:Landroid/os/IRunnableCallback;

    .line 210
    iput p1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 211
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 212
    iput-object p2, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    .line 213
    iput-object p3, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mProviderServiceName:Ljava/util/HashMap;

    .line 209
    return-void
.end method

.method private bridgeCmd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 21
    .param p1, "bdl"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2703
    const-string/jumbo v1, "cmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2704
    .local v7, "cmd":Ljava/lang/String;
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "bridgeCmd() , cmd :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    if-eqz v1, :cond_7

    .line 2706
    const-string/jumbo v1, "contactsquery"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2707
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2708
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "projection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2709
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v1, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2710
    .local v4, "selection":Ljava/lang/String;
    const-string/jumbo v1, "selectionArgs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2711
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v1, "sortOrder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2713
    .local v6, "sortOrder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2715
    .local v11, "mCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/bridge/BridgeProxy;->getProxyResponse(Landroid/database/Cursor;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 2717
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "sortOrder":Ljava/lang/String;
    .end local v11    # "mCursor":Landroid/database/Cursor;
    :cond_0
    const-string/jumbo v1, "contactsinsert"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2718
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2719
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v1, "values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/content/ContentValues;

    .line 2721
    .local v17, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 2722
    .local v15, "result":Landroid/net/Uri;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2723
    .local v13, "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2724
    return-object v13

    .line 2726
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v13    # "resp":Landroid/os/Bundle;
    .end local v15    # "result":Landroid/net/Uri;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string/jumbo v1, "contactsdelete"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2727
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2728
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v1, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2729
    .restart local v4    # "selection":Ljava/lang/String;
    const-string/jumbo v1, "selectionArgs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2731
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2734
    .local v14, "result":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2735
    .restart local v13    # "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2736
    return-object v13

    .line 2738
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "resp":Landroid/os/Bundle;
    .end local v14    # "result":I
    :cond_2
    const-string/jumbo v1, "contactsupdate"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2739
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2740
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v1, "values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/content/ContentValues;

    .line 2741
    .restart local v17    # "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2742
    .restart local v4    # "selection":Ljava/lang/String;
    const-string/jumbo v1, "selectionArgs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2744
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2747
    .restart local v14    # "result":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2748
    .restart local v13    # "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2749
    return-object v13

    .line 2751
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "resp":Landroid/os/Bundle;
    .end local v14    # "result":I
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string/jumbo v1, "contactsbulkInsert"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2752
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2753
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v1, "values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v18

    .line 2755
    .local v18, "values":[Landroid/os/Parcelable;
    const/4 v8, 0x0

    .line 2756
    .local v8, "content":[Landroid/content/ContentValues;
    if-eqz v18, :cond_4

    .line 2757
    move-object/from16 v0, v18

    array-length v1, v0

    new-array v8, v1, [Landroid/content/ContentValues;

    .line 2758
    .local v8, "content":[Landroid/content/ContentValues;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v1, v0

    if-ge v10, v1, :cond_4

    .line 2759
    aget-object v1, v18, v10

    check-cast v1, Landroid/content/ContentValues;

    aput-object v1, v8, v10

    .line 2758
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2762
    .end local v8    # "content":[Landroid/content/ContentValues;
    .end local v10    # "i":I
    :cond_4
    if-eqz v8, :cond_5

    .line 2763
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v14

    .line 2764
    .restart local v14    # "result":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2765
    .restart local v13    # "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2766
    return-object v13

    .line 2768
    .end local v13    # "resp":Landroid/os/Bundle;
    .end local v14    # "result":I
    :cond_5
    const/4 v1, 0x0

    return-object v1

    .line 2770
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v18    # "values":[Landroid/os/Parcelable;
    :cond_6
    const-string/jumbo v1, "contactsapplyBatch"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2772
    const-string/jumbo v1, "operations"

    .line 2771
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 2774
    .local v12, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v16, 0x0

    .line 2776
    .local v16, "result":[Landroid/content/ContentProviderResult;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2777
    const-string/jumbo v19, "com.android.contacts"

    .line 2776
    move-object/from16 v0, v19

    invoke-virtual {v1, v0, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 2782
    .end local v16    # "result":[Landroid/content/ContentProviderResult;
    :goto_1
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2783
    .restart local v13    # "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    move-object/from16 v0, v16

    invoke-virtual {v13, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2784
    return-object v13

    .line 2778
    .end local v13    # "resp":Landroid/os/Bundle;
    .restart local v16    # "result":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v9

    .line 2779
    .local v9, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1

    .line 2788
    .end local v9    # "e":Landroid/content/OperationApplicationException;
    .end local v12    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v16    # "result":[Landroid/content/ContentProviderResult;
    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method private checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 194
    const-string/jumbo v1, "Proxy"

    .line 195
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkCallerPermissionFor, ServiceName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , MethodName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 196
    invoke-static {v2, v3, v4, v1, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v0, Ljava/lang/SecurityException;

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    const-string/jumbo v3, "] with uid["

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    const-string/jumbo v3, "] trying to access methodName ["

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    const-string/jumbo v3, "] in ["

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    const-string/jumbo v3, "] service"

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 204
    throw v0

    .line 206
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    return v5
.end method

.method private checkHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 851
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 852
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " onReceive RCP_POLICY_CHANGED removeCallbacksAndMessages "

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 854
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    .line 850
    :cond_0
    return-void
.end method

.method private doSyncForAllSyncers(Z)V
    .locals 16
    .param p1, "isUserSwitch"    # Z

    .prologue
    .line 1199
    sget-object v13, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "doSyncForAllSyncers , currentUserID :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " , isUserSwitch : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    if-eqz v13, :cond_0

    .line 1205
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1210
    .local v3, "isRequiredToSyncMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1195
    .end local v3    # "isRequiredToSyncMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 1211
    .restart local v3    # "isRequiredToSyncMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1212
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 1213
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 1212
    invoke-virtual {v13, v14}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getExtraInfo(I)Landroid/os/Bundle;

    move-result-object v9

    .line 1215
    .local v9, "persona_info":Landroid/os/Bundle;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1217
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1218
    .local v8, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1219
    .local v12, "syncerName":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1221
    .local v11, "serviceName":Ljava/lang/String;
    if-eqz v12, :cond_3

    if-nez v11, :cond_4

    .line 1222
    :cond_3
    sget-object v13, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    .line 1223
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Issue doSyncForAllSyncers(); skipping null values: syncerName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1224
    const-string/jumbo v15, "; serviceName="

    .line 1223
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1222
    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1228
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1229
    .local v2, "intent":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 1230
    .local v10, "policyValue":Ljava/lang/String;
    sget-object v13, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " Sync during switch package+service == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1231
    const-string/jumbo v15, " syncerName is "

    .line 1230
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const-string/jumbo v13, "Contacts"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1234
    const-string/jumbo v13, "Calendar"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1233
    if-eqz v13, :cond_2

    .line 1237
    :cond_5
    const-string/jumbo v13, "knox-import-data"

    .line 1236
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1238
    .local v10, "policyValue":Ljava/lang/String;
    sget-object v13, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "doSyncForAllSyncers , IMPORT_DATA policyValue  :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    if-eqz p1, :cond_7

    .line 1241
    if-eqz v10, :cond_6

    const-string/jumbo v13, "true"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1242
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/bridge/BridgeProxy;->doSyncForSyncer(Ljava/lang/String;I)V

    .line 1278
    :cond_6
    :goto_1
    const-string/jumbo v13, "knox-export-data"

    .line 1277
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1279
    sget-object v13, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "doSyncForAllSyncers , EXPORT_DATA policyValue  :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    if-eqz p1, :cond_c

    .line 1282
    if-eqz v10, :cond_2

    const-string/jumbo v13, "true"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v13, v12, v14}, Lcom/samsung/android/knox/SemRemoteContentManager;->doSyncForSyncer(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1244
    :cond_7
    if-eqz v10, :cond_b

    const-string/jumbo v13, "false"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v13}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v6

    .line 1247
    .local v6, "mPersonaIds":[I
    const/4 v7, 0x1

    .line 1248
    .local v7, "mUnRegisterFlag":Z
    if-eqz v6, :cond_9

    .line 1249
    const/4 v5, 0x0

    .line 1250
    .local v5, "mImportPolicy":Ljava/lang/String;
    const/4 v13, 0x0

    array-length v14, v6

    .end local v5    # "mImportPolicy":Ljava/lang/String;
    :goto_2
    if-ge v13, v14, :cond_9

    aget v1, v6, v13

    .line 1256
    .local v1, "id":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    if-eq v15, v1, :cond_8

    .line 1258
    const-string/jumbo v15, "knox-import-data"

    .line 1257
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15, v1}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1259
    .local v5, "mImportPolicy":Ljava/lang/String;
    const-string/jumbo v15, "true"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1260
    const/4 v7, 0x0

    .line 1250
    .end local v5    # "mImportPolicy":Ljava/lang/String;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1265
    .end local v1    # "id":I
    :cond_9
    sget-object v13, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " mUnRegisterFlag : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1266
    const-string/jumbo v15, " , syncerName : "

    .line 1265
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    if-eqz v7, :cond_a

    .line 1268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Lcom/samsung/android/knox/SemRemoteContentManager;->unRegisterObserver(Ljava/lang/String;I)V

    .line 1273
    .end local v6    # "mPersonaIds":[I
    .end local v7    # "mUnRegisterFlag":Z
    :cond_a
    :goto_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/bridge/BridgeProxy;->doSyncForSyncer(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1271
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerObserver(Ljava/lang/String;I)V

    goto :goto_3

    .line 1285
    :cond_c
    if-eqz v10, :cond_d

    const-string/jumbo v13, "false"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v13, v12}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    .line 1290
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v13, v12, v14}, Lcom/samsung/android/knox/SemRemoteContentManager;->doSyncForSyncer(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1288
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v13, v12}, Lcom/android/server/bridge/operations/DbObserver;->registerObserver(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private doSyncForSyncer(Ljava/lang/String;I)V
    .locals 17
    .param p1, "syncerName"    # Ljava/lang/String;
    .param p2, "mUserID"    # I

    .prologue
    .line 1119
    sget-object v14, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " doSyncForSyncer, syncerName :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " , mUserID :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/4 v12, 0x0

    .line 1128
    .local v12, "serviceName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 1129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "serviceName":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 1134
    .local v12, "serviceName":Ljava/lang/String;
    sget-object v14, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " Sync during switch package+service == "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1135
    const-string/jumbo v16, " syncerName is "

    .line 1134
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1135
    const-string/jumbo v16, ",Provider ID : "

    .line 1134
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1138
    .local v7, "intent":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 1139
    .local v10, "policyValue":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 1141
    const-string/jumbo v14, "knox-import-data"

    .line 1140
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1156
    .end local v10    # "policyValue":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v10, :cond_3

    const-string/jumbo v14, "false"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1158
    const-string/jumbo v14, "dowhat"

    const-string/jumbo v15, "DELETE"

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    const-string/jumbo v14, "delete_synced_data_of_user"

    move/from16 v0, p2

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1160
    sget-object v14, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " delete synced data policyName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1161
    const-string/jumbo v16, " providerID = "

    .line 1160
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1162
    const-string/jumbo v16, " SyncerID = "

    .line 1160
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    .line 1160
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1163
    const-string/jumbo v16, " syncerName = "

    .line 1160
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :goto_1
    new-instance v13, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 1174
    .local v13, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    iget-object v6, v13, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .line 1175
    .local v6, "fullServiceName":Ljava/lang/String;
    iget-object v9, v13, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    .line 1176
    .local v9, "packageName":Ljava/lang/String;
    sget-object v14, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startRCPComponentsService = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v13, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " for syncer "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v9, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-virtual {v7, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1182
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1183
    .local v2, "bundle":Landroid/os/Bundle;
    new-instance v8, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    invoke-direct {v8, v14}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1184
    .local v8, "mProxyMessenger":Landroid/os/Messenger;
    const-string/jumbo v14, "proxy"

    invoke-virtual {v2, v14, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1185
    const-string/jumbo v14, "binderBundle"

    invoke-virtual {v7, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1187
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v14, v7, v15}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1118
    :goto_2
    return-void

    .line 1131
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v6    # "fullServiceName":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "mProxyMessenger":Landroid/os/Messenger;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v13    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    .local v12, "serviceName":Ljava/lang/String;
    :cond_1
    return-void

    .line 1144
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v10    # "policyValue":Ljava/lang/String;
    .local v12, "serviceName":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1145
    .local v11, "req":Landroid/os/Bundle;
    const-string/jumbo v14, "syncerName"

    move-object/from16 v0, p1

    invoke-virtual {v11, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string/jumbo v14, "action"

    const-string/jumbo v15, "GetExportPolicy"

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move/from16 v0, p2

    invoke-virtual {v14, v15, v0, v11}, Lcom/samsung/android/knox/SemRemoteContentManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1149
    .restart local v2    # "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1150
    const-string/jumbo v14, "policyValue"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .local v10, "policyValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 1151
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v11    # "req":Landroid/os/Bundle;
    .local v10, "policyValue":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1152
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1167
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v10    # "policyValue":Ljava/lang/String;
    :cond_3
    sget-object v14, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " start syncing for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "for policy name ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1168
    const-string/jumbo v16, " from provider"

    .line 1167
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const-string/jumbo v14, "syncing_from_user"

    move/from16 v0, p2

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1188
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "cn":Landroid/content/ComponentName;
    .restart local v6    # "fullServiceName":Ljava/lang/String;
    .restart local v8    # "mProxyMessenger":Landroid/os/Messenger;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v13    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :catch_1
    move-exception v5

    .line 1189
    .local v5, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Unable to start service"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private enableComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "compName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 627
    :try_start_0
    const-string/jumbo v5, "package"

    .line 626
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 628
    .local v3, "iPM":Landroid/content/pm/IPackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    .local v0, "componentName":Landroid/content/ComponentName;
    iget v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-interface {v3, v0, v5}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v4

    .line 630
    .local v4, "setting":I
    if-eq v4, v6, :cond_0

    .line 633
    iget v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 632
    const/4 v6, 0x1

    .line 633
    const/4 v7, 0x1

    .line 631
    invoke-interface {v3, v0, v6, v7, v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v4    # "setting":I
    :cond_0
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e1":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 635
    .end local v2    # "e1":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 636
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", component :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not installed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fillPreInstalledAppsMap()V
    .locals 2

    .prologue
    .line 447
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "fill preinstalled apps start"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.android.app.memo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.infraware.polarisviewer5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.browser.provider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.marvin.talkback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.chrome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.apps.maps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gsf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.setupwizard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gsf.login"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.feedback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.partnersetup"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.street"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.backuptransport"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.configupdater"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.syncadapters.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.syncadapters.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.tts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.gd.mobicore.pa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.baidu.map.location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.amap.android.location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.locationhistory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.camera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.widgetapp.digitalclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.soundalive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.myfiles"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.samsungapps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.osp.app.signin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.billing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.sprextension"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.gallery3d"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.android.mdm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.android.externalstorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.everglades.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.videoplayer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.android.app.SamsungContentsAgent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.android.app.pinboard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.sec.enterprise.mdm.vpn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string/jumbo v1, "com.samsung.helphub"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "fill preinstall apps end"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method private getBridgeContext()Landroid/content/Context;
    .locals 6

    .prologue
    .line 3094
    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    .line 3095
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 3094
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3096
    .local v0, "bridgeContext":Landroid/content/Context;
    return-object v0

    .line 3097
    .end local v0    # "bridgeContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 3098
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bridge package not found: "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    const/4 v2, 0x0

    return-object v2
.end method

.method private getBridgeStringResource(I)Ljava/lang/String;
    .locals 5
    .param p1, "resId"    # I

    .prologue
    .line 3117
    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3118
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 3117
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 3119
    .local v1, "packageResources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 3120
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 3121
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bridge package not found: "

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    const/4 v2, 0x0

    return-object v2
.end method

.method private getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "resId"    # I
    .param p2, "mCurrentInvalidKnoxName"    # Ljava/lang/String;

    .prologue
    .line 3128
    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3129
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 3128
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 3130
    .local v1, "packageResources":Landroid/content/res/Resources;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 3131
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 3132
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bridge package not found: "

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    const/4 v2, 0x0

    return-object v2
.end method

.method private getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "resIdString"    # Ljava/lang/String;

    .prologue
    .line 3105
    :try_start_0
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3106
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 3105
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 3107
    .local v1, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v3, "string"

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3108
    .local v2, "resId":I
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3109
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    .end local v2    # "resId":I
    :catch_0
    move-exception v0

    .line 3110
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "bridge package not found: "

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    const/4 v3, 0x0

    return-object v3
.end method

.method private getBridgeStringResourceId(Ljava/lang/String;)I
    .locals 5
    .param p1, "resIdString"    # Ljava/lang/String;

    .prologue
    .line 3139
    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3140
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 3139
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 3141
    .local v1, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v2, "string"

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3142
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 3143
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bridge package not found: "

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    const/4 v2, -0x1

    return v2
.end method

.method private getFilesPolicy(II)I
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "policyType"    # I

    .prologue
    .line 1115
    const/4 v0, 0x0

    return v0
.end method

.method private getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1054
    const/4 v4, 0x0

    .line 1057
    .local v4, "policy":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1060
    .local v2, "ident":J
    :try_start_0
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: appName(syncer) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ; policyProperty = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1063
    const-string/jumbo v6, "persona_policy"

    .line 1062
    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    .line 1064
    .local v1, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    iget v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v1, v5, p1, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1070
    .end local v1    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    .end local v4    # "policy":Ljava/lang/String;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: policy value returned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    return-object v4

    .line 1066
    .restart local v4    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: threw an exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "mUserID"    # I

    .prologue
    .line 1076
    const/4 v4, 0x0

    .line 1077
    .local v4, "policy":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1080
    .local v2, "ident":J
    :try_start_0
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: appName(syncer) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ; policyProperty = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1081
    const-string/jumbo v7, " , mUserID : "

    .line 1080
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1083
    const-string/jumbo v6, "persona_policy"

    .line 1082
    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    .line 1084
    .local v1, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    invoke-virtual {v1, p3, p1, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1090
    .end local v1    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    .end local v4    # "policy":Ljava/lang/String;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1091
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: policy value returned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    return-object v4

    .line 1086
    .restart local v4    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: threw an exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getProxyResponse(Landroid/database/Cursor;)Landroid/os/Bundle;
    .locals 5
    .param p1, "mCursor"    # Landroid/database/Cursor;

    .prologue
    .line 2682
    const/4 v1, 0x0

    .line 2683
    .local v1, "remoteCursor":Landroid/content/CustomCursor;
    if-eqz p1, :cond_0

    .line 2684
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2685
    new-instance v3, Landroid/database/CursorWindow;

    const-string/jumbo v4, "contactsquery"

    invoke-direct {v3, v4}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 2687
    .local v3, "window":Landroid/database/CursorWindow;
    new-instance v0, Landroid/database/CrossProcessCursorWrapper;

    invoke-direct {v0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2688
    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursorWrapper;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/database/CrossProcessCursorWrapper;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 2690
    new-instance v1, Landroid/content/CustomCursor;

    .end local v1    # "remoteCursor":Landroid/content/CustomCursor;
    invoke-direct {v1, v3}, Landroid/content/CustomCursor;-><init>(Landroid/database/CursorWindow;)V

    .line 2691
    .local v1, "remoteCursor":Landroid/content/CustomCursor;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/CustomCursor;->setColumnNames([Ljava/lang/String;)V

    .line 2692
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/CustomCursor;->setAutoClose(Z)V

    .line 2694
    invoke-virtual {v0}, Landroid/database/CrossProcessCursorWrapper;->close()V

    .line 2697
    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursorWrapper;
    .end local v1    # "remoteCursor":Landroid/content/CustomCursor;
    .end local v3    # "window":Landroid/database/CursorWindow;
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2698
    .local v2, "resp":Landroid/os/Bundle;
    const-string/jumbo v4, "result"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2699
    return-object v2
.end method

.method private getSyncPolicy()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1096
    const/4 v2, 0x0

    .line 1098
    .local v2, "policy":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSyncPolicy() called"

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1100
    const-string/jumbo v4, "persona_policy"

    .line 1099
    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    .line 1101
    .local v1, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    const-string/jumbo v3, "Contacts"

    invoke-virtual {v1, v3}, Landroid/os/PersonaPolicyManager;->getSyncPolicy(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1106
    .end local v1    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    .end local v2    # "policy":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSyncPolicy(): policy value returned = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    return-object v2

    .line 1102
    .restart local v2    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSyncPolicy(): threw an exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initBadgeDataAndObserver(I)V
    .locals 6
    .param p1, "initCount"    # I

    .prologue
    .line 415
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initBadgeDataAndObserver  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 417
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->getInstance(Landroid/content/Context;)Lcom/android/server/bridge/operations/ProcessBadgeData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    .line 418
    new-instance v2, Lcom/android/server/bridge/operations/DbObserver;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-direct {v2, v3, v4}, Lcom/android/server/bridge/operations/DbObserver;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    .line 421
    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 422
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "intitalize the badge count hash map for Persona : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget v3, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->initializePersonaBadgeCache(I)V

    .line 424
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iget v3, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v1

    .line 425
    .local v1, "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    iget-boolean v2, v1, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    if-nez v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget v3, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->trySync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v1    # "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_0
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v2, 0xa

    if-gt p1, v2, :cond_0

    .line 434
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initBadgeDataAndObserver postDelayed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/bridge/BridgeProxy$2;

    invoke-direct {v3, p0, p1}, Lcom/android/server/bridge/BridgeProxy$2;-><init>(Lcom/android/server/bridge/BridgeProxy;I)V

    .line 441
    const-wide/16 v4, 0x7d0

    .line 435
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private insertContact(Landroid/content/CustomCursor;Landroid/content/CustomCursor;ZLjava/util/HashMap;)Landroid/os/Bundle;
    .locals 34
    .param p1, "mRaw_Cursor"    # Landroid/content/CustomCursor;
    .param p2, "mData_Cursor"    # Landroid/content/CustomCursor;
    .param p3, "isPhotoFilePresent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/CustomCursor;",
            "Landroid/content/CustomCursor;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[B>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 2905
    .local p4, "mPhotoFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;[B>;"
    const-string/jumbo v5, "vnd.sec.contact.phone"

    .line 2906
    .local v5, "ACCOUNT_TYPE":Ljava/lang/String;
    const-string/jumbo v4, "vnd.sec.contact.phone"

    .line 2907
    .local v4, "ACCOUNT_NAME_STR":Ljava/lang/String;
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2908
    .local v7, "CON_RAW_CONTACTS_URI":Landroid/net/Uri;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .local v6, "CON_DATA_URI":Landroid/net/Uri;
    const/16 v30, 0x0

    .line 2910
    .local v30, "rawContactPhotoUri":Landroid/net/Uri;
    new-instance v28, Landroid/os/Bundle;

    invoke-direct/range {v28 .. v28}, Landroid/os/Bundle;-><init>()V

    .line 2911
    .local v28, "mResult":Landroid/os/Bundle;
    const/16 v20, 0x0

    .line 2912
    .local v20, "mOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v14, 0x0

    .line 2913
    .local v14, "mData_Builder":Landroid/content/ContentProviderOperation$Builder;
    const/16 v24, 0x0

    .line 2914
    .local v24, "mRawIdBackRefMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const-wide/16 v26, 0x0

    .local v26, "mRaw_Id":J
    const-wide/16 v16, 0x0

    .line 2915
    .local v16, "mData_Raw_Id":J
    const/16 v22, 0x0

    .line 2916
    .local v22, "mPhotoFileByteArray":[B
    const/4 v12, 0x0

    .line 2917
    .local v12, "mColumn_Names":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 2918
    .local v19, "mMimeType":Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, "mRawContactBackRefIndex":I
    const/16 v29, 0x0

    .local v29, "mTotalNoOfOps":I
    const/16 v25, 0x0

    .local v25, "mRaw_index":I
    const/4 v15, 0x0

    .line 2920
    .local v15, "mData_Index":I
    const-string/jumbo v31, "result"

    const-string/jumbo v32, "false"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 2922
    :cond_0
    sget-object v31, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v32, "mRaw_Cursor OR mData_Cursor is null. Do nothing"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    if-eqz p1, :cond_1

    .line 2925
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->close()V

    .line 2926
    :cond_1
    if-eqz p2, :cond_2

    .line 2927
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2928
    :cond_2
    return-object v28

    .line 2929
    :catch_0
    move-exception v9

    .line 2930
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2934
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->moveToFirst()Z

    move-result v31

    if-eqz v31, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->moveToFirst()Z

    move-result v31

    if-eqz v31, :cond_9

    .line 2936
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "mOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2937
    .local v20, "mOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v24, Ljava/util/HashMap;

    .end local v24    # "mRawIdBackRefMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 2938
    .local v24, "mRawIdBackRefMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v23, 0x0

    .line 2939
    const/16 v29, 0x0

    .line 2941
    const/16 v25, 0x0

    const/4 v15, 0x0

    .end local v12    # "mColumn_Names":[Ljava/lang/String;
    .end local v14    # "mData_Builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v19    # "mMimeType":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->getCount()I

    move-result v31

    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    .line 2943
    const-string/jumbo v31, "_id"

    .line 2942
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getLong(I)J

    move-result-wide v26

    .line 2944
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v31

    .line 2946
    const-string/jumbo v32, "account_type"

    const-string/jumbo v33, "vnd.sec.contact.phone"

    .line 2944
    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v31

    .line 2947
    const-string/jumbo v32, "account_name"

    const-string/jumbo v33, "vnd.sec.contact.phone"

    .line 2944
    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v31

    .line 2949
    const-string/jumbo v32, "starred"

    .line 2951
    const-string/jumbo v33, "starred"

    .line 2950
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 2944
    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v31

    .line 2953
    const-string/jumbo v32, "display_name_source"

    .line 2955
    const-string/jumbo v33, "display_name_source"

    .line 2954
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getInt(I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 2944
    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v31

    .line 2962
    const-string/jumbo v32, "raw_contact_is_read_only"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 2944
    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2964
    move/from16 v23, v29

    .line 2965
    sget-object v31, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "MoveTo, Raw_id : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " ,BackRefIndex : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 2966
    const-string/jumbo v33, " , mRaw_index : "

    .line 2965
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2968
    add-int/lit8 v29, v29, 0x1

    .line 2970
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->getCount()I

    move-result v31

    move/from16 v0, v31

    if-ge v15, v0, :cond_c

    .line 2972
    const-string/jumbo v31, "raw_contact_id"

    .line 2971
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getLong(I)J

    move-result-wide v16

    .line 2974
    cmp-long v31, v26, v16

    if-nez v31, :cond_b

    .line 2977
    const-string/jumbo v31, "mimetype"

    .line 2976
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2978
    .local v19, "mMimeType":Ljava/lang/String;
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 2979
    .local v14, "mData_Builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v31, "mimetype"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2980
    const-string/jumbo v31, "is_primary"

    .line 2982
    const-string/jumbo v32, "is_primary"

    .line 2981
    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 2980
    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getInt(I)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2985
    const-string/jumbo v31, "is_super_primary"

    .line 2987
    const-string/jumbo v32, "is_super_primary"

    .line 2986
    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getInt(I)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 2983
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2988
    const-string/jumbo v31, "is_read_only"

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2990
    const-string/jumbo v31, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 2993
    const-string/jumbo v31, "data14"

    .line 2995
    const-string/jumbo v32, "data14"

    .line 2994
    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2992
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2997
    const-string/jumbo v31, "data15"

    .line 2999
    const-string/jumbo v32, "data15"

    .line 2998
    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getBlob(I)[B

    move-result-object v32

    .line 2996
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3014
    :cond_4
    const-string/jumbo v31, "raw_contact_id"

    .line 3013
    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 3016
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3017
    add-int/lit8 v29, v29, 0x1

    .line 3018
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->moveToNext()Z

    .line 3019
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 3000
    :cond_5
    const-string/jumbo v31, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 3002
    add-int/lit8 v15, v15, 0x1

    .line 3003
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 3027
    .end local v14    # "mData_Builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v19    # "mMimeType":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 3028
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 3031
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_2
    sget-object v31, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "InsertContacts , mDelegateUserHandle : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 3032
    const-string/jumbo v33, " ,UserHandle.myUserId() :"

    .line 3031
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 3032
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v33

    .line 3031
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 3033
    const-string/jumbo v33, " ,Total No of Operations : "

    .line 3031
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    if-eqz v20, :cond_8

    .line 3035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    .line 3036
    const-string/jumbo v32, "com.android.contacts"

    .line 3035
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v13

    .line 3039
    .local v13, "mCpr":[Landroid/content/ContentProviderResult;
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_d

    .line 3079
    .end local v22    # "mPhotoFileByteArray":[B
    .end local v30    # "rawContactPhotoUri":Landroid/net/Uri;
    :cond_7
    const-string/jumbo v31, "result"

    const-string/jumbo v32, "true"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    sget-object v31, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v32, "Contact inserted successfully"

    invoke-static/range {v31 .. v32}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 3086
    .end local v13    # "mCpr":[Landroid/content/ContentProviderResult;
    :cond_8
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->close()V

    .line 3087
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->close()V

    .line 3089
    .end local v20    # "mOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v24    # "mRawIdBackRefMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_9
    return-object v28

    .line 3006
    .restart local v14    # "mData_Builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v19    # "mMimeType":Ljava/lang/String;
    .restart local v20    # "mOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v22    # "mPhotoFileByteArray":[B
    .restart local v24    # "mRawIdBackRefMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v30    # "rawContactPhotoUri":Landroid/net/Uri;
    :cond_a
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v12

    .line 3007
    .local v12, "mColumn_Names":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_3
    array-length v0, v12

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v10, v0, :cond_4

    .line 3009
    aget-object v31, v12, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/CustomCursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 3008
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3007
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 3021
    .end local v10    # "k":I
    .end local v12    # "mColumn_Names":[Ljava/lang/String;
    .end local v14    # "mData_Builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v19    # "mMimeType":Ljava/lang/String;
    :cond_b
    sget-object v31, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v32, "MoveTo, Raw_id != mData_Raw_Id"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2941
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 3040
    .restart local v13    # "mCpr":[Landroid/content/ContentProviderResult;
    :cond_d
    :try_start_4
    sget-object v31, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v32, "PhotoFilePresent mPhotoFileMap is not Null "

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local v22    # "mPhotoFileByteArray":[B
    .end local v30    # "rawContactPhotoUri":Landroid/net/Uri;
    .local v18, "mIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_7

    .line 3044
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 3045
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v31

    check-cast v0, [B

    move-object/from16 v22, v0

    .line 3046
    .local v22, "mPhotoFileByteArray":[B
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 3048
    sget-object v31, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "PhotoFile mRaw_Id  : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 3049
    const-string/jumbo v33, " , mRawContactBackRefIndex : "

    .line 3048
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    sget-object v31, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 3053
    aget-object v32, v13, v23

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v32

    .line 3051
    invoke-static/range {v31 .. v33}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    .line 3054
    const-string/jumbo v32, "display_photo"

    .line 3051
    invoke-static/range {v31 .. v32}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 3056
    .local v30, "rawContactPhotoUri":Landroid/net/Uri;
    sget-object v31, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "rawContactPhotoUri : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 3058
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    .line 3060
    const-string/jumbo v32, "rw"

    .line 3058
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v11

    .line 3061
    .local v11, "mAssetFileDescriptors":Landroid/content/res/AssetFileDescriptor;
    if-eqz v11, :cond_f

    .line 3062
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v21

    .line 3064
    .local v21, "mOutputStream":Ljava/io/OutputStream;
    if-eqz v21, :cond_e

    .line 3065
    invoke-virtual/range {v21 .. v22}, Ljava/io/OutputStream;->write([B)V

    .line 3066
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3068
    :cond_e
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_4

    .line 3072
    .end local v11    # "mAssetFileDescriptors":Landroid/content/res/AssetFileDescriptor;
    .end local v21    # "mOutputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v8

    .line 3073
    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_4

    .line 3082
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "mCpr":[Landroid/content/ContentProviderResult;
    .end local v18    # "mIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v22    # "mPhotoFileByteArray":[B
    .end local v30    # "rawContactPhotoUri":Landroid/net/Uri;
    :catch_3
    move-exception v9

    .line 3083
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 3070
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "mAssetFileDescriptors":Landroid/content/res/AssetFileDescriptor;
    .restart local v13    # "mCpr":[Landroid/content/ContentProviderResult;
    .restart local v18    # "mIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v22    # "mPhotoFileByteArray":[B
    .restart local v30    # "rawContactPhotoUri":Landroid/net/Uri;
    :cond_f
    :try_start_7
    sget-object v31, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v32, "AssetFileDescriptor is null"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_4
.end method

.method private static isAllowedPackagesForBridgeCmd(Ljava/lang/String;)Z
    .locals 7
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2812
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 2813
    const-string/jumbo v2, "com.android.providers.contacts"

    aput-object v2, v0, v3

    const-string/jumbo v2, "com.android.systemui"

    aput-object v2, v0, v6

    .line 2816
    .local v0, "allowedPackages":[Ljava/lang/String;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAllowedPackagesForBridgeCmd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    if-nez p0, :cond_0

    .line 2819
    return v3

    .line 2822
    :cond_0
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 2823
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2824
    return v6

    .line 2822
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2828
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private static isBridgeCmd(Ljava/lang/String;)Z
    .locals 7
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2792
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    .line 2793
    const-string/jumbo v2, "contactsquery"

    aput-object v2, v0, v3

    const-string/jumbo v2, "contactsinsert"

    aput-object v2, v0, v6

    const-string/jumbo v2, "contactsdelete"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string/jumbo v2, "contactsupdate"

    const/4 v4, 0x3

    aput-object v2, v0, v4

    .line 2794
    const-string/jumbo v2, "contactsbulkInsert"

    const/4 v4, 0x4

    aput-object v2, v0, v4

    const-string/jumbo v2, "contactsapplyBatch"

    const/4 v4, 0x5

    aput-object v2, v0, v4

    .line 2797
    .local v0, "cmdList":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 2798
    return v3

    .line 2801
    :cond_0
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 2802
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2803
    return v6

    .line 2801
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2807
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isBridgeCmd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    return v3
.end method

.method private kioskSetup()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 608
    new-array v1, v5, [[Ljava/lang/String;

    .line 609
    new-array v2, v5, [Ljava/lang/String;

    .line 610
    const-string/jumbo v4, "com.android.settings"

    aput-object v4, v2, v3

    const-string/jumbo v4, "com.android.settings.TetherSettings"

    aput-object v4, v2, v7

    .line 609
    aput-object v2, v1, v3

    .line 612
    new-array v2, v5, [Ljava/lang/String;

    .line 613
    const-string/jumbo v4, "com.android.settings"

    aput-object v4, v2, v3

    .line 614
    const-string/jumbo v4, "com.android.settings.Settings$TetherSettingsActivity"

    aput-object v4, v2, v7

    .line 612
    aput-object v2, v1, v7

    .line 618
    .local v1, "enableComponents_com":[[Ljava/lang/String;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 619
    .local v0, "anEnableComponents_com":[Ljava/lang/String;
    aget-object v5, v0, v3

    aget-object v6, v0, v7

    invoke-direct {p0, v5, v6}, Lcom/android/server/bridge/BridgeProxy;->enableComponent(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    .end local v0    # "anEnableComponents_com":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private policyChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 24
    .param p1, "syncerName"    # Ljava/lang/String;
    .param p2, "policyName"    # Ljava/lang/String;
    .param p3, "policyChangedForUser"    # I

    .prologue
    .line 860
    sget-object v20, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "policyChanged , syncerName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " , policyname :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 861
    const-string/jumbo v22, " , policyChangedForUser : "

    .line 860
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 861
    const-string/jumbo v22, " ,mDelegateUserId : "

    .line 860
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 861
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    move/from16 v22, v0

    .line 860
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 869
    .local v6, "currentUser":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getParentId(I)I

    move-result v17

    .line 871
    .local v17, "parent":I
    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_0

    .line 872
    sget-object v20, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "parent == policyChangedForUser so retur"

    invoke-static/range {v20 .. v21}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    return-void

    .line 877
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 878
    new-instance v19, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 879
    .local v19, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .line 880
    .local v8, "fullServiceName":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 882
    .local v16, "packageName":Ljava/lang/String;
    sget-object v20, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " policyChanged, package == "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "; service == "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-direct {v5, v0, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    .local v5, "cn":Landroid/content/ComponentName;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 886
    .local v11, "mIntent":Landroid/content/Intent;
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 888
    const/16 v18, 0x0

    .line 890
    .local v18, "policyValue":Ljava/lang/String;
    const-string/jumbo v20, "knox-import-data"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 893
    const-string/jumbo v20, "knox-import-data"

    .line 892
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 895
    .local v18, "policyValue":Ljava/lang/String;
    if-eqz v18, :cond_5

    const-string/jumbo v20, "false"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 897
    const-string/jumbo v20, "dowhat"

    const-string/jumbo v21, "DELETE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    const-string/jumbo v20, "delete_synced_data_of_user"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 899
    sget-object v20, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " delete synced data policyName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 900
    const-string/jumbo v22, " userId = "

    .line 899
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 901
    const-string/jumbo v22, " parent = "

    .line 899
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 902
    const-string/jumbo v22, " syncerName = "

    .line 899
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v12

    .line 905
    .local v12, "mPersonaIds":[I
    const/4 v15, 0x1

    .line 906
    .local v15, "mUnRegisterFlag":Z
    if-eqz v12, :cond_3

    .line 907
    const/16 v20, 0x0

    array-length v0, v12

    move/from16 v21, v0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget v9, v12, v20

    .line 908
    .local v9, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v9, :cond_2

    .line 910
    const-string/jumbo v22, "knox-import-data"

    .line 909
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 911
    .local v10, "mImportPolicy":Ljava/lang/String;
    const-string/jumbo v22, "true"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 912
    const/4 v15, 0x0

    .line 907
    .end local v10    # "mImportPolicy":Ljava/lang/String;
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 916
    .end local v9    # "id":I
    :cond_3
    sget-object v20, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " mUnRegisterFlag : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " , syncerName : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    if-eqz v15, :cond_4

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/SemRemoteContentManager;->unRegisterObserver(Ljava/lang/String;I)V

    .line 930
    .end local v12    # "mPersonaIds":[I
    .end local v15    # "mUnRegisterFlag":Z
    :cond_4
    :goto_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 931
    .local v4, "bundle":Landroid/os/Bundle;
    new-instance v14, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 932
    .local v14, "mProxyMessenger":Landroid/os/Messenger;
    const-string/jumbo v20, "proxy"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 933
    const-string/jumbo v20, "binderBundle"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 936
    if-eqz p3, :cond_7

    .line 937
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 938
    .local v13, "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-nez v13, :cond_7

    .line 939
    return-void

    .line 921
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v13    # "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v14    # "mProxyMessenger":Landroid/os/Messenger;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 922
    sget-object v20, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " start syncing provider "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 923
    const-string/jumbo v22, "for policy name ="

    .line 922
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 924
    const-string/jumbo v22, " for syncer"

    .line 922
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const-string/jumbo v20, "syncing_from_user"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 927
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerObserver(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 941
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v14    # "mProxyMessenger":Landroid/os/Messenger;
    :cond_7
    :try_start_1
    sget-object v20, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    .line 942
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " RCP_POLICY_CHANGED started for sync/delete ComponentName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v22

    .line 942
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 941
    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 858
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v8    # "fullServiceName":Ljava/lang/String;
    .end local v11    # "mIntent":Landroid/content/Intent;
    .end local v14    # "mProxyMessenger":Landroid/os/Messenger;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v18    # "policyValue":Ljava/lang/String;
    .end local v19    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :cond_8
    :goto_2
    return-void

    .line 945
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "cn":Landroid/content/ComponentName;
    .restart local v8    # "fullServiceName":Ljava/lang/String;
    .restart local v11    # "mIntent":Landroid/content/Intent;
    .restart local v14    # "mProxyMessenger":Landroid/os/Messenger;
    .restart local v16    # "packageName":Ljava/lang/String;
    .restart local v18    # "policyValue":Ljava/lang/String;
    .restart local v19    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :catch_0
    move-exception v7

    .line 946
    .local v7, "e":Ljava/lang/Exception;
    sget-object v20, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "Unable to start service"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 950
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v14    # "mProxyMessenger":Landroid/os/Messenger;
    .local v18, "policyValue":Ljava/lang/String;
    :cond_9
    const-string/jumbo v20, "knox-export-data"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 953
    const-string/jumbo v20, "knox-export-data"

    .line 952
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 954
    .local v18, "policyValue":Ljava/lang/String;
    if-eqz v18, :cond_a

    const-string/jumbo v20, "false"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    .line 960
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/SemRemoteContentManager;->doSyncForSyncer(Ljava/lang/String;I)V

    goto :goto_2

    .line 957
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/bridge/operations/DbObserver;->registerObserver(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public registerObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "mSyncer"    # Ljava/lang/String;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/bridge/operations/DbObserver;->registerObserver(Ljava/lang/String;)V

    .line 642
    :cond_0
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/android/server/bridge/BridgeProxy;->getBridgeContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    .line 229
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    move/from16 v23, v0

    .line 230
    .local v23, "uid":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 231
    .local v8, "UserId":I
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate BridgeProxy is starting for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 240
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate BridgeProxy user id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/android/server/bridge/BridgeProxy;->fillPreInstalledAppsMap()V

    .line 250
    const/16 v15, 0x80

    .line 252
    .local v15, "flags":I
    :try_start_0
    const-string/jumbo v2, "package"

    .line 251
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v16

    .line 254
    .local v16, "iPM":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 253
    move-object/from16 v0, v16

    invoke-interface {v0, v15, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v21

    .line 255
    .local v21, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v11

    .line 264
    .local v11, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "appInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 265
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 267
    .local v12, "bundle":Landroid/os/Bundle;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 271
    .local v17, "key":Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 274
    const-string/jumbo v2, "RCPSyncerName_"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 276
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 277
    .local v20, "serviceName":Ljava/lang/String;
    const-string/jumbo v2, "RCPSyncerName_"

    const-string/jumbo v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    .line 278
    .local v22, "syncerName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): serviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 279
    const-string/jumbo v4, "; syncerName="

    .line 278
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 279
    const-string/jumbo v4, "; UserId="

    .line 278
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-eqz v20, :cond_1

    .line 281
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): Adding syncer for UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceName:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 318
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v11    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v12    # "bundle":Landroid/os/Bundle;
    .end local v16    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "key$iterator":Ljava/util/Iterator;
    .end local v20    # "serviceName":Ljava/lang/String;
    .end local v21    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v22    # "syncerName":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 319
    .local v13, "e":Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    .line 325
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 327
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, " BridgeProxy onCreate"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    const-string/jumbo v3, "ALL_PROVIDERS"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeProvider:Landroid/content/IProviderCallBack;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeSync:Landroid/content/ISyncCallBack;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerSync(Landroid/content/ISyncCallBack;I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeCommandExe:Landroid/content/ICommandExeCallBack;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerCommandExe(Landroid/content/ICommandExeCallBack;I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mIRCPGlobalContactsDirectoryService:Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerRCPInterface(Landroid/content/IRCPInterface;I)V

    .line 336
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->cb:Landroid/os/IRunnableCallback;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerExchangeData(Landroid/content/Context;Landroid/os/IRunnableCallback;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/bridge/BridgeProxy;->initBadgeDataAndObserver(I)V

    .line 344
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 345
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    new-instance v2, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 350
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 355
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 356
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.sec.knox.action.SHORTCUT_MIGRATION_FOR_2_3_0"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    new-instance v2, Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 361
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 362
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string/jumbo v2, "package"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 366
    new-instance v2, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_3

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/android/server/bridge/BridgeProxy;->kioskSetup()V

    .line 374
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/bridge/BridgeProxy$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/bridge/BridgeProxy$1;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    .line 411
    const-wide/16 v6, 0x2710

    .line 374
    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    return-void

    .line 292
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "appInfo$iterator":Ljava/util/Iterator;
    .restart local v11    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v12    # "bundle":Landroid/os/Bundle;
    .restart local v16    # "iPM":Landroid/content/pm/IPackageManager;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v18    # "key$iterator":Ljava/util/Iterator;
    .restart local v21    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :cond_4
    :try_start_2
    const-string/jumbo v2, "RCPProviderName_"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 295
    .restart local v20    # "serviceName":Ljava/lang/String;
    const-string/jumbo v2, "RCPProviderName_"

    const-string/jumbo v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 296
    .local v19, "providerName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): serviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 297
    const-string/jumbo v4, "; providerName="

    .line 296
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 297
    const-string/jumbo v4, "; UserId="

    .line 296
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-eqz v20, :cond_1

    .line 300
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): Adding provider for UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mProviderServiceName:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 337
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v11    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v12    # "bundle":Landroid/os/Bundle;
    .end local v16    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "key$iterator":Ljava/util/Iterator;
    .end local v19    # "providerName":Ljava/lang/String;
    .end local v20    # "serviceName":Ljava/lang/String;
    .end local v21    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catch_1
    move-exception v14

    .line 338
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 968
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "----- stop called -----"

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :try_start_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 974
    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    if-eqz v1, :cond_1

    .line 975
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 976
    :cond_1
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    if-eqz v1, :cond_2

    .line 977
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v1, :cond_3

    .line 984
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v1, v3}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    .line 986
    :cond_3
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    invoke-virtual {v1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->unRegisterBadgeObserver()V

    .line 967
    return-void

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public unRegisterObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "mSyncer"    # Ljava/lang/String;

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    .line 648
    :cond_0
    return-void
.end method
