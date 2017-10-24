.class Lcom/android/server/enterprise/firewall/DomainFilter;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$1;,
        Lcom/android/server/enterprise/firewall/DomainFilter$2;,
        Lcom/android/server/enterprise/firewall/DomainFilter$3;,
        Lcom/android/server/enterprise/firewall/DomainFilter$4;,
        Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;
    }
.end annotation


# static fields
.field private static final ADMIN_IN_DATABASE:I = 0x1

.field public static final ALL:Ljava/lang/String; = "ALL"

.field private static final ANOTHER_ADMIN_IN_DATABASE:I = -0x1

.field public static final ARG_BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final ARG_WHITELIST:Ljava/lang/String; = "WHITELIST"

.field public static final CMD_BUF_SIZE_ARGS:I

.field public static final CMD_BUF_SIZE_MAX:I = 0x300

.field private static final DBG:Z = false

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "connectivitycheck.gstatic.com"

.field public static final DOMAINFILTERCMD:Ljava/lang/String; = "domainFilterCmd"

.field private static final EMPTY_DATABASE:I = 0x0

.field private static final INVALID_NETID:I = -0x1

.field private static final MSG_RELEASE_NETWORK:I = 0x0

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field public static final NETID:Ljava/lang/String; = "NETID"

.field public static final OP_ADD:Ljava/lang/String; = "ADD"

.field public static final OP_CAPPORTAL:Ljava/lang/String; = "CAPPORTAL"

.field public static final OP_CLEAR:Ljava/lang/String; = "CLEAR"

.field public static final OP_EXCEPTION:Ljava/lang/String; = "EXCEPTION"

.field public static final OP_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final OP_REPLACE:Ljava/lang/String; = "REPLACE"

.field private static final PACKAGE_EXCEPTION_KEYWORDS:[Ljava/lang/String;

.field private static final PORTAL_HOSTS_TOKEN:Ljava/lang/String; = ","

.field private static final REPORT_CACHE_SIZE:I = 0x5

.field public static final ReportBlockedDomain:I = 0x320

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBootFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDomainReportCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mExceptionListLock:Ljava/lang/Object;

.field private mIsExceptionListApplied:Z

.field private mNetdService:Landroid/net/INetd;

.field private mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

.field private mNetworkIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkIdListLock:Ljava/lang/Object;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mPortalFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

.field private mReportCacheIndex:I

.field private mServer:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private mUserFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserIdMapLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/net/INetd;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/enterprise/firewall/DomainFilter;)I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/firewall/DomainFilter;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/firewall/DomainFilter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageReplaced(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/enterprise/firewall/DomainFilter;I)V
    .locals 0
    .param p1, "netId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworkId(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "timeStamp"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "newUid"    # Ljava/lang/String;
    .param p4, "blackListInDB"    # Ljava/lang/String;
    .param p5, "whiteListInDB"    # Ljava/lang/String;
    .param p6, "networkId"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->extractHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/firewall/DomainFilter;II)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getPackageFromRunningProcesses(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->retrieveCaptivePortalHosts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)V
    .locals 0
    .param p1, "portalHost"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->addHostToCaptivePortalWhitelist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->connectNativeNetdService()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initDaemonCache()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initUserIdMap()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const-string/jumbo v0, "DomainFilter"

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "domainFilterCmd"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    rsub-int v0, v0, 0x300

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    .line 138
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 139
    const-string/jumbo v1, ".mdm."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, ".knox."

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, ".elm."

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, ".edm."

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, ".klm"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, ".spay"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, ".ucm"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, ".ucs"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 138
    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->PACKAGE_EXCEPTION_KEYWORDS:[Ljava/lang/String;

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 21
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 121
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 125
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    .line 127
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 132
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    .line 133
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    .line 142
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 143
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    .line 152
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter$2;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter$3;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mBootFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 2135
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter$4;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPortalFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 199
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 204
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v5, "filterPkg":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v2, "package"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    .line 210
    const/4 v7, 0x0

    .line 209
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 212
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .local v9, "filterUser":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    .line 216
    const/4 v11, 0x0

    .line 215
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 218
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 219
    .local v13, "filterBoot":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mBootFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    .line 222
    const/4 v15, 0x0

    .line 221
    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 224
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v17, "filterPortal":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.CAPTIVE_PORTAL_DETECTED_INTERNAL"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPortalFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v18, 0x0

    .line 227
    const/16 v19, 0x0

    .line 226
    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 229
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 230
    new-instance v4, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;)V

    .line 229
    invoke-direct {v2, v3, v4}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;-><init>(Landroid/os/Looper;Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 233
    const-string/jumbo v3, "captive_portal_server"

    .line 232
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 235
    const-string/jumbo v2, "connectivitycheck.gstatic.com"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    .line 239
    :cond_0
    new-instance v20, Lcom/android/server/enterprise/firewall/DomainFilter$5;

    invoke-direct/range {v20 .. v21}, Lcom/android/server/enterprise/firewall/DomainFilter$5;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    .line 252
    .local v20, "taskInitDaemonCache":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initReportCache()V

    .line 197
    return-void
.end method

.method private addHostToCaptivePortalWhitelist(Ljava/lang/String;)V
    .locals 7
    .param p1, "portalHost"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2073
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->saveCaptivePortalHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    const-string/jumbo v1, "CAPPORTAL"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    :cond_0
    return-void
.end method

.method private checkAdminInDatabase(I)I
    .locals 6
    .param p1, "adminUid"    # I

    .prologue
    const/4 v5, 0x0

    .line 1169
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1170
    .local v1, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "DomainFilterTable"

    .line 1172
    const-string/jumbo v4, "adminUid"

    .line 1171
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1175
    return v5

    .line 1177
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1179
    const/4 v2, 0x1

    return v2

    .line 1182
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private clearReportForUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1336
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1337
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string/jumbo v1, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1338
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "DomainFilterReportTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 1335
    return-void
.end method

.method private concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p2, "headerSize"    # I
    .param p3, "listType"    # Ljava/lang/String;
    .param p4, "listValues"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1104
    .local p1, "headerArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v0, v8

    .line 1105
    .local v0, "argSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    .local v2, "finalArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1107
    .local v3, "listValuesSize":I
    if-eqz p4, :cond_0

    .line 1108
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v3, v8

    .line 1110
    :cond_0
    if-eqz p4, :cond_1

    add-int v8, p2, v3

    add-int/2addr v8, v0

    sget v9, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    if-ge v8, v9, :cond_3

    .line 1111
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1112
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    .line 1103
    :cond_2
    return-void

    .line 1116
    :cond_3
    const-string/jumbo v8, ";"

    invoke-virtual {p4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1117
    .local v5, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1118
    .local v1, "counter":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 1119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1120
    .local v4, "newList":Ljava/lang/StringBuilder;
    add-int v6, p2, v0

    .line 1121
    .local v6, "totalTemp":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 1122
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v7, v8

    .line 1123
    .local v7, "valueSize":I
    add-int v8, v6, v7

    sget v9, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    if-ge v8, v9, :cond_5

    .line 1124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 1125
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 1130
    add-int/2addr v6, v7

    goto :goto_1

    .line 1127
    :cond_4
    const-string/jumbo v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1135
    .end local v7    # "valueSize":I
    :cond_5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1136
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    .line 1139
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private connectNativeNetdService()V
    .locals 4

    .prologue
    .line 2169
    const/4 v1, 0x0

    .line 2171
    .local v1, "nativeServiceAvailable":Z
    :try_start_0
    const-string/jumbo v2, "netd"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    .line 2172
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    if-nez v2, :cond_0

    .line 2173
    return-void

    .line 2175
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2}, Landroid/net/INetd;->isAlive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2177
    .end local v1    # "nativeServiceAvailable":Z
    :goto_0
    if-nez v1, :cond_1

    .line 2178
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Can\'t connect to NativeNetdService netd"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :cond_1
    return-void

    .line 2176
    .restart local v1    # "nativeServiceAvailable":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private createDomainSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "stringInDB"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1231
    .local v0, "listFromDBStr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1232
    const-string/jumbo v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1234
    :cond_0
    return-object v0
.end method

.method private createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1222
    .local p1, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "setFromDB":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    :cond_0
    const-string/jumbo v0, ";"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1225
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1226
    const-string/jumbo v0, ";"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized executeCommand(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    .line 1145
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 1147
    :try_start_1
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    .line 1148
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1150
    const-wide/16 v4, 0x1f4

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1161
    :cond_0
    :goto_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    const-string/jumbo v4, "domainFilterCmd"

    invoke-virtual {v3, v4, p1}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->execute(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1162
    const-wide/16 v4, 0x96

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    .line 1144
    return-void

    .line 1151
    :catch_0
    move-exception v1

    .line 1152
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to wait for socket creation"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1154
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 1155
    .local v2, "illex":Ljava/lang/IllegalThreadStateException;
    :try_start_5
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Thread already started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .end local v2    # "illex":Ljava/lang/IllegalThreadStateException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1163
    :catch_2
    move-exception v0

    .line 1164
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_6
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to send command to daemon"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private extractHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 2098
    const/4 v1, 0x0

    .line 2099
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2101
    .local v2, "url":Ljava/net/URL;
    if-eqz p1, :cond_0

    .line 2103
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "url":Ljava/net/URL;
    move-object v2, v3

    .line 2108
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    if-eqz v2, :cond_0

    .line 2109
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 2113
    .end local v1    # "host":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 2104
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 2105
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getApplicationUid(Ljava/lang/String;I)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 342
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 343
    .local v2, "token":J
    const/4 v1, 0x0

    .line 345
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v4

    .line 346
    const/16 v5, 0x80

    .line 345
    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 350
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    .line 354
    :cond_0
    const/4 v4, -0x1

    return v4

    .line 347
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 348
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exception getting package info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 349
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 350
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 349
    throw v4

    .line 355
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    return v4
.end method

.method private getConnectivityService()Landroid/net/IConnectivityManager;
    .locals 2

    .prologue
    .line 1757
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_0

    .line 1758
    const-string/jumbo v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1759
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1760
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 1763
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method private getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "rule"    # Landroid/content/ContentValues;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getNetworkIdInfoIndex(I)I
    .locals 4
    .param p1, "netId"    # I

    .prologue
    const/4 v3, -0x1

    .line 1733
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1734
    return v3

    .line 1735
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1736
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1737
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getNetId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne p1, v1, :cond_1

    monitor-exit v2

    .line 1738
    return v0

    .line 1736
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v2

    .line 1741
    return v3

    .line 1735
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    .prologue
    .line 1746
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_0

    .line 1747
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1748
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1749
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 1752
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private getPackageFromRunningProcesses(II)Ljava/lang/String;
    .locals 15
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1939
    if-gez p1, :cond_0

    .line 1940
    sget-object v12, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Invalid PID provided: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    const/4 v12, 0x0

    return-object v12

    .line 1944
    :cond_0
    if-gez p2, :cond_1

    .line 1945
    sget-object v12, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Invalid UID provided: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const/4 v12, 0x0

    return-object v12

    .line 1949
    :cond_1
    iget-object v12, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 1950
    const-string/jumbo v13, "activity"

    .line 1949
    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1951
    .local v1, "actvMngr":Landroid/app/ActivityManager;
    if-eqz v1, :cond_3

    .line 1952
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 1953
    .local v4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_3

    .line 1954
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "app$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1955
    .local v2, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 1956
    iget-object v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-nez v12, :cond_4

    .line 1989
    .end local v2    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "app$iterator":Ljava/util/Iterator;
    .end local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    const/4 v12, 0x0

    return-object v12

    .line 1961
    .restart local v2    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v3    # "app$iterator":Ljava/util/Iterator;
    .restart local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_4
    iget-object v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v12, v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 1962
    iget-object v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    return-object v12

    .line 1967
    :cond_5
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1968
    .local v11, "selection":Landroid/content/ContentValues;
    iget-object v12, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1969
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const/4 v13, 0x0

    .line 1968
    invoke-static {v13, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v12

    .line 1970
    const-string/jumbo v13, "#SelectClause#"

    .line 1968
    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    const/4 v12, 0x1

    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v12, "packageName"

    const/4 v13, 0x0

    aput-object v12, v5, v13

    .line 1972
    .local v5, "columns":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1973
    const-string/jumbo v13, "DomainFilterTable"

    .line 1972
    invoke-virtual {v12, v13, v5, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 1974
    .local v8, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1984
    :cond_6
    iget-object v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    return-object v12

    .line 1975
    :cond_7
    iget-object v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1976
    .local v10, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "cv$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1977
    .local v6, "cv":Landroid/content/ContentValues;
    const-string/jumbo v12, "packageName"

    invoke-virtual {v6, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1978
    .local v9, "pkgDb":Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1979
    return-object v9
.end method

.method private hasAnyRuleInDatabase()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2062
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "DomainFilterTable"

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 2064
    .local v0, "rulesInDb":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2067
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 2069
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private initDaemonCache()V
    .locals 25

    .prologue
    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "DomainFilterTable"

    const/4 v6, 0x0

    .line 991
    const/4 v7, 0x0

    .line 990
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v21

    .line 992
    .local v21, "rulesInDb":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v21, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 994
    :cond_0
    return-void

    .line 997
    :cond_1
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "rule$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ContentValues;

    .line 998
    .local v19, "rule":Landroid/content/ContentValues;
    const-string/jumbo v4, "blacklist"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 999
    .local v8, "blacklist":Ljava/lang/String;
    const-string/jumbo v4, "whitelist"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1000
    .local v9, "whitelist":Ljava/lang/String;
    const-string/jumbo v4, "dns1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1001
    .local v15, "dns1":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1002
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1003
    :cond_3
    const-string/jumbo v4, "adminUid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 1004
    .local v11, "IntAdminUid":Ljava/lang/Integer;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1005
    .local v12, "adminUid":I
    :goto_1
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    .line 1006
    .local v24, "userId":I
    const/4 v13, 0x0

    .line 1007
    .local v13, "appUid":Ljava/lang/String;
    const-string/jumbo v4, "packageName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1008
    .local v18, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "*"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1009
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 1023
    .end local v13    # "appUid":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v13, :cond_2

    .line 1024
    const/16 v17, -0x1

    .line 1025
    .local v17, "netId":I
    if-eqz v15, :cond_5

    .line 1026
    const-string/jumbo v4, "dns2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1027
    .local v16, "dns2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 1028
    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_5

    .line 1029
    const-string/jumbo v4, "networkId"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1030
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1031
    .local v22, "selection":Landroid/content/ContentValues;
    const-string/jumbo v4, "adminUid"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    const-string/jumbo v4, "packageName"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "DomainFilterTable"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 1036
    .end local v16    # "dns2":Ljava/lang/String;
    .end local v22    # "selection":Landroid/content/ContentValues;
    :cond_5
    const-string/jumbo v5, "ADD"

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1037
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1036
    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1004
    .end local v12    # "adminUid":I
    .end local v17    # "netId":I
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v24    # "userId":I
    :cond_6
    const/4 v12, -0x1

    goto/16 :goto_1

    .line 1011
    .restart local v12    # "adminUid":I
    .restart local v13    # "appUid":Ljava/lang/String;
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v24    # "userId":I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v14

    .line 1012
    .local v14, "appUidInt":I
    const/4 v4, -0x1

    if-eq v14, v4, :cond_4

    .line 1013
    const-string/jumbo v4, "signature"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1014
    .local v23, "signature":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1015
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1014
    if-eqz v4, :cond_2

    .line 1016
    :cond_8
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "appUid":Ljava/lang/String;
    goto/16 :goto_2

    .line 989
    .end local v8    # "blacklist":Ljava/lang/String;
    .end local v9    # "whitelist":Ljava/lang/String;
    .end local v11    # "IntAdminUid":Ljava/lang/Integer;
    .end local v12    # "adminUid":I
    .end local v13    # "appUid":Ljava/lang/String;
    .end local v14    # "appUidInt":I
    .end local v15    # "dns1":Ljava/lang/String;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "rule":Landroid/content/ContentValues;
    .end local v23    # "signature":Ljava/lang/String;
    .end local v24    # "userId":I
    :cond_9
    return-void
.end method

.method private initReportCache()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1044
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 1045
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1046
    .local v4, "reportEnabled":Landroid/content/ContentValues;
    const-string/jumbo v6, "status"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1047
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1048
    const-string/jumbo v7, "DomainFilterReportStatus"

    .line 1047
    invoke-virtual {v6, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 1049
    .local v3, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1051
    :cond_0
    return-void

    .line 1053
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "admin$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1055
    .local v1, "admin":Landroid/content/ContentValues;
    const-string/jumbo v6, "userId"

    .line 1054
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1056
    .local v0, "IntUserId":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1057
    .local v5, "userId":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1056
    .end local v5    # "userId":I
    :cond_2
    const/4 v5, -0x1

    .restart local v5    # "userId":I
    goto :goto_1

    .line 1043
    .end local v0    # "IntUserId":Ljava/lang/Integer;
    .end local v1    # "admin":Landroid/content/ContentValues;
    .end local v5    # "userId":I
    :cond_3
    return-void
.end method

.method private initUserIdMap()V
    .locals 15

    .prologue
    .line 257
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 258
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 260
    .local v9, "userManager":Landroid/os/UserManager;
    if-eqz v9, :cond_4

    .line 261
    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 262
    .local v10, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v10, :cond_4

    .line 263
    const/4 v6, 0x0

    .line 264
    .local v6, "processExcList":Z
    iget-object v12, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v12

    .line 265
    :try_start_0
    iget-boolean v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    if-nez v11, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 266
    const/4 v6, 0x1

    .line 267
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-exit v12

    .line 270
    iget-object v12, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v12

    .line 271
    :try_start_1
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 272
    .local v7, "user":Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    const/16 v13, 0x40

    .line 273
    invoke-virtual {v5, v13, v11}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v4

    .line 275
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 276
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 277
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v13, Ljava/lang/Integer;

    iget v14, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 270
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageInfo$iterator":Ljava/util/Iterator;
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "user$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 264
    :catchall_1
    move-exception v11

    monitor-exit v12

    throw v11

    .line 279
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "packageInfo$iterator":Ljava/util/Iterator;
    .restart local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "user":Landroid/content/pm/UserInfo;
    .restart local v8    # "user$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    iget v13, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    if-eqz v6, :cond_1

    .line 281
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "packageInfo$iterator":Ljava/util/Iterator;
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    monitor-exit v12

    .line 256
    .end local v6    # "processExcList":Z
    .end local v8    # "user$iterator":Ljava/util/Iterator;
    .end local v10    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    return-void
.end method

.method private isDomainFilterReportEnabledAsUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1271
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1272
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string/jumbo v2, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1273
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1274
    const-string/jumbo v3, "DomainFilterReportStatus"

    .line 1275
    const-string/jumbo v4, "status"

    .line 1273
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 1276
    .local v1, "statusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1279
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2117
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2118
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2120
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private matchNetworkDns(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "dns1"    # Ljava/lang/String;
    .param p2, "dns2"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 1591
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1592
    return v4

    .line 1594
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1595
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "netInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    .line 1596
    .local v0, "netInfo":Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;
    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getDns1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1597
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->hasDns2()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1598
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->hasDns2()Z

    move-result v2

    .line 1597
    if-nez v2, :cond_1

    .line 1600
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getDns2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1601
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->increaseCounter()I

    .line 1603
    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getNetId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    .end local v0    # "netInfo":Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;
    :cond_5
    monitor-exit v3

    .line 1608
    return v4

    .line 1594
    .end local v1    # "netInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private maybeClearCaptivePortalHosts()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2125
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "captivePortalHosts"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2128
    const-string/jumbo v1, "CAPPORTAL"

    const-string/jumbo v2, "CLEAR"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    const-string/jumbo v1, "CAPPORTAL"

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    :cond_0
    return-void
.end method

.method private onUserAdded(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 292
    const-string/jumbo v6, "android.intent.extra.user_handle"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 293
    .local v5, "userId":I
    if-eq v5, v7, :cond_3

    .line 294
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v7

    .line 295
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 296
    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_2

    .line 297
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 298
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 300
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x40

    .line 299
    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    .line 301
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "packageInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 302
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 303
    new-instance v8, Ljava/lang/Integer;

    iget-object v9, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 302
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 294
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 305
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "packageInfo$iterator":Ljava/util/Iterator;
    .restart local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :try_start_2
    iget-boolean v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v8, :cond_1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v7

    .line 308
    return-void

    :cond_1
    :try_start_4
    monitor-exit v6

    .line 310
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "packageInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    monitor-exit v7

    .line 291
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    return-void

    .line 306
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "packageInfo$iterator":Ljava/util/Iterator;
    .restart local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :catchall_1
    move-exception v8

    :try_start_5
    monitor-exit v6

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 320
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 321
    .local v7, "userId":I
    if-eq v7, v1, :cond_0

    .line 322
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 323
    .local v8, "userIdObj":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 326
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 328
    const-string/jumbo v1, "CLEAR"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .end local v8    # "userIdObj":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 323
    .restart local v8    # "userIdObj":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private packageAdded(Landroid/content/Intent;)V
    .locals 21
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    .line 364
    .local v15, "pkgAdded":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 365
    .local v20, "userId":I
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_0

    if-nez v15, :cond_1

    .line 366
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 370
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v19

    .line 371
    .local v19, "uid":I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_2

    .line 372
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to retrieve app info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    .line 376
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v4

    .line 377
    :try_start_0
    new-instance v13, Ljava/lang/Integer;

    move/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 378
    .local v13, "objUserID":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 379
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 380
    .local v14, "pair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v14, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v14    # "pair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit v4

    .line 387
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v17, "selection":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 389
    const/4 v3, 0x0

    .line 388
    move/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v3

    .line 389
    const-string/jumbo v4, "#SelectClause#"

    .line 388
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string/jumbo v3, "packageName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "DomainFilterTable"

    .line 392
    const/4 v5, 0x0

    .line 391
    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    .line 393
    .local v10, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 362
    :cond_3
    :goto_1
    return-void

    .line 383
    .end local v10    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v17    # "selection":Landroid/content/ContentValues;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 376
    .end local v13    # "objUserID":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 394
    .restart local v10    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v13    # "objUserID":Ljava/lang/Integer;
    .restart local v17    # "selection":Landroid/content/ContentValues;
    :cond_5
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentValues;

    .line 395
    .local v16, "rule":Landroid/content/ContentValues;
    const-string/jumbo v3, "signature"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 396
    .local v18, "signature":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 397
    :cond_6
    const-string/jumbo v3, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 398
    .local v7, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v3, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, "whiteListInDB":Ljava/lang/String;
    const-string/jumbo v3, "dns1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 400
    .local v11, "dns1":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 401
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 402
    :cond_7
    const/4 v12, -0x1

    .line 404
    .local v12, "netId":I
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 405
    const-string/jumbo v3, "dns2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 406
    const/4 v3, -0x1

    if-eq v12, v3, :cond_8

    .line 408
    const-string/jumbo v3, "networkId"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "DomainFilterTable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 412
    :cond_8
    const-string/jumbo v4, "ADD"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 412
    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private packageRemoved(Landroid/content/Intent;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 426
    const-string/jumbo v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 427
    .local v17, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 428
    .local v13, "pkgRemoved":Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, v17

    if-eq v0, v1, :cond_4

    if-eqz v13, :cond_4

    .line 429
    const/16 v16, 0x0

    .line 430
    .local v16, "uid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 431
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 432
    .local v9, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 435
    .local v16, "uid":Ljava/lang/String;
    invoke-interface {v9, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v16    # "uid":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    .line 438
    if-eqz v16, :cond_4

    .line 440
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 441
    .local v15, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 442
    const/4 v1, 0x0

    .line 441
    move/from16 v0, v17

    invoke-static {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v1

    .line 443
    const-string/jumbo v2, "#SelectClause#"

    .line 441
    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string/jumbo v1, "packageName"

    invoke-virtual {v15, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 446
    const-string/jumbo v2, "DomainFilterTable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 447
    const-string/jumbo v4, "networkId"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 445
    invoke-virtual {v1, v2, v3, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    .line 450
    .local v10, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    :cond_1
    return-void

    .line 430
    .end local v9    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v15    # "selectionValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 454
    .restart local v9    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v15    # "selectionValues":Landroid/content/ContentValues;
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    .line 455
    .local v14, "rule":Landroid/content/ContentValues;
    const-string/jumbo v1, "networkId"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 456
    .local v8, "IntNetId":Ljava/lang/Integer;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 457
    .local v12, "netId":I
    :goto_0
    const/4 v1, -0x1

    if-eq v12, v1, :cond_3

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 460
    .local v11, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v1, v11}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 462
    const-string/jumbo v1, "networkId"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "DomainFilterTable"

    invoke-virtual {v1, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 465
    .end local v11    # "msg":Landroid/os/Message;
    :cond_3
    const-string/jumbo v2, "REMOVE"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 466
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 465
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .end local v8    # "IntNetId":Ljava/lang/Integer;
    .end local v9    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v12    # "netId":I
    .end local v14    # "rule":Landroid/content/ContentValues;
    .end local v15    # "selectionValues":Landroid/content/ContentValues;
    :cond_4
    return-void

    .line 456
    .restart local v8    # "IntNetId":Ljava/lang/Integer;
    .restart local v9    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v14    # "rule":Landroid/content/ContentValues;
    .restart local v15    # "selectionValues":Landroid/content/ContentValues;
    :cond_5
    const/4 v12, -0x1

    goto :goto_0
.end method

.method private packageReplaced(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 476
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 477
    .local v11, "userId":I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 478
    .local v10, "pkgReplaced":Ljava/lang/String;
    if-eq v11, v3, :cond_0

    if-nez v10, :cond_1

    .line 479
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v7, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v1

    .line 488
    if-eqz v7, :cond_2

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 495
    .local v9, "oldUid":I
    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v8

    .line 496
    .local v8, "newUid":I
    if-ne v8, v3, :cond_3

    .line 497
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to retrieve app info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void

    .line 485
    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "newUid":I
    .end local v9    # "oldUid":I
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 490
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    .line 491
    return-void

    .line 500
    .restart local v8    # "newUid":I
    .restart local v9    # "oldUid":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 501
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 503
    if-eq v9, v8, :cond_4

    .line 504
    const-string/jumbo v1, "REPLACE"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_4
    return-void

    .line 500
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized processPackageExceptionList(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    monitor-enter p0

    .line 2028
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "processPackageExceptionList - enter"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    if-nez p1, :cond_0

    monitor-exit p0

    .line 2032
    return-void

    .line 2034
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 2035
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    .line 2038
    .local v13, "systemInfo":Landroid/content/pm/PackageInfo;
    :try_start_2
    const-string/jumbo v1, "android"

    const/16 v2, 0x40

    .line 2037
    invoke-virtual {v12, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 2043
    .local v13, "systemInfo":Landroid/content/pm/PackageInfo;
    if-nez v13, :cond_1

    monitor-exit p0

    .line 2046
    return-void

    .line 2039
    .local v13, "systemInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v8

    .line 2040
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to retrieve package info for system"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 2041
    return-void

    .line 2048
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v13, "systemInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_4
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "packageInfo$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 2049
    .local v10, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_2

    .line 2050
    iget-object v1, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v10, v1}, Lcom/android/server/enterprise/utils/Utils;->isSystemApplication(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z

    move-result v1

    .line 2049
    if-eqz v1, :cond_2

    .line 2052
    sget-object v15, Lcom/android/server/enterprise/firewall/DomainFilter;->PACKAGE_EXCEPTION_KEYWORDS:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v0, v15

    move/from16 v16, v0

    move v14, v1

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    aget-object v9, v15, v14

    .line 2053
    .local v9, "keyword":Ljava/lang/String;
    iget-object v1, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2054
    const-string/jumbo v2, "EXCEPTION"

    iget-object v1, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2055
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    .line 2054
    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2052
    :cond_3
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_0

    .end local v9    # "keyword":Ljava/lang/String;
    .end local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    monitor-exit p0

    .line 2027
    return-void

    .end local v11    # "packageInfo$iterator":Ljava/util/Iterator;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "systemInfo":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private processPackageExceptionListDelayed()V
    .locals 10

    .prologue
    .line 1997
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1998
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_0

    monitor-exit v8

    .line 1999
    return-void

    .line 2000
    :cond_0
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v8

    .line 2002
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 2003
    .local v5, "userManager":Landroid/os/UserManager;
    if-eqz v5, :cond_2

    .line 2004
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2006
    .local v2, "token":J
    :try_start_2
    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 2007
    .local v6, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v6, :cond_1

    .line 2008
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2009
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2010
    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    const/16 v9, 0x40

    .line 2009
    invoke-virtual {v7, v9, v8}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 2011
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2014
    .end local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "user$iterator":Ljava/util/Iterator;
    .end local v6    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v7

    .line 2015
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2014
    throw v7

    .line 1997
    .end local v2    # "token":J
    .end local v5    # "userManager":Landroid/os/UserManager;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 2015
    .restart local v2    # "token":J
    .restart local v5    # "userManager":Landroid/os/UserManager;
    .restart local v6    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1996
    .end local v2    # "token":J
    .end local v6    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    return-void
.end method

.method private releaseNetworkId(I)V
    .locals 10
    .param p1, "netId"    # I

    .prologue
    const/4 v7, -0x1

    .line 1620
    if-eq p1, v7, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1621
    :cond_0
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "No network to release"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    return-void

    .line 1624
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkIdInfoIndex(I)I

    move-result v3

    .line 1625
    .local v3, "netInfoPos":I
    if-ne v3, v7, :cond_2

    .line 1626
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "No network to release"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    return-void

    .line 1630
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1631
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "failed to retrieve NetworkManagementService instance"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    return-void

    .line 1635
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1636
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "failed to retrieve ConnectivityService instance"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    return-void

    .line 1640
    :cond_4
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1641
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-virtual {v6}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->decreaseCounter()I

    move-result v0

    .line 1642
    .local v0, "counter":I
    if-nez v0, :cond_5

    .line 1643
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1644
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 1646
    .local v4, "token":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v6, p1}, Landroid/os/INetworkManagementService;->removeNetwork(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1651
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v6, p1}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1654
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v4    # "token":J
    :cond_5
    :goto_0
    monitor-exit v7

    .line 1616
    return-void

    .line 1652
    .restart local v4    # "token":J
    :catch_0
    move-exception v2

    .line 1654
    .local v2, "ignore":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1640
    .end local v0    # "counter":I
    .end local v2    # "ignore":Ljava/lang/Exception;
    .end local v4    # "token":J
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1653
    .restart local v0    # "counter":I
    .restart local v4    # "token":J
    :catchall_1
    move-exception v6

    .line 1654
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1653
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1647
    :catch_1
    move-exception v1

    .line 1648
    .local v1, "exc":Ljava/lang/Exception;
    :try_start_6
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to remove network"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1651
    :try_start_7
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v6, p1}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1654
    :try_start_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1652
    :catch_2
    move-exception v2

    .line 1654
    .restart local v2    # "ignore":Ljava/lang/Exception;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1653
    .end local v2    # "ignore":Ljava/lang/Exception;
    :catchall_2
    move-exception v6

    .line 1654
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1653
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1649
    .end local v1    # "exc":Ljava/lang/Exception;
    :catchall_3
    move-exception v6

    .line 1651
    :try_start_9
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v8, p1}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1654
    :try_start_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1649
    :goto_1
    throw v6

    .line 1652
    :catch_3
    move-exception v2

    .line 1654
    .restart local v2    # "ignore":Ljava/lang/Exception;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1653
    .end local v2    # "ignore":Ljava/lang/Exception;
    :catchall_4
    move-exception v6

    .line 1654
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1653
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method private releaseNetworks(I)V
    .locals 12
    .param p1, "adminUid"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v8, -0x1

    .line 1663
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1664
    .local v7, "selection":Landroid/content/ContentValues;
    const-string/jumbo v9, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1665
    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v9, "networkId"

    aput-object v9, v1, v11

    .line 1666
    .local v1, "columns":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "DomainFilterTable"

    invoke-virtual {v9, v10, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1668
    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1670
    :cond_0
    return-void

    .line 1673
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cv$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1674
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "networkId"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1675
    .local v0, "IntNetId":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1676
    .local v6, "netId":I
    :goto_1
    if-eq v6, v8, :cond_2

    .line 1677
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v11, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1678
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v9, v5}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "netId":I
    :cond_3
    move v6, v8

    .line 1675
    goto :goto_1

    .line 1662
    .end local v0    # "IntNetId":Ljava/lang/Integer;
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_4
    return-void
.end method

.method private retrieveCaptivePortalHosts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "captivePortalHosts"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2081
    const-string/jumbo v1, ","

    .line 2079
    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private saveCaptivePortalHost(Ljava/lang/String;)Z
    .locals 5
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 2085
    const/4 v1, 0x1

    .line 2087
    .local v1, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->retrieveCaptivePortalHosts()Ljava/util/List;

    move-result-object v0

    .line 2088
    .local v0, "portalHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2089
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2091
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "captivePortalHosts"

    .line 2092
    const-string/jumbo v4, ","

    invoke-static {v0, v4}, Lcom/android/server/enterprise/utils/Utils;->convertListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2091
    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2094
    .end local v1    # "ret":Z
    :cond_0
    return v1
.end method

.method private saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "timeStamp"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1312
    const/4 v2, -0x1

    .line 1314
    .local v2, "userId":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1318
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1320
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1321
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const-string/jumbo v3, "userId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1323
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "DomainFilterReportTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1326
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to save domain report in database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 1315
    :catch_0
    move-exception v1

    .line 1316
    .local v1, "ex":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error parsing userId received from daemon"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "newUid"    # Ljava/lang/String;
    .param p4, "blackListInDB"    # Ljava/lang/String;
    .param p5, "whiteListInDB"    # Ljava/lang/String;
    .param p6, "networkId"    # Ljava/lang/String;

    .prologue
    .line 1063
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    .local v1, "headerArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1067
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_0
    const-string/jumbo v2, "CLEAR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "REPLACE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1072
    const-string/jumbo v2, "EXCEPTION"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1071
    if-nez v2, :cond_1

    .line 1072
    const-string/jumbo v2, "CAPPORTAL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1071
    if-eqz v2, :cond_2

    .line 1073
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    .line 1074
    return-void

    .line 1077
    :cond_2
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v0, v2

    .line 1078
    .local v0, "cmdHeaderSize":I
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    .line 1079
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1080
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    .line 1082
    :cond_3
    const-string/jumbo v2, "ADD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1084
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1085
    const-string/jumbo v2, "BLACKLIST"

    invoke-direct {p0, v1, v0, v2, p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1090
    const-string/jumbo v2, "WHITELIST"

    invoke-direct {p0, v1, v0, v2, p5}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    .line 1094
    :cond_6
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "-1"

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1062
    :cond_7
    :goto_0
    return-void

    .line 1095
    :cond_8
    const-string/jumbo v2, "NETID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "dns1"    # Ljava/lang/String;
    .param p2, "dns2"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    .line 1527
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->matchNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1529
    .local v6, "netId":I
    if-eq v6, v12, :cond_0

    .line 1530
    return v6

    .line 1532
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1533
    sget-object v10, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "failed to retrieve NetworkManagementService instance"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    return v12

    .line 1537
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v10

    if-nez v10, :cond_2

    .line 1538
    sget-object v10, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "failed to retrieve ConnectivityService instance"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    return v12

    .line 1543
    :cond_2
    const/4 v7, 0x1

    .line 1545
    .local v7, "retry":Z
    :cond_3
    const/4 v5, 0x0

    .line 1546
    .local v5, "netCreated":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1548
    .local v8, "token":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v10}, Landroid/net/IConnectivityManager;->getReservedNetworkId()I

    move-result v6

    .line 1550
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface {v10, v6, v11, v12}, Landroid/os/INetworkManagementService;->createVirtualNetwork(IZZ)V

    .line 1551
    const/4 v5, 0x1

    .line 1552
    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v0, v10

    const/4 v10, 0x1

    aput-object p2, v0, v10

    .line 1554
    .local v0, "dnses":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string/jumbo v11, ""

    invoke-interface {v10, v6, v0, v11}, Landroid/os/INetworkManagementService;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1556
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    new-instance v12, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-direct {v12, p0, v6, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1558
    const/4 v7, 0x0

    .line 1581
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1583
    .end local v0    # "dnses":[Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_3

    .line 1584
    return v6

    .line 1555
    .restart local v0    # "dnses":[Ljava/lang/String;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v11

    throw v10
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1560
    .end local v0    # "dnses":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1562
    .local v4, "ilStateEx":Ljava/lang/IllegalStateException;
    const/4 v7, 0x0

    .line 1581
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1564
    .end local v4    # "ilStateEx":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 1565
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v5, :cond_4

    .line 1566
    :try_start_4
    sget-object v10, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to set dns for network "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1568
    :try_start_5
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v10, v6}, Landroid/os/INetworkManagementService;->removeNetwork(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1577
    :goto_1
    :try_start_6
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v10, v6}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1581
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1569
    :catch_2
    move-exception v2

    .line 1570
    .local v2, "exc":Ljava/lang/Exception;
    :try_start_7
    sget-object v10, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "failed to remove network"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 1580
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "exc":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    .line 1581
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1580
    throw v10

    .line 1573
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    :try_start_8
    sget-object v10, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "failed to create new network with id provided "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 1578
    :catch_3
    move-exception v3

    .local v3, "ignore":Ljava/lang/Exception;
    goto :goto_2
.end method

.method private trimDomainUrls(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1212
    .local p1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1213
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1214
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1212
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1216
    :cond_0
    const-string/jumbo v1, ""

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1211
    :cond_1
    return-void
.end method

.method private updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "rule"    # Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .param p3, "operation"    # Ljava/lang/String;
    .param p4, "networkId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 948
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 949
    .local v10, "userId":I
    const-string/jumbo v0, "CLEAR"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    const-string/jumbo v1, "CLEAR"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    if-eqz p2, :cond_0

    const-string/jumbo v0, "ADD"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "REMOVE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 954
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v7, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v1

    .line 956
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 957
    .local v9, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 958
    .local v2, "appId":Ljava/lang/String;
    const-string/jumbo v0, "*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 959
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 963
    .end local v2    # "appId":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 965
    const/4 v4, 0x0

    .local v4, "blackList":Ljava/lang/String;
    const/4 v5, 0x0

    .line 966
    .local v5, "whiteList":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v8

    .line 967
    .local v8, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_8

    .line 968
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 969
    const-string/jumbo v0, ";"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 975
    .end local v4    # "blackList":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v8

    .line 976
    if-eqz v8, :cond_a

    .line 977
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 978
    const-string/jumbo v0, ";"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .end local v5    # "whiteList":Ljava/lang/String;
    :cond_5
    :goto_3
    move-object v0, p0

    move-object v1, p3

    move-object v6, p4

    .line 984
    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 953
    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 960
    .restart local v2    # "appId":Ljava/lang/String;
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "pkg":Ljava/lang/String;
    :cond_6
    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 961
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "appId":Ljava/lang/String;
    goto :goto_1

    .line 971
    .end local v2    # "appId":Ljava/lang/String;
    .restart local v4    # "blackList":Ljava/lang/String;
    .restart local v5    # "whiteList":Ljava/lang/String;
    .restart local v8    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v4, ""

    .local v4, "blackList":Ljava/lang/String;
    goto :goto_2

    .line 972
    .local v4, "blackList":Ljava/lang/String;
    :cond_8
    const-string/jumbo v0, "REMOVE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 973
    const-string/jumbo v4, "ALL"

    .local v4, "blackList":Ljava/lang/String;
    goto :goto_2

    .line 980
    .end local v4    # "blackList":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, ""

    .local v5, "whiteList":Ljava/lang/String;
    goto :goto_3

    .line 981
    .local v5, "whiteList":Ljava/lang/String;
    :cond_a
    const-string/jumbo v0, "REMOVE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 982
    const-string/jumbo v5, "ALL"

    .local v5, "whiteList":Ljava/lang/String;
    goto :goto_3
.end method

.method private validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 7
    .param p1, "appId"    # Lcom/samsung/android/knox/AppIdentity;

    .prologue
    const/4 v3, 0x0

    .line 1853
    if-nez p1, :cond_0

    .line 1854
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 1855
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 1856
    const-string/jumbo v5, "Invalid AppIdentity object."

    .line 1854
    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    .line 1858
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1859
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 1860
    .local v1, "signature":Ljava/lang/String;
    const-string/jumbo v2, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1861
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 1862
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 1863
    const-string/jumbo v5, "There is no signature related to all applications."

    .line 1861
    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    .line 1865
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1866
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 1867
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 1868
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid package name. - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1866
    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    .line 1870
    :cond_2
    return-object v3
.end method

.method private validateDnses(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "dns1"    # Ljava/lang/String;
    .param p2, "dns2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1830
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1831
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1832
    :cond_0
    return v1

    .line 1833
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1834
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1835
    :cond_2
    return v1

    .line 1837
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private validateDomains(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Z
    .locals 4
    .param p1, "dfRule"    # Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .prologue
    const/4 v3, 0x0

    .line 1841
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "domain$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1842
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1843
    return v3

    .line 1845
    .end local v0    # "domain":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1846
    .restart local v0    # "domain":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1847
    return v3

    .line 1849
    .end local v0    # "domain":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1767
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 1768
    const-string/jumbo v5, "android"

    .line 1767
    invoke-static {v4, v5, v7, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    .line 1770
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1772
    .local v2, "identity":J
    :try_start_0
    invoke-static {v0, p2, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1778
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1772
    return v4

    .line 1774
    :catch_0
    move-exception v1

    .line 1775
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fail to validate application signature "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1778
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1776
    return v7

    .line 1777
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1778
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1777
    throw v4
.end method

.method private verifyAppInstalled(Ljava/util/Map;Ljava/lang/String;I)Z
    .locals 7
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    .line 1790
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1791
    return v6

    .line 1793
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v1

    .line 1794
    .local v1, "appUid":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 1795
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    .line 1796
    .local v2, "userIdObj":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1797
    if-nez p1, :cond_1

    .line 1798
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1799
    .end local p1    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_1
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v0

    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local p1    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit v4

    .line 1806
    return v6

    .line 1802
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1796
    :catchall_0
    move-exception v3

    :goto_1
    monitor-exit v4

    throw v3

    .line 1808
    .end local v2    # "userIdObj":Ljava/lang/Integer;
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 1796
    .end local p1    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "userIdObj":Ljava/lang/Integer;
    :catchall_1
    move-exception v3

    move-object p1, v0

    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local p1    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_1
.end method


# virtual methods
.method declared-synchronized addDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 37
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    monitor-enter p0

    .line 512
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_1

    .line 513
    :cond_0
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-object/from16 v23, v0

    .line 514
    .local v23, "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v33, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v34, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 515
    sget-object v35, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 516
    const-string/jumbo v36, "No rule was specified."

    .line 514
    invoke-direct/range {v33 .. v36}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    const/16 v34, 0x0

    aput-object v33, v23, v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 517
    return-object v23

    .line 521
    .end local v23    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 522
    .local v6, "adminUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    .line 523
    .local v29, "userId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v5

    .line 524
    .local v5, "adminDb":I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v5, v0, :cond_2

    .line 525
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-object/from16 v23, v0

    .line 526
    .restart local v23    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v33, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v34, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v35, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 527
    const-string/jumbo v36, "This administrator can\'t execute this operation because he is not the owner."

    .line 526
    invoke-direct/range {v33 .. v36}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    const/16 v34, 0x0

    aput-object v33, v23, v34
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 528
    return-object v23

    .line 531
    .end local v23    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 532
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    move-object/from16 v33, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v7, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_4
    monitor-exit v34

    .line 534
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-object/from16 v23, v0

    .line 535
    .restart local v23    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_1c

    .line 536
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 537
    .local v24, "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    if-nez v24, :cond_4

    .line 538
    new-instance v33, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v34, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 539
    sget-object v35, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 540
    const-string/jumbo v36, "No rule was specified."

    .line 538
    invoke-direct/range {v33 .. v36}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v33, v23, v18

    .line 535
    :cond_3
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 531
    .end local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "i":I
    .end local v23    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .end local v24    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    :catchall_0
    move-exception v33

    monitor-exit v34

    throw v33
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v5    # "adminDb":I
    .end local v6    # "adminUid":I
    .end local v29    # "userId":I
    :catchall_1
    move-exception v33

    monitor-exit p0

    throw v33

    .line 544
    .restart local v5    # "adminDb":I
    .restart local v6    # "adminUid":I
    .restart local v7    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v18    # "i":I
    .restart local v23    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .restart local v24    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .restart local v29    # "userId":I
    :cond_4
    :try_start_5
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v12

    .line 545
    .local v12, "dns1":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v13

    .line 546
    .local v13, "dns2":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_6

    const/16 v17, 0x0

    .line 548
    .local v17, "hasDns":Z
    :goto_2
    if-nez v17, :cond_8

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_8

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v33

    if-eqz v33, :cond_5

    .line 549
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v33

    if-nez v33, :cond_7

    .line 551
    :cond_5
    new-instance v33, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v34, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 552
    sget-object v35, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 553
    const-string/jumbo v36, "No parameters provided."

    .line 551
    invoke-direct/range {v33 .. v36}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v33, v23, v18

    goto :goto_1

    .line 546
    .end local v17    # "hasDns":Z
    :cond_6
    const/16 v17, 0x1

    .restart local v17    # "hasDns":Z
    goto :goto_2

    .line 550
    :cond_7
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_8

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->isEmpty()Z

    move-result v33

    .line 548
    if-nez v33, :cond_5

    .line 557
    :cond_8
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v33

    aput-object v33, v23, v18

    .line 558
    aget-object v33, v23, v18

    if-nez v33, :cond_3

    .line 562
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 563
    .local v21, "packageName":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v27

    .line 564
    .local v27, "signature":Ljava/lang/String;
    const/16 v28, 0x1

    .line 565
    .local v28, "signatureMatch":Z
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_9

    .line 566
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v21

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v28

    .line 568
    .end local v28    # "signatureMatch":Z
    :cond_9
    const/4 v8, 0x1

    .line 569
    .local v8, "appIsInstalled":Z
    const-string/jumbo v33, "*"

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_a

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v29

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->verifyAppInstalled(Ljava/util/Map;Ljava/lang/String;I)Z

    move-result v8

    .line 572
    .end local v8    # "appIsInstalled":Z
    :cond_a
    if-nez v28, :cond_b

    if-eqz v8, :cond_b

    .line 573
    new-instance v33, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v34, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 574
    sget-object v35, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 575
    const-string/jumbo v36, "Given signature does not match with the application."

    .line 573
    invoke-direct/range {v33 .. v36}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v33, v23, v18

    goto/16 :goto_1

    .line 580
    :cond_b
    if-nez v17, :cond_c

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_e

    :cond_c
    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateDnses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_e

    .line 587
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateDomains(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Z

    move-result v33

    if-nez v33, :cond_f

    .line 588
    new-instance v33, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v34, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 589
    sget-object v35, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 590
    const-string/jumbo v36, "Invalid domain."

    .line 588
    invoke-direct/range {v33 .. v36}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v33, v23, v18

    goto/16 :goto_1

    .line 581
    :cond_e
    new-instance v33, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v34, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 582
    sget-object v35, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string/jumbo v36, "Invalid DNS(s) provided"

    .line 581
    invoke-direct/range {v33 .. v36}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v33, v23, v18

    goto/16 :goto_1

    .line 595
    :cond_f
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 596
    .local v30, "values":Landroid/content/ContentValues;
    const-string/jumbo v33, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    const-string/jumbo v33, "packageName"

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string/jumbo v33, "signature"

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 601
    .local v26, "selection":Landroid/content/ContentValues;
    const-string/jumbo v33, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    const-string/jumbo v33, "packageName"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v33, v0

    .line 604
    const-string/jumbo v34, "DomainFilterTable"

    const/16 v35, 0x0

    .line 603
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    .line 605
    .local v11, "cvlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 606
    .local v25, "ruleInDb":Landroid/content/ContentValues;
    if-eqz v11, :cond_10

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_11

    .line 609
    :cond_10
    :goto_3
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v14

    .line 610
    .local v14, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v15

    .line 611
    .local v15, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_12

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_12

    .line 650
    :goto_4
    const/16 v20, -0x1

    .line 651
    .local v20, "netId":I
    if-eqz v17, :cond_19

    .line 652
    if-eqz v8, :cond_18

    .line 653
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 654
    const/16 v33, -0x1

    move/from16 v0, v20

    move/from16 v1, v33

    if-ne v0, v1, :cond_17

    .line 655
    new-instance v33, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v34, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 656
    sget-object v35, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 657
    const-string/jumbo v36, "Error occurred applying DNS(s)"

    .line 655
    invoke-direct/range {v33 .. v36}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v33, v23, v18

    goto/16 :goto_1

    .line 607
    .end local v14    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "netId":I
    :cond_11
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "ruleInDb":Landroid/content/ContentValues;
    check-cast v25, Landroid/content/ContentValues;

    .restart local v25    # "ruleInDb":Landroid/content/ContentValues;
    goto :goto_3

    .line 614
    .restart local v14    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    const-string/jumbo v33, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 615
    .local v10, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v33, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 619
    .local v32, "whiteListInDB":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    .line 620
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    .line 624
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    .line 625
    .local v9, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v31

    .line 629
    .local v31, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9, v14}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v33

    if-eqz v33, :cond_14

    .line 630
    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v33

    if-eqz v33, :cond_15

    const/16 v16, 0x0

    .line 631
    .local v16, "hasChangesToBeMade":Z
    :goto_5
    if-nez v16, :cond_13

    if-eqz v17, :cond_16

    .line 639
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v10

    .line 643
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v32

    .line 646
    const-string/jumbo v33, "blacklist"

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string/jumbo v33, "whitelist"

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 629
    .end local v16    # "hasChangesToBeMade":Z
    :cond_14
    const/16 v16, 0x1

    goto :goto_5

    .line 630
    :cond_15
    const/16 v16, 0x1

    goto :goto_5

    .line 632
    .restart local v16    # "hasChangesToBeMade":Z
    :cond_16
    new-instance v33, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v34, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 633
    sget-object v35, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 634
    const-string/jumbo v36, "The specified rule is already in the database."

    .line 632
    invoke-direct/range {v33 .. v36}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v33, v23, v18

    goto/16 :goto_1

    .line 660
    .end local v9    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "blackListInDB":Ljava/lang/String;
    .end local v16    # "hasChangesToBeMade":Z
    .end local v31    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v32    # "whiteListInDB":Ljava/lang/String;
    .restart local v20    # "netId":I
    :cond_17
    const-string/jumbo v33, "networkId"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_18

    .line 662
    const-string/jumbo v33, "networkId"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 663
    .local v22, "prevNetId":I
    const/16 v33, -0x1

    move/from16 v0, v22

    move/from16 v1, v33

    if-eq v0, v1, :cond_18

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_18

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    move-object/from16 v33, v0

    .line 665
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    .line 664
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 666
    .local v19, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 670
    .end local v19    # "msg":Landroid/os/Message;
    .end local v22    # "prevNetId":I
    :cond_18
    const-string/jumbo v33, "dns1"

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string/jumbo v33, "dns2"

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string/jumbo v33, "networkId"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v33, v0

    const-string/jumbo v34, "DomainFilterTable"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v30

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v33

    if-nez v33, :cond_1a

    .line 676
    new-instance v33, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v34, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 677
    sget-object v35, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 678
    const-string/jumbo v36, "Failed to add/update rule in the database."

    .line 676
    invoke-direct/range {v33 .. v36}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v33, v23, v18

    .line 680
    if-eqz v17, :cond_3

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    move-object/from16 v33, v0

    .line 682
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    .line 681
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 683
    .restart local v19    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 686
    .end local v19    # "msg":Landroid/os/Message;
    :cond_1a
    if-eqz v8, :cond_1b

    .line 687
    const-string/jumbo v33, "ADD"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionListDelayed()V

    .line 689
    new-instance v33, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v34, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 690
    sget-object v35, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 691
    const-string/jumbo v36, "The rule(s) was successfully added/updated."

    .line 689
    invoke-direct/range {v33 .. v36}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v33, v23, v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .end local v11    # "cvlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v12    # "dns1":Ljava/lang/String;
    .end local v13    # "dns2":Ljava/lang/String;
    .end local v14    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "hasDns":Z
    .end local v20    # "netId":I
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v24    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .end local v25    # "ruleInDb":Landroid/content/ContentValues;
    .end local v26    # "selection":Landroid/content/ContentValues;
    .end local v27    # "signature":Ljava/lang/String;
    .end local v30    # "values":Landroid/content/ContentValues;
    :cond_1c
    monitor-exit p0

    .line 694
    return-object v23
.end method

.method adminRemoved(I)V
    .locals 3
    .param p1, "adminUid"    # I

    .prologue
    .line 1188
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1189
    .local v0, "userId":I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1190
    .local v1, "userIdObj":Ljava/lang/Integer;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1191
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1192
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    .line 1194
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->maybeClearCaptivePortalHosts()V

    .line 1187
    return-void
.end method

.method enableDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    .line 1238
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1239
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1240
    .local v2, "userId":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1241
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "status"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1242
    const-string/jumbo v5, "userId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1243
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1244
    .local v1, "selection":Landroid/content/ContentValues;
    const-string/jumbo v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1245
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "DomainFilterReportStatus"

    invoke-virtual {v5, v6, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1247
    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 1248
    const-string/jumbo v8, "Failed to change Domain Filter report status on database."

    .line 1247
    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v5

    .line 1251
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1252
    .local v3, "userIdObj":Ljava/lang/Integer;
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1254
    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1261
    :cond_2
    :goto_0
    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 1262
    if-eqz p2, :cond_5

    const-string/jumbo v5, "Domain Report successfully enabled."

    .line 1261
    :goto_1
    invoke-direct {v6, v7, v8, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v6

    .line 1253
    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1255
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1256
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1257
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    goto :goto_0

    .line 1263
    :cond_5
    const-string/jumbo v5, "Domain Report successfully disabled."

    goto :goto_1
.end method

.method getDefaulCaptivePortalURL()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2158
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2159
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2160
    const-string/jumbo v2, "captive_portal_server"

    .line 2159
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2161
    .local v0, "server":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2162
    const-string/jumbo v0, "connectivitycheck.gstatic.com"

    .line 2163
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2165
    .end local v0    # "server":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method getDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1284
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1285
    .local v7, "userId":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    .local v4, "reportList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterReport;>;"
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1289
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    .local v5, "storedReports":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1291
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string/jumbo v8, "userId"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1292
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "DomainFilterReportTable"

    invoke-virtual {v8, v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1294
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "report$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1295
    .local v2, "report":Landroid/content/ContentValues;
    const-string/jumbo v8, "packageName"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1296
    .local v1, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1297
    :cond_1
    const-string/jumbo v8, "time"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 1298
    .local v6, "timestamp":Ljava/lang/Long;
    new-instance v10, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;

    .line 1299
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1300
    :goto_1
    const-string/jumbo v11, "url"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1298
    invoke-direct {v10, v1, v8, v9, v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1287
    .end local v0    # "filterByUserId":Landroid/content/ContentValues;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "report":Landroid/content/ContentValues;
    .end local v3    # "report$iterator":Ljava/util/Iterator;
    .end local v5    # "storedReports":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6    # "timestamp":Ljava/lang/Long;
    :cond_2
    return-object v4

    .line 1299
    .restart local v0    # "filterByUserId":Landroid/content/ContentValues;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "report":Landroid/content/ContentValues;
    .restart local v3    # "report$iterator":Ljava/util/Iterator;
    .restart local v5    # "storedReports":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v6    # "timestamp":Ljava/lang/Long;
    :cond_3
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 1303
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "report":Landroid/content/ContentValues;
    .end local v6    # "timestamp":Ljava/lang/Long;
    :cond_4
    return-object v4
.end method

.method getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 23
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 899
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v15, "domainRules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 901
    .local v17, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget v10, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 903
    .local v10, "adminUid":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .local v6, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .local v7, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v20, "adminUid"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    .line 908
    const-string/jumbo v21, "DomainFilterTable"

    const/16 v22, 0x0

    .line 907
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v14

    .line 909
    .local v14, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "cv$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 910
    .local v12, "cv":Landroid/content/ContentValues;
    const-string/jumbo v20, "packageName"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 911
    .local v16, "packageName":Ljava/lang/String;
    const-string/jumbo v20, "signature"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 912
    .local v18, "signature":Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 913
    :cond_1
    const-string/jumbo v20, "blacklist"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 914
    .local v11, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v20, "whitelist"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 915
    .local v19, "whiteListInDB":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 916
    const-string/jumbo v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 920
    :goto_1
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 921
    const-string/jumbo v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 925
    :goto_2
    const-string/jumbo v20, "dns1"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 926
    .local v8, "dns1":Ljava/lang/String;
    const-string/jumbo v20, "dns2"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 927
    .local v9, "dns2":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/knox/AppIdentity;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    .local v5, "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    new-instance v4, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .local v4, "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 918
    .end local v4    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .end local v5    # "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    .end local v8    # "dns1":Ljava/lang/String;
    .end local v9    # "dns2":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 923
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 933
    .end local v11    # "blackListInDB":Ljava/lang/String;
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v18    # "signature":Ljava/lang/String;
    .end local v19    # "whiteListInDB":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 934
    return-object v15
.end method

.method isDomainFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1267
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v0

    return v0
.end method

.method onPreAdminRemoval(I)V
    .locals 8
    .param p1, "adminUid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1198
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1199
    .local v7, "userId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1202
    const-string/jumbo v1, "CLEAR"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworks(I)V

    .line 1197
    :cond_0
    return-void
.end method

.method public declared-synchronized removeDnsForApplication(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILandroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 14
    .param p1, "dfRule"    # Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .param p2, "adminUid"    # I
    .param p3, "valuesInDB"    # Landroid/content/ContentValues;

    .prologue
    monitor-enter p0

    .line 1482
    :try_start_0
    const-string/jumbo v10, "dns1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1483
    .local v2, "dns1Db":Ljava/lang/String;
    const-string/jumbo v10, "dns2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1484
    .local v4, "dns2Db":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v1

    .line 1485
    .local v1, "dns1":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v3

    .line 1487
    .local v3, "dns2":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-nez v3, :cond_1

    if-eqz v4, :cond_1

    .line 1489
    :cond_0
    new-instance v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 1490
    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 1491
    const-string/jumbo v13, "DNS(s) provided doesn\'t match DNS(s) in database."

    .line 1489
    invoke-direct {v10, v11, v12, v13}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v10

    .line 1488
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_0

    :cond_2
    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1494
    :cond_3
    const-string/jumbo v10, "networkId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1495
    .local v6, "netId":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_4

    .line 1496
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v12, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1497
    .local v5, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v10, v5}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1498
    const/4 v6, -0x1

    .line 1500
    .end local v5    # "msg":Landroid/os/Message;
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1501
    .local v7, "newValues":Landroid/content/ContentValues;
    const-string/jumbo v11, "dns1"

    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string/jumbo v11, "dns2"

    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string/jumbo v10, "networkId"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1505
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1506
    .local v9, "selectionValues":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1507
    .local v8, "packageName":Ljava/lang/String;
    const-string/jumbo v10, "adminUid"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1508
    const-string/jumbo v10, "packageName"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "DomainFilterTable"

    invoke-virtual {v10, v11, v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1510
    new-instance v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 1511
    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 1512
    const-string/jumbo v13, "Failed to remove DNS(s) from database."

    .line 1510
    invoke-direct {v10, v11, v12, v13}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v10

    .line 1514
    :cond_5
    const/4 v10, 0x0

    monitor-exit p0

    return-object v10

    .end local v1    # "dns1":Ljava/lang/String;
    .end local v2    # "dns1Db":Ljava/lang/String;
    .end local v3    # "dns2":Ljava/lang/String;
    .end local v4    # "dns2Db":Ljava/lang/String;
    .end local v6    # "netId":I
    .end local v7    # "newValues":Landroid/content/ContentValues;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "selectionValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method declared-synchronized removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 33
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    monitor-enter p0

    .line 702
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 703
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-object/from16 v19, v0

    .line 704
    .local v19, "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v28, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v29, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 705
    sget-object v30, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 706
    const-string/jumbo v31, "No rule was specified."

    .line 704
    invoke-direct/range {v28 .. v31}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    const/16 v29, 0x0

    aput-object v28, v19, v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 707
    return-object v19

    .line 710
    .end local v19    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 712
    .local v6, "adminUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v5

    .line 713
    .local v5, "adminStatus":I
    if-nez v5, :cond_3

    .line 714
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-object/from16 v19, v0

    .line 715
    .restart local v19    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v28, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v29, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 716
    sget-object v30, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 717
    const-string/jumbo v31, "The rules are already cleared."

    .line 715
    invoke-direct/range {v28 .. v31}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    const/16 v29, 0x0

    aput-object v28, v19, v29

    .line 887
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v28

    if-nez v28, :cond_2

    .line 891
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    monitor-exit v29

    .line 894
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->maybeClearCaptivePortalHosts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 895
    return-object v19

    .line 718
    .end local v19    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :cond_3
    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v5, v0, :cond_4

    .line 719
    const/16 v28, 0x1

    :try_start_4
    move/from16 v0, v28

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-object/from16 v19, v0

    .line 720
    .restart local v19    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v28, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v29, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v30, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 721
    const-string/jumbo v31, "This administrator can\'t execute this operation because he is not the owner."

    .line 720
    invoke-direct/range {v28 .. v31}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    const/16 v29, 0x0

    aput-object v28, v19, v29
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v5    # "adminStatus":I
    .end local v6    # "adminUid":I
    .end local v19    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :catchall_0
    move-exception v28

    monitor-exit p0

    throw v28

    .line 723
    .restart local v5    # "adminStatus":I
    .restart local v6    # "adminUid":I
    :cond_4
    :try_start_5
    sget-object v28, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->CLEAR_ALL:Ljava/util/List;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 725
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-object/from16 v19, v0

    .line 726
    .restart local v19    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworks(I)V

    .line 727
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 728
    .local v22, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v28, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v28, v0

    const-string/jumbo v29, "DomainFilterTable"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v28

    if-gtz v28, :cond_5

    .line 731
    new-instance v28, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v29, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 732
    sget-object v30, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 733
    const-string/jumbo v31, "Failed to clear rules from database."

    .line 731
    invoke-direct/range {v28 .. v31}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    const/16 v29, 0x0

    aput-object v28, v19, v29

    .line 739
    :goto_1
    const-string/jumbo v28, "CLEAR"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 735
    :cond_5
    new-instance v28, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v29, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v30, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 736
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Rules successfully cleared. Admin: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 735
    invoke-direct/range {v28 .. v31}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    const/16 v29, 0x0

    aput-object v28, v19, v29

    goto :goto_1

    .line 741
    .end local v19    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .end local v22    # "selectionValues":Landroid/content/ContentValues;
    :cond_6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-object/from16 v19, v0

    .line 742
    .restart local v19    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_1

    .line 743
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 744
    .local v20, "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v28

    aput-object v28, v19, v15

    .line 745
    aget-object v28, v19, v15

    if-eqz v28, :cond_8

    .line 742
    :cond_7
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 748
    :cond_8
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 750
    .local v18, "packageName":Ljava/lang/String;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 751
    .restart local v22    # "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v28, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    const-string/jumbo v28, "packageName"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v28, v0

    .line 754
    const-string/jumbo v29, "DomainFilterTable"

    const/16 v30, 0x0

    .line 753
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 756
    .local v9, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 757
    :cond_9
    new-instance v28, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v29, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 758
    sget-object v30, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 759
    const-string/jumbo v31, "The rule is not in the database."

    .line 757
    invoke-direct/range {v28 .. v31}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v19, v15

    goto :goto_3

    .line 764
    :cond_a
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    .line 765
    .local v21, "ruleInDb":Landroid/content/ContentValues;
    const-string/jumbo v28, "signature"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 766
    .local v24, "signatureInDB":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v23

    .line 767
    .local v23, "signature":Ljava/lang/String;
    if-eqz v23, :cond_c

    if-nez v24, :cond_c

    .line 771
    :cond_b
    new-instance v28, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v29, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 772
    sget-object v30, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 773
    const-string/jumbo v31, "Signature does not match with the previous added."

    .line 771
    invoke-direct/range {v28 .. v31}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v19, v15

    goto/16 :goto_3

    .line 768
    :cond_c
    if-nez v23, :cond_d

    if-nez v24, :cond_b

    .line 769
    :cond_d
    if-eqz v23, :cond_e

    if-eqz v24, :cond_e

    .line 770
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 777
    :cond_e
    const/4 v12, 0x0

    .line 778
    .local v12, "hasDns":Z
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_f

    .line 779
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDnsForApplication(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILandroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v28

    aput-object v28, v19, v15

    .line 781
    aget-object v28, v19, v15

    if-nez v28, :cond_7

    .line 784
    const/4 v12, 0x1

    .line 789
    :cond_f
    const-string/jumbo v28, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 790
    .local v8, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v28, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 794
    .local v27, "whiteListInDB":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v10

    .line 795
    .local v10, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v11

    .line 802
    .local v11, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_13

    .line 803
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    .line 804
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    .line 805
    .local v7, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7, v10}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v14

    .line 817
    :goto_4
    if-eqz v11, :cond_14

    .line 818
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    .line 819
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v26

    .line 820
    .local v26, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v26

    invoke-interface {v0, v11}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v28

    or-int v14, v14, v28

    .line 832
    .local v14, "hasRulesToDelete":Z
    :goto_5
    if-nez v14, :cond_10

    if-eqz v12, :cond_15

    .line 837
    :cond_10
    if-eqz v14, :cond_11

    .line 839
    const-string/jumbo v28, ";"

    move-object/from16 v0, v28

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 840
    const-string/jumbo v28, ";"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v27

    .line 843
    :cond_11
    const-string/jumbo v28, "dns1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_16

    const/4 v13, 0x1

    .line 845
    .local v13, "hasDnsDb":Z
    :goto_6
    const-string/jumbo v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_12

    const-string/jumbo v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 846
    if-nez v12, :cond_17

    if-eqz v13, :cond_17

    .line 862
    :cond_12
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 863
    .local v25, "values":Landroid/content/ContentValues;
    const-string/jumbo v28, "blacklist"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string/jumbo v28, "whitelist"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v28, v0

    const-string/jumbo v29, "DomainFilterTable"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v28

    if-nez v28, :cond_19

    .line 867
    new-instance v28, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v29, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 868
    sget-object v30, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 869
    const-string/jumbo v31, "Failed to remove/update rule from the database."

    .line 867
    invoke-direct/range {v28 .. v31}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v19, v15

    goto/16 :goto_3

    .line 810
    .end local v7    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "hasDnsDb":Z
    .end local v14    # "hasRulesToDelete":Z
    .end local v25    # "values":Landroid/content/ContentValues;
    .end local v26    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 811
    .restart local v7    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v14, 0x1

    .local v14, "hasRulesToDelete":Z
    goto/16 :goto_4

    .line 826
    .end local v14    # "hasRulesToDelete":Z
    :cond_14
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 827
    .restart local v26    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v28, 0x1

    or-int v14, v14, v28

    .local v14, "hasRulesToDelete":Z
    goto/16 :goto_5

    .line 833
    :cond_15
    new-instance v28, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v29, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 834
    sget-object v30, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 835
    const-string/jumbo v31, "The rule is not in the database."

    .line 833
    invoke-direct/range {v28 .. v31}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v19, v15

    goto/16 :goto_3

    .line 843
    :cond_16
    const/4 v13, 0x0

    .restart local v13    # "hasDnsDb":Z
    goto/16 :goto_6

    .line 847
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v28, v0

    const-string/jumbo v29, "DomainFilterTable"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v28

    if-gtz v28, :cond_18

    .line 849
    new-instance v28, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v29, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 850
    sget-object v30, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 851
    const-string/jumbo v31, "Failed to remove/update rule from the database."

    .line 849
    invoke-direct/range {v28 .. v31}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v19, v15

    goto/16 :goto_3

    .line 853
    :cond_18
    const-string/jumbo v28, "networkId"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 854
    .local v16, "netId":I
    const-string/jumbo v28, "REMOVE"

    .line 855
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    .line 854
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    new-instance v28, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v29, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 857
    sget-object v30, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 858
    const-string/jumbo v31, "The rule was successfuly removed/updated."

    .line 856
    invoke-direct/range {v28 .. v31}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v19, v15

    goto/16 :goto_3

    .line 871
    .end local v16    # "netId":I
    .restart local v25    # "values":Landroid/content/ContentValues;
    :cond_19
    const/16 v17, 0x0

    .line 872
    .local v17, "netId":Ljava/lang/Integer;
    if-eqz v12, :cond_1a

    .line 873
    const-string/jumbo v28, "networkId"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 874
    .end local v17    # "netId":Ljava/lang/Integer;
    :cond_1a
    if-nez v17, :cond_1b

    .line 875
    new-instance v17, Ljava/lang/Integer;

    const/16 v28, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 876
    :cond_1b
    const-string/jumbo v28, "REMOVE"

    .line 877
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    .line 876
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    new-instance v28, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v29, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 879
    sget-object v30, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 880
    const-string/jumbo v31, "The rule was successfuly removed/updated."

    .line 878
    invoke-direct/range {v28 .. v31}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v28, v19, v15

    goto/16 :goto_3

    .line 887
    .end local v7    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "blackListInDB":Ljava/lang/String;
    .end local v9    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v10    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "hasDns":Z
    .end local v13    # "hasDnsDb":Z
    .end local v14    # "hasRulesToDelete":Z
    .end local v15    # "i":I
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v20    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .end local v21    # "ruleInDb":Landroid/content/ContentValues;
    .end local v22    # "selectionValues":Landroid/content/ContentValues;
    .end local v23    # "signature":Ljava/lang/String;
    .end local v24    # "signatureInDB":Ljava/lang/String;
    .end local v25    # "values":Landroid/content/ContentValues;
    .end local v26    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "whiteListInDB":Ljava/lang/String;
    :catchall_1
    move-exception v28

    monitor-exit v29

    throw v28
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
