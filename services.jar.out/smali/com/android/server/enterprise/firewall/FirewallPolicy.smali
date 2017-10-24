.class public Lcom/android/server/enterprise/firewall/FirewallPolicy;
.super Landroid/app/enterprise/IFirewallPolicy$Stub;
.source "FirewallPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallPolicy$1;,
        Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;,
        Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
    }
.end annotation


# static fields
.field private static final ALLOW_TYPE:Ljava/lang/String; = "allow"

.field private static final DENY_TYPE:Ljava/lang/String; = "deny"

.field private static final HTTP_PROXY_TYPE:Ljava/lang/String; = "proxy"

.field private static final INTERFACE_TYPES:[Ljava/lang/String;

.field private static final IP6TABLES:Ljava/lang/String; = "/system/bin/ip6tables"

.field private static final IPTABLES:Ljava/lang/String; = "/system/bin/iptables"

.field private static final LOCATION:I = 0x4

.field private static final MARKET_ALL_NETWORKS:I = 0x0

.field private static final MARKET_IPTABLES_CHAIN:Ljava/lang/String; = "samsung_market_policy"

.field private static final MARKET_PACKAGE_NAMES:[Ljava/lang/String;

.field private static final MARKET_WIFI_ONLY:I = 0x1

.field static final NUM_OF_CONTAINER:I = 0x2

.field public static final REDIRECT_EXCEPTION_CHAIN:Ljava/lang/String; = "samsung_exceptions"

.field private static final REDIRECT_EXCEPTION_TYPE:Ljava/lang/String; = "redirect_exception"

.field private static final REROUTE_TYPE:Ljava/lang/String; = "reroute"

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field private static allIpsInfo:[Ljava/net/InetAddress;

.field public static final iptablesChains:[Ljava/lang/String;

.field private static isIptChainsCreated:Z

.field private static mHostnameToIpListMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static mIpToHostnameMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mIsHostnameHashMapCreated:Z

.field private static mMigrationNeeded:Z


# instance fields
.field private final ACTION_USER_ADDED:Ljava/lang/String;

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

.field private mCommandsHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

.field private mCon:Landroid/net/IConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirewallService:Lcom/samsung/android/knox/net/firewall/IFirewall;

.field private mIsOnline:Z

.field private final mLocker:Ljava/lang/Object;

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

.field private mUserManager:Landroid/os/UserManager;

.field private marketChainsCreated:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsHostnameHashMapCreated:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0([Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->allIpsInfo:[Ljava/net/InetAddress;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/net/IConnectivityManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/os/INetworkManagementService;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;
    .locals 1
    .param p1, "processResult"    # Ljava/lang/Process;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarketOnBoot()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/firewall/FirewallPolicy;IZ)V
    .locals 0
    .param p1, "adminUid"    # I
    .param p2, "allAdmins"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->loadHostnameMapFromDb(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 153
    const-string/jumbo v1, "samsung_reroute"

    aput-object v1, v0, v3

    const-string/jumbo v1, "samsung_allow"

    aput-object v1, v0, v4

    const-string/jumbo v1, "samsung_deny"

    aput-object v1, v0, v5

    const-string/jumbo v1, "samsung_proxy"

    aput-object v1, v0, v6

    const-string/jumbo v1, "samsung_log"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 152
    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    .line 157
    new-array v0, v4, [Ljava/lang/String;

    .line 158
    const-string/jumbo v1, "com.android.vending"

    aput-object v1, v0, v3

    .line 157
    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    .line 187
    new-array v0, v6, [Ljava/lang/String;

    .line 188
    const-string/jumbo v1, "wifi"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "*"

    aput-object v1, v0, v5

    .line 187
    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->INTERFACE_TYPES:[Ljava/lang/String;

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 205
    invoke-direct {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;-><init>()V

    .line 134
    iput-boolean v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    .line 142
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->ACTION_USER_ADDED:Ljava/lang/String;

    .line 231
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 2085
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLocker:Ljava/lang/Object;

    .line 206
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    .line 207
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserManager:Landroid/os/UserManager;

    .line 208
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 210
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 211
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-direct {v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v0, "filterBroad":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mHostnameToIpListMapping:Landroid/util/SparseArray;

    .line 220
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIpToHostnameMapping:Landroid/util/SparseArray;

    .line 221
    sput-boolean v4, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsHostnameHashMapCreated:Z

    .line 222
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mMigrationNeeded:Z

    .line 225
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "FirewallPolicyService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 228
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandsHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    .line 205
    return-void
.end method

.method private addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;Z)Z
    .locals 9
    .param p1, "containerId"    # I
    .param p3, "uid"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const/4 v8, 0x0

    .line 1033
    const-string/jumbo v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addRulesToDb enter containerId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1034
    const-string/jumbo v6, " enabled:"

    .line 1033
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1037
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    const/4 v1, -0x1

    .line 1038
    .end local v0    # "cv":Landroid/content/ContentValues;
    .local v1, "index":I
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1039
    add-int/lit8 v1, v1, 0x1

    .line 1040
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1041
    .local v3, "rule":Ljava/lang/String;
    invoke-direct {p0, p1, v3, p4, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkDuplicateRule(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1044
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1045
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "adminUid"

    .line 1046
    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1045
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1047
    const-string/jumbo v4, "rules"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    if-eqz p5, :cond_1

    .line 1049
    const-string/jumbo v4, "enabled"

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    :goto_0
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v4, "timestamp"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1055
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "FirewallTable"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1056
    return v8

    .line 1051
    :cond_1
    const-string/jumbo v4, "enabled"

    const-string/jumbo v5, "false"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1059
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v3    # "rule":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method private addToNewFirewall(Ljava/lang/String;ILcom/sec/enterprise/firewall/FirewallRule$RuleType;)Z
    .locals 11
    .param p1, "ruleString"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    .prologue
    const/4 v9, 0x0

    .line 391
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->resolveRule(Ljava/lang/String;ILcom/sec/enterprise/firewall/FirewallRule$RuleType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 392
    .local v7, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 393
    .local v0, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    if-nez v7, :cond_0

    .line 394
    return v9

    .line 396
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v6, v8, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 398
    .local v6, "ruleArray":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 399
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/enterprise/firewall/FirewallRule;

    invoke-virtual {v8}, Lcom/sec/enterprise/firewall/FirewallRule;->convertToNew()Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v8

    aput-object v8, v6, v2

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 404
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mFirewallService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    invoke-interface {v8, v0, v6}, Lcom/samsung/android/knox/net/firewall/IFirewall;->addRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 409
    .local v3, "newResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    array-length v8, v3

    new-array v4, v8, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 410
    .local v4, "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/4 v2, 0x0

    :goto_1
    array-length v8, v3

    if-ge v2, v8, :cond_2

    .line 411
    aget-object v8, v3, v2

    invoke-static {v8}, Lcom/sec/enterprise/firewall/FirewallResponse;->convertToOld(Lcom/samsung/android/knox/net/firewall/FirewallResponse;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v8

    aput-object v8, v4, v2

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 405
    .end local v3    # "newResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .end local v4    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 407
    return v9

    .line 413
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "newResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .restart local v4    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_2
    const/4 v5, 0x1

    .line 414
    .local v5, "ret":Z
    const/4 v2, 0x0

    .end local v5    # "ret":Z
    :goto_2
    array-length v8, v4

    if-ge v2, v8, :cond_4

    .line 415
    aget-object v8, v4, v2

    invoke-virtual {v8}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v8

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v8, v10}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_3
    and-int/2addr v5, v8

    .line 414
    .local v5, "ret":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 415
    .end local v5    # "ret":Z
    :cond_3
    const/4 v8, 0x1

    goto :goto_3

    .line 417
    :cond_4
    return v5

    .line 420
    .end local v3    # "newResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .end local v4    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_5
    return v9
.end method

.method private applyMarketIptablesRules(ILjava/lang/String;I)V
    .locals 17
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I

    .prologue
    .line 1502
    const/4 v13, 0x0

    .line 1503
    .local v13, "containerziedUid":I
    const/4 v15, 0x0

    .line 1505
    .local v15, "appUids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(Ljava/lang/String;I)[I

    move-result-object v15

    .line 1507
    .local v15, "appUids":[I
    if-nez v15, :cond_0

    .line 1508
    return-void

    .line 1510
    :cond_0
    const/4 v4, 0x0

    aget v13, v15, v4

    .line 1512
    if-gez v13, :cond_1

    .line 1513
    const-string/jumbo v4, "FirewallPolicy"

    const-string/jumbo v5, "Package name not found in the container"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    return-void

    .line 1517
    :cond_1
    new-instance v14, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v14}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 1518
    .local v14, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v4, 0x6

    invoke-virtual {v14, v4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 1520
    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string/jumbo v4, "filter"

    .line 1521
    const-string/jumbo v5, "samsung_market_policy"

    const-string/jumbo v6, "out"

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    .line 1522
    const-string/jumbo v11, "data"

    const/4 v12, 0x1

    .line 1520
    invoke-direct/range {v3 .. v14}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 1524
    .local v3, "marketRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v16

    .line 1525
    .local v16, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIpt6Commands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1526
    if-eqz v16, :cond_2

    .line 1527
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1501
    :cond_2
    return-void
.end method

.method private declared-synchronized applyNetworkForMarket(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 1437
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkForMarket(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1438
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createChainForMarket(I)V

    .line 1441
    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 1442
    .local v0, "marketPackage":Ljava/lang/String;
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyMarketIptablesRules(ILjava/lang/String;I)V

    .line 1441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1445
    .end local v0    # "marketPackage":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkForMarket(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v2

    if-nez v2, :cond_2

    .line 1446
    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1447
    .restart local v0    # "marketPackage":Ljava/lang/String;
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeMarketIptablesRules(ILjava/lang/String;I)V

    .line 1446
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1449
    .end local v0    # "marketPackage":Ljava/lang/String;
    :cond_1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeChainForMarket(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 1435
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized applyNetworkForMarketOnBoot()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 1454
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1455
    .local v0, "cvSelection":Landroid/content/ContentValues;
    const-string/jumbo v5, "MarketNetworkType"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1456
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "RESTRICTION"

    .line 1457
    const-string/jumbo v8, "adminUid"

    .line 1456
    invoke-virtual {v5, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 1459
    .local v3, "listAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "list$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1460
    .local v1, "list":I
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createChainForMarket(I)V

    .line 1463
    sget-object v7, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v4, v7, v5

    .line 1464
    .local v4, "marketPackage":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-direct {p0, v9, v4, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyMarketIptablesRules(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v1    # "list":I
    .end local v4    # "marketPackage":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    .line 1453
    return-void

    .end local v0    # "cvSelection":Landroid/content/ContentValues;
    .end local v2    # "list$iterator":Ljava/util/Iterator;
    .end local v3    # "listAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private applyProxyRules(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 18
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "action"    # I
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    .line 820
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v6, "applyProxyRules..."

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 822
    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 823
    .local v5, "uid":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 824
    .local v3, "containerId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v16

    .line 825
    .local v16, "enabledUid":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v4, "jsonRulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    move/from16 v0, v16

    if-ne v0, v5, :cond_1

    .line 829
    const/4 v7, 0x1

    .line 833
    .local v7, "enabled":Z
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 834
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 831
    .end local v7    # "enabled":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "enabled":Z
    goto :goto_0

    .line 833
    :cond_2
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 838
    .local v17, "jsonRule":Lorg/json/JSONObject;
    const-string/jumbo v2, "host"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    const-string/jumbo v2, "port"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 840
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    .end local v17    # "jsonRule":Lorg/json/JSONObject;
    :goto_1
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v6, p5

    .line 846
    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(ILjava/util/ArrayList;ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 848
    if-eqz v7, :cond_3

    move-object/from16 v8, p0

    move v9, v3

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move v14, v5

    .line 850
    invoke-direct/range {v8 .. v14}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    return v2

    .line 841
    :catch_0
    move-exception v15

    .line 842
    .local v15, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v6, "JSONException"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 853
    .end local v15    # "e":Lorg/json/JSONException;
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 856
    :cond_4
    const/4 v2, 0x0

    return v2

    .line 859
    :cond_5
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 862
    if-eqz v7, :cond_6

    move-object/from16 v8, p0

    move v9, v3

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move v14, v5

    .line 864
    invoke-direct/range {v8 .. v14}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    return v2

    .line 867
    :cond_6
    const/4 v2, 0x1

    return v2

    .line 870
    :cond_7
    const/4 v2, 0x0

    return v2

    .line 873
    :cond_8
    const/4 v2, 0x0

    return v2
.end method

.method private applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 15
    .param p1, "containerId"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "proxyType"    # Ljava/lang/String;
    .param p6, "adminUid"    # I

    .prologue
    .line 880
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v14, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 883
    .local v13, "appUids":[I
    sget-boolean v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v2, :cond_0

    .line 884
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains(I)V

    .line 887
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 888
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 887
    :cond_2
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 891
    const-string/jumbo v6, ""

    .line 892
    .local v6, "protocolPort":Ljava/lang/String;
    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 893
    const-string/jumbo v6, "80"

    .line 896
    :cond_3
    const-string/jumbo v2, "*"

    move/from16 v0, p6

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(Ljava/lang/String;I)[I

    move-result-object v13

    .line 897
    .local v13, "appUids":[I
    if-nez v13, :cond_4

    .line 898
    const/4 v2, 0x0

    return v2

    .line 900
    :cond_4
    new-instance v12, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v12}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 901
    .local v12, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 902
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setIpAddress(Ljava/lang/String;)Z

    .line 903
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setPort(Ljava/lang/String;)Z

    .line 904
    new-instance v1, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string/jumbo v2, "nat"

    .line 905
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "out"

    const-string/jumbo v5, ""

    .line 906
    const-string/jumbo v7, "tcp"

    const-string/jumbo v8, "remote"

    const-string/jumbo v9, ""

    .line 907
    const/4 v10, 0x0

    aget v11, v13, v10

    move/from16 v10, p4

    .line 904
    invoke-direct/range {v1 .. v12}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 908
    .local v1, "proxyRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v14

    .line 910
    if-eqz v14, :cond_5

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 911
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 914
    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method private changeRuleIp(Lcom/sec/enterprise/firewall/FirewallRule;Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule;
    .locals 3
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "IpAddress"    # Ljava/lang/String;

    .prologue
    .line 461
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallRule;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 463
    .local v0, "IpRule":Lcom/sec/enterprise/firewall/FirewallRule;
    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    :cond_0
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 465
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setDirection(Lcom/sec/enterprise/firewall/Firewall$Direction;)V

    .line 467
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 468
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setNetworkInterface(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)V

    .line 470
    :cond_2
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 471
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 473
    :cond_3
    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 474
    :cond_4
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 475
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortLocation(Lcom/sec/enterprise/firewall/Firewall$PortLocation;)V

    .line 477
    :cond_5
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 478
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 481
    :cond_6
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 482
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setProtocol(Lcom/sec/enterprise/firewall/Firewall$Protocol;)V

    .line 484
    :cond_7
    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 485
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setTargetIpAddress(Ljava/lang/String;)V

    .line 487
    :cond_8
    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 488
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule;->setTargetPortNumber(Ljava/lang/String;)V

    .line 490
    :cond_9
    invoke-virtual {v0, p2}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 491
    return-object v0
.end method

.method private checkDuplicateRule(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "rule"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 1211
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1212
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "adminUid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    const-string/jumbo v2, "rules =? "

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string/jumbo v2, "type =? "

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "FirewallTable"

    .line 1217
    const-string/jumbo v4, "rules"

    .line 1216
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    .line 1219
    .local v1, "returnValue":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1220
    const/4 v2, 0x1

    return v2

    .line 1222
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private cleanChain(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;

    .prologue
    .line 946
    if-nez p2, :cond_0

    .line 947
    return-void

    .line 949
    :cond_0
    if-nez p3, :cond_1

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/bin/ip6tables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 945
    :goto_0
    return-void

    .line 954
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private cleanInDb(IILjava/lang/String;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1117
    .local v0, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "adminUid"

    .line 1118
    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1117
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "FirewallTable"

    .line 1121
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1120
    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    .line 1122
    const/4 v1, 0x1

    return v1
.end method

.method private convertJsonToStringRule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 342
    const-string/jumbo v2, ""

    .line 344
    .local v2, "ruleStr":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 345
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "reroute"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 346
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "ruleType":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "originHost"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 349
    const-string/jumbo v5, "originPort"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 349
    const-string/jumbo v5, ";"

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 350
    const-string/jumbo v5, "destHost"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 350
    const-string/jumbo v5, ":"

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 350
    const-string/jumbo v5, "destPort"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    .end local v3    # "ruleType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 351
    .restart local v3    # "ruleType":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_0

    const-string/jumbo v4, "app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "originHost"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 353
    const-string/jumbo v5, "originPort"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 353
    const-string/jumbo v5, ";"

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 354
    const-string/jumbo v5, "destHost"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 354
    const-string/jumbo v5, ":"

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 354
    const-string/jumbo v5, "destPort"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 355
    const-string/jumbo v5, ";"

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 356
    const-string/jumbo v5, "packageName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 357
    const-string/jumbo v5, ";"

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 357
    const-string/jumbo v5, "networkInterface"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 359
    .end local v3    # "ruleType":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "allow"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "deny"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 360
    :cond_3
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    .restart local v3    # "ruleType":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string/jumbo v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "port"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 363
    const-string/jumbo v5, "portLocation"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 362
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 364
    :cond_4
    if-eqz v3, :cond_0

    const-string/jumbo v4, "app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    const-string/jumbo v4, "deny"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 367
    const-string/jumbo v5, ":"

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 368
    const-string/jumbo v5, "port"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 369
    const-string/jumbo v5, ";"

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 370
    const-string/jumbo v5, "portLocation"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 371
    const-string/jumbo v5, ";"

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 372
    const-string/jumbo v5, "packageName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 373
    const-string/jumbo v5, ";"

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 373
    const-string/jumbo v5, "networkInterface"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 374
    :cond_5
    const-string/jumbo v4, "allow"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "port"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 376
    const-string/jumbo v5, ";"

    .line 375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 376
    const-string/jumbo v5, "portLocation"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 376
    const-string/jumbo v5, ";"

    .line 375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 377
    const-string/jumbo v5, "networkInterface"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 381
    .end local v3    # "ruleType":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "port"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 383
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "FirewallPolicy"

    const-string/jumbo v5, "JSONException"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-object v6
.end method

.method private convertRule(Landroid/content/ContentValues;)Z
    .locals 7
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 319
    const-string/jumbo v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 320
    .local v3, "uid":I
    const-string/jumbo v4, "type"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v4, "rules"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "rule":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 323
    :cond_0
    return v5

    .line 325
    :cond_1
    const-string/jumbo v4, "allow"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "deny"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "reroute"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "redirect_exception"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 326
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->convertJsonToStringRule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "strRule":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 328
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRuletype(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addToNewFirewall(Ljava/lang/String;ILcom/sec/enterprise/firewall/FirewallRule$RuleType;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 329
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "FirewallTable"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 330
    return v6

    .line 332
    :cond_3
    return v5

    .line 335
    :cond_4
    return v5

    .line 338
    .end local v1    # "strRule":Ljava/lang/String;
    :cond_5
    return v6
.end method

.method private createChainForMarket(I)V
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 1471
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->marketChainsCreated:I

    if-nez v1, :cond_1

    .line 1472
    const-string/jumbo v1, "samsung_market_policy-output"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1473
    const-string/jumbo v1, "samsung_market_policy-output"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIp6tablesChain(ILjava/lang/String;)Ljava/lang/String;

    .line 1474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1475
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "/system/bin/iptables -I OUTPUT 1 -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    const-string/jumbo v1, "/system/bin/ip6tables -I OUTPUT 1 -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1478
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->marketChainsCreated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->marketChainsCreated:I

    .line 1470
    .end local v0    # "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->marketChainsCreated:I

    if-lez v1, :cond_0

    .line 1480
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->marketChainsCreated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->marketChainsCreated:I

    goto :goto_0
.end method

.method private createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1950
    const/4 v0, 0x0

    .line 1951
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1953
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    .line 1954
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1953
    invoke-virtual {v4, p1, p2, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1959
    .local v0, "context":Landroid/content/Context;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1961
    :goto_0
    return-object v0

    .line 1955
    .local v0, "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1956
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string/jumbo v4, "FirewallPolicy"

    const-string/jumbo v5, "Couldn\'t create user context"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1957
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1959
    .local v0, "context":Landroid/content/Context;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1958
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v0, "context":Landroid/content/Context;
    :catchall_0
    move-exception v4

    .line 1959
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1958
    throw v4
.end method

.method private createIptablesChains(I)V
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    const/4 v3, 0x3

    .line 960
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string/jumbo v2, "nat"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 961
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/system/bin/iptables -t nat -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 965
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    .line 958
    return-void
.end method

.method private createSingleIp6tablesChain(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "chain"    # Ljava/lang/String;

    .prologue
    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/bin/ip6tables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/bin/ip6tables -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createSingleIptablesChain(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;

    .prologue
    .line 969
    if-nez p3, :cond_0

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/bin/iptables -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 973
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private disableProxyOnIptables(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 918
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 919
    .local v9, "enabledUid":I
    const-string/jumbo v0, "FirewallPolicy"

    const-string/jumbo v2, "disableProxyOnIptables"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 921
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 922
    .local v6, "uid":I
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 923
    .local v1, "containerId":I
    if-ne v9, v6, :cond_0

    .line 925
    const-string/jumbo v0, "proxy"

    invoke-direct {p0, v1, v9, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 927
    .local v10, "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 928
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 929
    .local v11, "ruleUid":I
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 930
    .local v12, "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 931
    .local v7, "arg":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 932
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 933
    const-string/jumbo v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 935
    .local v8, "args":[Ljava/lang/String;
    aget-object v2, v8, v3

    aget-object v3, v8, v13

    .line 936
    const-string/jumbo v5, "proxy"

    const/4 v4, 0x2

    move-object v0, p0

    .line 935
    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 942
    .end local v7    # "arg":Ljava/lang/String;
    .end local v8    # "args":[Ljava/lang/String;
    .end local v10    # "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "ruleUid":I
    .end local v12    # "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return v13
.end method

.method private enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1288
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 1289
    const-string/jumbo v1, "android.permission.sec.MDM_FIREWALL"

    .line 1288
    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1290
    return-object p1
.end method

.method private getAllAdmins()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    .local v0, "allAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 1229
    .local v1, "columns":[Ljava/lang/String;
    const-string/jumbo v5, "adminUid"

    const/4 v6, 0x0

    aput-object v5, v1, v6

    .line 1230
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "ADMIN"

    .line 1231
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1230
    invoke-virtual {v5, v6, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1232
    .local v4, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1233
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "adminUid"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1236
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-object v0
.end method

.method private getAllUsers()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1240
    const/4 v2, 0x0

    .line 1241
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1242
    .local v0, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 1243
    .local v6, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v5, "userListList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "userInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1245
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1246
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1248
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1249
    return-object v5
.end method

.method private getAppUid(Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1340
    const/4 v1, -0x1

    .line 1341
    .local v1, "appUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1343
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1344
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    return v1

    .line 1345
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 1346
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package Name not found error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const/4 v4, -0x1

    return v4
.end method

.method private getAppUidForUser(Ljava/lang/String;I)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 1353
    const/4 v1, -0x1

    .line 1354
    .local v1, "appUid":I
    const/4 v2, 0x0

    .line 1356
    .local v2, "ctx":Landroid/content/Context;
    const-string/jumbo v5, "android"

    invoke-direct {p0, v5, v6, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createContextForSpecifiedUser(Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    .line 1357
    .local v2, "ctx":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1359
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1360
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1364
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v1

    .line 1361
    :catch_0
    move-exception v3

    .line 1362
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package Name not found error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAppUids(Ljava/lang/String;I)[I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1368
    const/4 v1, 0x0

    .line 1369
    .local v1, "appUids":[I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1371
    .local v2, "token":J
    const-string/jumbo v4, "*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1372
    :cond_0
    new-array v1, v6, [I

    .line 1373
    .local v1, "appUids":[I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    aput v4, v1, v5

    .line 1383
    .end local v1    # "appUids":[I
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1384
    return-object v1

    .line 1375
    .local v1, "appUids":[I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v0

    .line 1376
    .local v0, "appUid":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 1378
    :cond_3
    new-array v1, v6, [I

    .line 1379
    .local v1, "appUids":[I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUidForUser(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v5

    goto :goto_0
.end method

.method private getChain(I)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 1393
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1395
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 1394
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1397
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .locals 8
    .param p1, "processResult"    # Ljava/lang/Process;

    .prologue
    .line 1253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1254
    .local v4, "resultBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1256
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1259
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1261
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 1262
    .end local v2    # "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string/jumbo v5, "FirewallPolicy"

    const-string/jumbo v6, "getCommandResult : "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1265
    if-eqz v1, :cond_0

    .line 1266
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1272
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1265
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 1266
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v1, "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1268
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 1269
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "FirewallPolicy"

    const-string/jumbo v6, "IOException on getCommandResult"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1268
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 1269
    const-string/jumbo v5, "FirewallPolicy"

    const-string/jumbo v6, "IOException on getCommandResult"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1263
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1265
    :goto_4
    if-eqz v1, :cond_3

    .line 1266
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1263
    :cond_3
    :goto_5
    throw v5

    .line 1268
    :catch_3
    move-exception v0

    .line 1269
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "FirewallPolicy"

    const-string/jumbo v7, "IOException on getCommandResult"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1263
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1261
    .local v1, "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private getConnectivityManagerService()Landroid/net/IConnectivityManager;
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 164
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_0

    .line 166
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    .line 1278
    const-string/jumbo v1, "enterprise_policy"

    .line 1277
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getFirewallService()Lcom/samsung/android/knox/net/firewall/IFirewall;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mFirewallService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    if-nez v0, :cond_0

    .line 176
    const-string/jumbo v0, "firewall"

    .line 175
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/firewall/IFirewall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mFirewallService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mFirewallService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    return-object v0
.end method

.method private getLastUidForProxy(II)I
    .locals 11
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1167
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1168
    .local v4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 1169
    .local v3, "returnColumns":[Ljava/lang/String;
    const-string/jumbo v0, "adminUid"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 1171
    const-string/jumbo v0, "type =? "

    const-string/jumbo v1, "proxy"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    const-string/jumbo v0, "enabled =? "

    const-string/jumbo v1, "true"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "FirewallTable"

    move v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 1179
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1180
    const-string/jumbo v0, "adminUid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1181
    .local v8, "index":I
    new-instance v9, Ljava/lang/Long;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v9, "lUid":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1187
    .end local v8    # "index":I
    .end local v9    # "lUid":Ljava/lang/Long;
    .local v10, "uid":Ljava/lang/Integer;
    :goto_0
    if-eqz v7, :cond_0

    .line 1188
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1190
    :cond_0
    const-string/jumbo v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLastUidForProxy() uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1184
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_1
    const/4 v0, -0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .restart local v10    # "uid":Ljava/lang/Integer;
    goto :goto_0

    .line 1186
    .end local v10    # "uid":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    .line 1187
    if-eqz v7, :cond_2

    .line 1188
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1186
    :cond_2
    throw v0
.end method

.method private getNetworkAppsList(I)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1877
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1879
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1880
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1881
    .local v6, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v5, v8, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v2

    .line 1882
    .local v2, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1883
    if-eqz v2, :cond_1

    .line 1884
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1885
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v5, "android.permission.INTERNET"

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1886
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1890
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v4
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    .prologue
    .line 1993
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1994
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1995
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_0

    .line 1996
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    .line 1999
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mNetd:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1083
    const-string/jumbo v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRulesFromDb.. containerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1086
    .local v6, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1087
    .local v8, "userId":I
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 1089
    .local v5, "returnColumns":[Ljava/lang/String;
    const-string/jumbo v2, "rules"

    const/4 v3, 0x0

    aput-object v2, v5, v3

    .line 1090
    const-string/jumbo v2, "adminUid"

    const/4 v3, 0x1

    aput-object v2, v5, v3

    .line 1091
    const-string/jumbo v2, "type =? "

    move-object/from16 v0, p3

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    const-string/jumbo v2, "adminUid =? "

    .line 1093
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1092
    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "FirewallTable"

    .line 1095
    const/4 v7, 0x0

    move/from16 v4, p1

    .line 1094
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    .line 1096
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1098
    .local v9, "adminUid":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    .local v12, "resultset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    .line 1100
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1101
    .end local v9    # "adminUid":Ljava/lang/String;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1103
    const-string/jumbo v2, "rules"

    .line 1102
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1104
    .local v11, "jsonString":Ljava/lang/String;
    const-string/jumbo v2, "adminUid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1105
    .local v9, "adminUid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->convertJsonToStringRule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1106
    .local v13, "ruleStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1110
    .end local v9    # "adminUid":Ljava/lang/String;
    .end local v11    # "jsonString":Ljava/lang/String;
    .end local v13    # "ruleStr":Ljava/lang/String;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1112
    :cond_1
    return-object v12
.end method

.method private getRuletype(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string/jumbo v0, "allow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    return-object v0

    .line 309
    :cond_0
    const-string/jumbo v0, "deny"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    return-object v0

    .line 311
    :cond_1
    const-string/jumbo v0, "reroute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    return-object v0

    .line 314
    :cond_2
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/net/firewall/IFirewall;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    if-nez v0, :cond_0

    .line 497
    const-string/jumbo v0, "firewall"

    .line 496
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/firewall/IFirewall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    return-object v0
.end method

.method private getUidFromRule(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 1207
    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDomain(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 1754
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateDomain(Ljava/lang/String;)Z

    move-result v2

    .line 1755
    .local v2, "ret":Z
    const-string/jumbo v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1756
    .local v1, "hosts":[Ljava/lang/String;
    array-length v3, v1

    const/4 v5, 0x2

    if-gt v3, v5, :cond_1

    .line 1757
    array-length v6, v1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 1758
    .local v0, "hostPiece":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1759
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_1
    and-int/2addr v2, v3

    .line 1757
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 1759
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 1762
    .end local v0    # "hostPiece":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private isIpv6(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1975
    const-string/jumbo v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1976
    .local v1, "hosts":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 1977
    .local v2, "isIpv6":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateDomain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1978
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 1979
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->parseNumericAddressNoThrow(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1980
    const/4 v2, 0x0

    .line 1978
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1983
    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    return v2

    .line 1985
    :cond_2
    return v3
.end method

.method private loadHostnameMapFromDb(IZ)V
    .locals 9
    .param p1, "adminUid"    # I
    .param p2, "allAdmins"    # Z

    .prologue
    .line 2042
    const-string/jumbo v6, "FirewallPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FirewallPolicy.loadHostnameMapFromDb method - adminUid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2043
    const-string/jumbo v8, " allAdmins = "

    .line 2042
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2045
    .local v4, "selectionValues":Landroid/content/ContentValues;
    if-nez p2, :cond_0

    .line 2046
    const-string/jumbo v6, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2047
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mHostnameToIpListMapping:Landroid/util/SparseArray;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2048
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIpToHostnameMapping:Landroid/util/SparseArray;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2051
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2052
    const-string/jumbo v7, "FirewallHostnames"

    sget-object v8, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_HOSTNAMES_COLUMNS:[Ljava/lang/String;

    .line 2051
    invoke-virtual {v6, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 2055
    .local v5, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_4

    .line 2056
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2057
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "hostName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2058
    .local v2, "hostname":Ljava/lang/String;
    const-string/jumbo v6, "ipAddress"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2059
    .local v3, "ip":Ljava/lang/String;
    const-string/jumbo v6, "adminUid"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2061
    if-eqz p2, :cond_2

    .line 2062
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 2063
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mHostnameToIpListMapping:Landroid/util/SparseArray;

    .line 2064
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2063
    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2067
    :cond_1
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIpToHostnameMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 2068
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIpToHostnameMapping:Landroid/util/SparseArray;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2072
    :cond_2
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 2073
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 2074
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2073
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    :cond_3
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2078
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIpToHostnameMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2081
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cv$iterator":Ljava/util/Iterator;
    .end local v2    # "hostname":Ljava/lang/String;
    .end local v3    # "ip":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsHostnameHashMapCreated:Z

    .line 2040
    return-void
.end method

.method private static parseNumericAddressNoThrow(Ljava/lang/String;)Z
    .locals 7
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2004
    const-string/jumbo v3, "["

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "]"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2005
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2007
    :cond_0
    new-instance v1, Landroid/system/StructAddrinfo;

    invoke-direct {v1}, Landroid/system/StructAddrinfo;-><init>()V

    .line 2008
    .local v1, "hints":Landroid/system/StructAddrinfo;
    sget v3, Landroid/system/OsConstants;->AI_NUMERICHOST:I

    iput v3, v1, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 2009
    const/4 v0, 0x0

    .line 2011
    .local v0, "addresses":[Ljava/net/InetAddress;
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v1, v4}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2014
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    :goto_0
    if-eqz v0, :cond_1

    aget-object v3, v0, v5

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    .line 2015
    return v6

    .line 2018
    :cond_1
    return v5

    .line 2012
    .restart local v0    # "addresses":[Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/system/GaiException;
    goto :goto_0
.end method

.method private refreshProxyRules()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 710
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v2

    .line 712
    .local v2, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const-string/jumbo v5, "nat"

    const/4 v6, 0x0

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v0, 0x0

    .local v0, "containerId":I
    :goto_0
    const/4 v4, 0x2

    if-ge v0, v4, :cond_2

    .line 714
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 715
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v1

    .line 718
    .local v1, "enabledUid":I
    const/4 v4, -0x1

    if-eq v4, v1, :cond_0

    .line 721
    invoke-virtual {p0, v0, v7, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxyWithUid(IZI)Z

    .line 714
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 713
    .end local v1    # "enabledUid":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    .end local v3    # "x":I
    :cond_2
    return v7
.end method

.method private removeChainForMarket(I)V
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1486
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->marketChainsCreated:I

    if-ne v1, v2, :cond_1

    .line 1487
    const-string/jumbo v1, "samsung_market_policy-output"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(ILjava/lang/String;Ljava/lang/String;)V

    .line 1488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1489
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "/system/bin/iptables -D OUTPUT -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    const-string/jumbo v1, "/system/bin/ip6tables -D OUTPUT -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1492
    const-string/jumbo v1, "/system/bin/iptables -X samsung_market_policy-output"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1493
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->marketChainsCreated:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->marketChainsCreated:I

    .line 1485
    .end local v0    # "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 1494
    :cond_1
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->marketChainsCreated:I

    if-le v1, v2, :cond_0

    .line 1495
    iget v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->marketChainsCreated:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->marketChainsCreated:I

    goto :goto_0
.end method

.method private removeMarketIptablesRules(ILjava/lang/String;I)V
    .locals 17
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I

    .prologue
    .line 1535
    const/4 v13, 0x0

    .line 1536
    .local v13, "containerziedUid":I
    const/4 v15, 0x0

    .line 1538
    .local v15, "appUids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUids(Ljava/lang/String;I)[I

    move-result-object v15

    .line 1540
    .local v15, "appUids":[I
    if-nez v15, :cond_0

    .line 1541
    return-void

    .line 1543
    :cond_0
    const/4 v4, 0x0

    aget v13, v15, v4

    .line 1545
    if-gez v13, :cond_1

    .line 1546
    const-string/jumbo v4, "FirewallPolicy"

    const-string/jumbo v5, "Package name not found in the container"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    return-void

    .line 1550
    :cond_1
    new-instance v14, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v14}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 1551
    .local v14, "ruleAction":Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v4, 0x6

    invoke-virtual {v14, v4}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 1553
    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string/jumbo v4, "filter"

    .line 1554
    const-string/jumbo v5, "samsung_market_policy"

    const-string/jumbo v6, "out"

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    .line 1555
    const-string/jumbo v11, "data"

    const/4 v12, 0x2

    .line 1553
    invoke-direct/range {v3 .. v14}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 1557
    .local v3, "marketRule":Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v16

    .line 1558
    .local v16, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v16, :cond_2

    .line 1559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIpt6Commands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1560
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;)Ljava/util/List;

    .line 1564
    :goto_0
    const-string/jumbo v4, "FirewallPolicy"

    const-string/jumbo v5, "removeMarketIptablesRules - END"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    return-void

    .line 1562
    :cond_2
    const-string/jumbo v4, "FirewallPolicy"

    const-string/jumbo v5, "removeMarketIptablesRules() : createIptCommands has failed."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeRuleUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 1203
    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeRuleUid(Ljava/util/List;)Ljava/util/List;
    .locals 4
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
    .line 1195
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rule$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1197
    .local v1, "rule":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1199
    .end local v1    # "rule":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private removeRulesFromDb(ILjava/util/ArrayList;ILjava/lang/String;)Z
    .locals 9
    .param p1, "containerId"    # I
    .param p3, "uid"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const/4 v8, 0x1

    .line 1064
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1065
    .local v0, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1066
    .local v1, "ret":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "rule$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1067
    .local v2, "rule":Lorg/json/JSONObject;
    const-string/jumbo v4, "adminUid"

    .line 1068
    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 1067
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string/jumbo v4, "rules"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "FirewallTable"

    .line 1073
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1071
    invoke-virtual {v4, v5, p1, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    move-result v1

    .line 1074
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1076
    .end local v2    # "rule":Lorg/json/JSONObject;
    :cond_0
    if-ne v1, v8, :cond_1

    .line 1077
    return v8

    .line 1079
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private resolveRule(Ljava/lang/String;ILcom/sec/enterprise/firewall/FirewallRule$RuleType;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "ruleString"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sec/enterprise/firewall/FirewallRule$RuleType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/firewall/FirewallRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v10, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallRule;>;"
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 428
    .local v2, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    if-eqz p1, :cond_0

    .line 429
    const-string/jumbo v12, ":"

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 430
    .local v11, "splitted":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v1, v11, v12

    .line 435
    .local v1, "address":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v12, "*"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {v1}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateHostName(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 436
    const/4 v7, 0x0

    .line 437
    .local v7, "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getIpList(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/ArrayList;

    move-result-object v7

    .line 438
    .local v7, "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .local v4, "generalRule":Ljava/lang/StringBuilder;
    const-string/jumbo v12, "*"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_0
    array-length v12, v11

    if-ge v8, v12, :cond_1

    .line 441
    const-string/jumbo v12, ":"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v11, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 432
    .end local v1    # "address":Ljava/lang/String;
    .end local v4    # "generalRule":Ljava/lang/StringBuilder;
    .end local v7    # "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "j":I
    .end local v11    # "splitted":[Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    return-object v12

    .line 443
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v4    # "generalRule":Ljava/lang/StringBuilder;
    .restart local v7    # "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "j":I
    .restart local v11    # "splitted":[Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 444
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lcom/sec/enterprise/firewall/FirewallRuleTranslator;->translateRule(Ljava/lang/String;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v9

    .line 445
    .local v9, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "ip$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 446
    .local v5, "ip":Ljava/lang/String;
    invoke-direct {p0, v9, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->changeRuleIp(Lcom/sec/enterprise/firewall/FirewallRule;Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 455
    .end local v4    # "generalRule":Ljava/lang/StringBuilder;
    .end local v5    # "ip":Ljava/lang/String;
    .end local v6    # "ip$iterator":Ljava/util/Iterator;
    .end local v7    # "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "j":I
    .end local v9    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :catch_0
    move-exception v3

    .line 456
    .local v3, "e":Ljava/security/InvalidParameterException;
    const/4 v12, 0x0

    return-object v12

    .line 449
    .end local v3    # "e":Ljava/security/InvalidParameterException;
    .restart local v4    # "generalRule":Ljava/lang/StringBuilder;
    .restart local v7    # "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "j":I
    :cond_2
    const/4 v12, 0x0

    return-object v12

    .line 452
    .end local v4    # "generalRule":Ljava/lang/StringBuilder;
    .end local v7    # "ipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "j":I
    :cond_3
    move-object/from16 v0, p3

    invoke-static {p1, v0}, Lcom/sec/enterprise/firewall/FirewallRuleTranslator;->translateRule(Ljava/lang/String;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v9

    .line 453
    .restart local v9    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_4
    return-object v10
.end method

.method private runIptablesCommands(ILjava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 987
    .local p2, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private runIptablesCommands(ILjava/util/List;ZI)Ljava/util/List;
    .locals 4
    .param p1, "containerId"    # I
    .param p3, "isHostName"    # Z
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 992
    .local p2, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 993
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 994
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "command$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 995
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 998
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "command$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1002
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "isHostName"    # Z
    .param p3, "type"    # I

    .prologue
    .line 1007
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    .locals 8
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "isHostName"    # Z
    .param p3, "type"    # I
    .param p4, "pending"    # Z

    .prologue
    .line 1013
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .local v3, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1015
    .local v2, "commandArray":[Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 1016
    .local v5, "result":Ljava/lang/String;
    const/4 v6, 0x0

    array-length v7, v2

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v1, v2, v6

    .line 1017
    .local v1, "commandArg":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1019
    .end local v1    # "commandArg":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    if-eqz v6, :cond_2

    .line 1020
    :cond_1
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1021
    .local v4, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1022
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "command"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string/jumbo v6, "type"

    invoke-virtual {v0, v6, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1024
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1025
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandsHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    if-eqz v6, :cond_2

    .line 1026
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandsHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1028
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    return-object v5
.end method

.method private setProxyRulesEnableOnDb(IZI)Z
    .locals 11
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "uid"    # I

    .prologue
    const/4 v10, 0x0

    .line 1126
    const-string/jumbo v7, "FirewallPolicy"

    const-string/jumbo v8, "setProxyRulesEnableOnDb..."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1128
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1129
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "adminUid =? "

    .line 1130
    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1129
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    const-string/jumbo v7, "type =? "

    const-string/jumbo v8, "proxy"

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    const-string/jumbo v7, "enabled"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1138
    .local v4, "timestamp":J
    const-string/jumbo v7, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1139
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "FirewallTable"

    invoke-virtual {v7, v8, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v6

    .line 1140
    .local v6, "updated":I
    if-lez v6, :cond_0

    .line 1142
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1143
    .local v1, "helpCv":Landroid/content/ContentValues;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1144
    .local v2, "helpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "enabled"

    const-string/jumbo v8, "false"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "adminUid IN (SELECT adminUid  from admin where containerId=? AND userID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1148
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1146
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1148
    const-string/jumbo v8, ")"

    .line 1146
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1149
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1145
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    const-string/jumbo v7, "adminUid !=? "

    .line 1152
    invoke-static {p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1151
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-string/jumbo v7, "enabled =? "

    const-string/jumbo v8, "true"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    const-string/jumbo v7, "type =? "

    const-string/jumbo v8, "proxy"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "FirewallTable"

    invoke-virtual {v7, v8, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    .line 1162
    const/4 v7, 0x1

    return v7

    .line 1160
    .end local v1    # "helpCv":Landroid/content/ContentValues;
    .end local v2    # "helpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return v10
.end method

.method private updateHostnameIps(Ljava/lang/String;I)V
    .locals 11
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "adminUid"    # I

    .prologue
    const/4 v6, 0x0

    .line 2088
    const-string/jumbo v7, "FirewallPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "FirewallPolicy.updateHostnameIps method - adminUid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2089
    const-string/jumbo v9, " hostname = "

    .line 2088
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLocker:Ljava/lang/Object;

    monitor-enter v7

    .line 2091
    :try_start_0
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    .line 2092
    .local v2, "hostResolver":Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2094
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->isFinished()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2095
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLocker:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2097
    :catch_0
    move-exception v1

    .line 2098
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v7

    .line 2102
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2103
    .local v5, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v7, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2104
    const-string/jumbo v7, "hostName"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "FirewallHostnames"

    invoke-virtual {v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 2107
    sget-object v7, Lcom/android/server/enterprise/firewall/FirewallPolicy;->allIpsInfo:[Ljava/net/InetAddress;

    if-eqz v7, :cond_2

    .line 2108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2109
    .local v3, "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2110
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2111
    const-string/jumbo v7, "hostName"

    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    sget-object v8, Lcom/android/server/enterprise/firewall/FirewallPolicy;->allIpsInfo:[Ljava/net/InetAddress;

    array-length v9, v8

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v4, v8, v7

    .line 2113
    .local v4, "ipinfo":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2114
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIpToHostnameMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    const-string/jumbo v6, "ipAddress"

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "FirewallHostnames"

    invoke-virtual {v6, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2112
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 2090
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "hostResolver":Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
    .end local v3    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "ipinfo":Ljava/net/InetAddress;
    .end local v5    # "selectionValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2118
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "hostResolver":Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
    .restart local v3    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "selectionValues":Landroid/content/ContentValues;
    :cond_1
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v3    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private validateDomain(Ljava/lang/String;)Z
    .locals 14
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x2d

    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 1682
    if-nez p1, :cond_0

    .line 1683
    return v8

    .line 1687
    :cond_0
    const-string/jumbo v7, "*"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1688
    return v12

    .line 1693
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0xff

    if-le v7, v9, :cond_2

    .line 1694
    return v8

    .line 1698
    :cond_2
    const-string/jumbo v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1703
    .local v4, "labels":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1704
    .local v2, "isHostnameCandidate":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    aget-object v7, v4, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 1705
    aget-object v7, v4, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1706
    .local v0, "ch":C
    const/16 v7, 0x61

    if-lt v0, v7, :cond_5

    const/16 v7, 0x7a

    if-gt v0, v7, :cond_5

    .line 1707
    :cond_3
    const/4 v2, 0x1

    .line 1713
    .end local v0    # "ch":C
    :cond_4
    if-nez v2, :cond_7

    .line 1714
    return v8

    .line 1706
    .restart local v0    # "ch":C
    :cond_5
    const/16 v7, 0x41

    if-lt v0, v7, :cond_6

    const/16 v7, 0x5a

    if-le v0, v7, :cond_3

    .line 1704
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1717
    .end local v0    # "ch":C
    :cond_7
    const/4 v5, 0x0

    .line 1718
    .local v5, "numDots":I
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_9

    .line 1719
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x2e

    if-ne v7, v9, :cond_8

    .line 1720
    add-int/lit8 v5, v5, 0x1

    .line 1718
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1724
    :cond_9
    array-length v7, v4

    if-lt v5, v7, :cond_a

    .line 1725
    return v8

    .line 1728
    :cond_a
    array-length v9, v4

    move v7, v8

    :goto_2
    if-ge v7, v9, :cond_c

    aget-object v3, v4, v7

    .line 1729
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x3f

    if-le v10, v11, :cond_b

    .line 1730
    return v8

    .line 1728
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1738
    .end local v3    # "label":Ljava/lang/String;
    :cond_c
    const-string/jumbo v6, "^[A-Za-z0-9-]+$"

    .line 1739
    .local v6, "regex":Ljava/lang/String;
    array-length v9, v4

    move v7, v8

    :goto_3
    if-ge v7, v9, :cond_f

    aget-object v3, v4, v7

    .line 1740
    .restart local v3    # "label":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_e

    .line 1742
    :cond_d
    return v8

    .line 1741
    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v13, :cond_d

    .line 1739
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1746
    .end local v3    # "label":Ljava/lang/String;
    :cond_f
    return v12
.end method

.method private validateHostAndPort(ILjava/lang/String;)Z
    .locals 21
    .param p1, "type"    # I
    .param p2, "rule"    # Ljava/lang/String;

    .prologue
    .line 1766
    const-string/jumbo v13, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))|\\*"

    .line 1767
    .local v13, "regexPort":Ljava/lang/String;
    const-string/jumbo v14, "^(remote|local|\\*)$"

    .line 1769
    .local v14, "regexPortLocation":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1781
    :goto_0
    const/4 v5, 0x0

    .local v5, "hosts":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1782
    .local v12, "ports":[Ljava/lang/String;
    const/16 v18, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1783
    .local v7, "index":I
    const/4 v8, 0x0

    .line 1785
    .local v8, "isHostname":Z
    if-lez v7, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_f

    .line 1786
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1787
    .local v2, "allHosts":Ljava/lang/String;
    const-string/jumbo v18, "["

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string/jumbo v18, "]"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1788
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1790
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isDomain(Ljava/lang/String;I)Z

    move-result v8

    .line 1798
    .local v8, "isHostname":Z
    if-nez v8, :cond_8

    .line 1799
    const-string/jumbo v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1801
    .local v5, "hosts":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1802
    const/16 v18, 0x0

    aget-object v18, v5, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIpv6(Ljava/lang/String;)Z

    move-result v16

    .line 1803
    .local v16, "v6Check1":Z
    const/16 v18, 0x1

    aget-object v18, v5, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIpv6(Ljava/lang/String;)Z

    move-result v17

    .line 1804
    .local v17, "v6Check2":Z
    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 1805
    const/16 v18, 0x0

    return v18

    .line 1772
    .end local v2    # "allHosts":Ljava/lang/String;
    .end local v5    # "hosts":[Ljava/lang/String;
    .end local v7    # "index":I
    .end local v8    # "isHostname":Z
    .end local v12    # "ports":[Ljava/lang/String;
    .end local v16    # "v6Check1":Z
    .end local v17    # "v6Check2":Z
    :pswitch_0
    const-string/jumbo v13, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))"

    goto/16 :goto_0

    .line 1775
    :pswitch_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    .line 1776
    .local v15, "ruleMatches":Z
    const-string/jumbo v18, "TAG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "LOCATION: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    return v15

    .line 1808
    .end local v15    # "ruleMatches":Z
    .restart local v2    # "allHosts":Ljava/lang/String;
    .restart local v5    # "hosts":[Ljava/lang/String;
    .restart local v7    # "index":I
    .restart local v8    # "isHostname":Z
    .restart local v12    # "ports":[Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    .line 1809
    .local v10, "numHyphen":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 1810
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1811
    add-int/lit8 v10, v10, 0x1

    .line 1809
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1814
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-gt v10, v0, :cond_4

    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 1816
    :cond_4
    const-string/jumbo v18, "TAG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    const/16 v18, 0x0

    return v18

    .line 1815
    :cond_5
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 1828
    .end local v6    # "i":I
    .end local v10    # "numHyphen":I
    :cond_6
    add-int/lit8 v18, v7, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1829
    .local v3, "allPorts":Ljava/lang/String;
    const-string/jumbo v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1830
    .local v12, "ports":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1831
    .restart local v10    # "numHyphen":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_a

    .line 1832
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 1833
    add-int/lit8 v10, v10, 0x1

    .line 1831
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1820
    .end local v3    # "allPorts":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v10    # "numHyphen":I
    .local v5, "hosts":[Ljava/lang/String;
    .local v12, "ports":[Ljava/lang/String;
    :cond_8
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    .line 1821
    .local v5, "hosts":[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v2, v5, v18

    .line 1822
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 1823
    const/16 v18, 0x7

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1824
    :cond_9
    const/16 v18, 0x0

    return v18

    .line 1836
    .restart local v3    # "allPorts":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v10    # "numHyphen":I
    .local v12, "ports":[Ljava/lang/String;
    :cond_a
    if-nez v12, :cond_b

    .line 1837
    const-string/jumbo v18, "TAG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const/16 v18, 0x0

    return v18

    .line 1840
    :cond_b
    const/16 v18, 0x1

    move/from16 v0, v18

    if-gt v10, v0, :cond_c

    array-length v0, v12

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    .line 1842
    :cond_c
    const-string/jumbo v18, "TAG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const/16 v18, 0x0

    return v18

    .line 1841
    :cond_d
    array-length v0, v12

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 1850
    :cond_e
    if-eqz v5, :cond_11

    .line 1851
    if-nez v8, :cond_12

    .line 1852
    const/16 v18, 0x0

    array-length v0, v5

    move/from16 v19, v0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    aget-object v4, v5, v18

    .line 1853
    .local v4, "host":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;I)Z

    move-result v9

    .line 1854
    .local v9, "isValid":Z
    if-nez v9, :cond_10

    .line 1855
    const-string/jumbo v18, "TAG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    const/16 v18, 0x0

    return v18

    .line 1846
    .end local v2    # "allHosts":Ljava/lang/String;
    .end local v3    # "allPorts":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v9    # "isValid":Z
    .end local v10    # "numHyphen":I
    .local v5, "hosts":[Ljava/lang/String;
    .local v8, "isHostname":Z
    .local v12, "ports":[Ljava/lang/String;
    :cond_f
    const-string/jumbo v18, "TAG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    const/16 v18, 0x0

    return v18

    .line 1852
    .restart local v2    # "allHosts":Ljava/lang/String;
    .restart local v3    # "allPorts":Ljava/lang/String;
    .restart local v4    # "host":Ljava/lang/String;
    .local v5, "hosts":[Ljava/lang/String;
    .restart local v6    # "i":I
    .local v8, "isHostname":Z
    .restart local v9    # "isValid":Z
    .restart local v10    # "numHyphen":I
    .local v12, "ports":[Ljava/lang/String;
    :cond_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 1861
    .end local v4    # "host":Ljava/lang/String;
    .end local v9    # "isValid":Z
    :cond_11
    const-string/jumbo v18, "TAG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    const/16 v18, 0x0

    return v18

    .line 1864
    :cond_12
    const/16 v18, 0x0

    array-length v0, v12

    move/from16 v19, v0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    aget-object v11, v12, v18

    .line 1865
    .local v11, "port":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_13

    .line 1866
    const-string/jumbo v18, "TAG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    const/16 v18, 0x0

    return v18

    .line 1864
    :cond_13
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1871
    .end local v11    # "port":Ljava/lang/String;
    :cond_14
    const-string/jumbo v18, "TAG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const/16 v18, 0x1

    return v18

    .line 1769
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private validateIp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 1966
    if-eqz p1, :cond_1

    .line 1967
    sget-object v1, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1968
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIpv6(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1970
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private validateIp(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1667
    if-nez p1, :cond_0

    .line 1668
    const/4 v1, 0x0

    return v1

    .line 1671
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateIp(Ljava/lang/String;)Z

    move-result v0

    .line 1674
    .local v0, "ret":Z
    const/4 v1, 0x7

    if-ne p2, v1, :cond_1

    .line 1675
    const-string/jumbo v1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1678
    :cond_1
    return v0
.end method

.method private validateNetworkInterface(Ljava/lang/String;)Z
    .locals 6
    .param p1, "interfaceType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1909
    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->INTERFACE_TYPES:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 1910
    .local v0, "interType":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1911
    const/4 v1, 0x1

    return v1

    .line 1909
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1914
    .end local v0    # "interType":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private validatePackageName(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1894
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkAppsList(I)Ljava/util/List;

    move-result-object v2

    .line 1897
    .local v2, "netAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "*"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1898
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "netApp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1899
    .local v0, "netApp":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1900
    const/4 v3, 0x1

    return v3

    .line 1903
    .end local v0    # "netApp":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private validateParameters(ILjava/util/List;I)Z
    .locals 12
    .param p1, "type"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1597
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1598
    :cond_0
    return v7

    .line 1600
    :cond_1
    const/4 v2, 0x1

    .line 1602
    .local v2, "finalResult":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "finalResult":Z
    .local v5, "rule$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1603
    .local v4, "rule":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1604
    return v7

    .line 1606
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1660
    :pswitch_0
    return v7

    .line 1608
    :pswitch_1
    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1609
    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1610
    .local v3, "rerouteArgs":[Ljava/lang/String;
    array-length v6, v3

    if-ne v6, v9, :cond_3

    .line 1611
    aget-object v6, v3, v7

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 1613
    .local v2, "finalResult":Z
    aget-object v6, v3, v8

    .line 1612
    invoke-direct {p0, v11, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    goto :goto_0

    .line 1614
    .end local v2    # "finalResult":Z
    :cond_3
    array-length v6, v3

    if-ne v6, v10, :cond_4

    .line 1615
    aget-object v6, v3, v7

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 1617
    .restart local v2    # "finalResult":Z
    aget-object v6, v3, v8

    .line 1616
    invoke-direct {p0, v11, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 1618
    aget-object v6, v3, v9

    invoke-direct {p0, v6, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validatePackageName(Ljava/lang/String;I)Z

    move-result v6

    and-int/2addr v2, v6

    .line 1619
    aget-object v6, v3, v11

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    goto :goto_0

    .line 1621
    .end local v2    # "finalResult":Z
    :cond_4
    return v7

    .line 1624
    .end local v3    # "rerouteArgs":[Ljava/lang/String;
    :cond_5
    return v7

    .line 1628
    :pswitch_2
    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1629
    .local v0, "allowArgs":[Ljava/lang/String;
    array-length v6, v0

    if-ne v6, v9, :cond_6

    .line 1630
    aget-object v6, v0, v7

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 1631
    .restart local v2    # "finalResult":Z
    aget-object v6, v0, v8

    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    goto :goto_0

    .line 1632
    .end local v2    # "finalResult":Z
    :cond_6
    array-length v6, v0

    if-ne v6, v11, :cond_7

    .line 1633
    aget-object v6, v0, v7

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 1634
    .restart local v2    # "finalResult":Z
    aget-object v6, v0, v8

    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 1635
    aget-object v6, v0, v9

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1637
    .end local v2    # "finalResult":Z
    :cond_7
    return v7

    .line 1642
    .end local v0    # "allowArgs":[Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1643
    .local v1, "denyArgs":[Ljava/lang/String;
    array-length v6, v1

    if-ne v6, v9, :cond_8

    .line 1644
    aget-object v6, v1, v7

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 1645
    .restart local v2    # "finalResult":Z
    aget-object v6, v1, v8

    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1646
    .end local v2    # "finalResult":Z
    :cond_8
    array-length v6, v1

    if-ne v6, v10, :cond_9

    .line 1647
    aget-object v6, v1, v7

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 1648
    .restart local v2    # "finalResult":Z
    aget-object v6, v1, v8

    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 1649
    aget-object v6, v1, v9

    invoke-direct {p0, v6, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validatePackageName(Ljava/lang/String;I)Z

    move-result v6

    and-int/2addr v2, v6

    .line 1650
    aget-object v6, v1, v11

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    goto/16 :goto_0

    .line 1652
    .end local v2    # "finalResult":Z
    :cond_9
    return v7

    .line 1657
    .end local v1    # "denyArgs":[Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 1658
    .restart local v2    # "finalResult":Z
    goto/16 :goto_0

    .line 1663
    .end local v2    # "finalResult":Z
    .end local v4    # "rule":Ljava/lang/String;
    :cond_a
    return v2

    .line 1606
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public cleanProxyRules(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # I

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 684
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 685
    .local v4, "uid":I
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 686
    .local v1, "containerId":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 687
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 690
    :cond_0
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v2

    .line 692
    .local v2, "enabledUid":I
    const-string/jumbo v3, ""

    .line 693
    .local v3, "typeStr":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 699
    const/4 v5, 0x0

    return v5

    .line 695
    :pswitch_0
    sget-object v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v0, v5, v6

    .line 696
    .local v0, "chain":Ljava/lang/String;
    const-string/jumbo v3, "proxy"

    .line 702
    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanInDb(IILjava/lang/String;)Z

    .line 703
    if-ne v2, v4, :cond_1

    .line 704
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z

    .line 706
    :cond_1
    const/4 v5, 0x1

    return v5

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public enableProxy(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 729
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableProxy(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 17
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "status"    # Z
    .param p3, "boot"    # Z

    .prologue
    .line 742
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 743
    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 744
    .local v15, "uid":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 745
    .local v3, "containerId":I
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 746
    .local v16, "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v12

    .line 748
    .local v12, "proxyEnabledUid":I
    if-eqz p2, :cond_0

    .line 749
    if-eq v12, v15, :cond_1

    const/4 v2, -0x1

    if-eq v12, v2, :cond_1

    .line 750
    :goto_0
    if-eqz p3, :cond_2

    .line 755
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(IZI)Z

    move-result v2

    if-nez v2, :cond_3

    .line 756
    const/4 v2, 0x0

    return v2

    .line 749
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isEnabledProxy(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 751
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 759
    :cond_3
    if-eqz p2, :cond_a

    .line 762
    const/4 v2, -0x1

    if-ne v12, v2, :cond_4

    if-nez p2, :cond_5

    :cond_4
    if-ne v12, v15, :cond_8

    .line 764
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(IZI)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 766
    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 769
    .local v13, "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 770
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUidFromRule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 772
    .local v8, "ruleUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 774
    .local v14, "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 775
    .local v9, "arg":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 776
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 777
    const-string/jumbo v2, ":"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 779
    .local v10, "args":[Ljava/lang/String;
    if-nez p3, :cond_6

    .line 781
    const/4 v2, 0x0

    aget-object v4, v10, v2

    const/4 v2, 0x1

    aget-object v5, v10, v2

    .line 782
    const-string/jumbo v7, "proxy"

    const/4 v6, 0x2

    move-object/from16 v2, p0

    .line 781
    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 784
    :cond_6
    const/4 v2, 0x0

    aget-object v4, v10, v2

    const/4 v2, 0x1

    aget-object v5, v10, v2

    .line 785
    const-string/jumbo v7, "proxy"

    const/4 v6, 0x1

    move-object/from16 v2, p0

    .line 784
    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 814
    .end local v8    # "ruleUid":I
    .end local v9    # "arg":Ljava/lang/String;
    .end local v10    # "args":[Ljava/lang/String;
    .end local v13    # "proxyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "tProxy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 762
    :cond_8
    if-nez p3, :cond_5

    .line 794
    const/4 v2, 0x1

    return v2

    .line 791
    :cond_9
    const/4 v2, 0x0

    return v2

    .line 798
    :cond_a
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v4, " Disabling proxy"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v11

    .line 800
    .local v11, "enabledUid":I
    const-string/jumbo v2, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Disabling proxy enabledUid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(IZI)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 803
    const-string/jumbo v2, "FirewallPolicy"

    const-string/jumbo v4, " setProxyRulesEnableOnDb true "

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    if-ne v12, v15, :cond_7

    .line 806
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->disableProxyOnIptables(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z

    goto :goto_1

    .line 811
    :cond_b
    const/4 v2, 0x0

    return v2
.end method

.method public enableProxyWithUid(IZI)Z
    .locals 2
    .param p1, "containerId"    # I
    .param p2, "status"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 733
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p3, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public enableProxyWithUid(ZI)Z
    .locals 2
    .param p1, "status"    # Z
    .param p2, "uid"    # I

    .prologue
    .line 737
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method public getHostnameFromIp(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 2124
    iget v0, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2126
    .local v0, "adminUid":I
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIpToHostnameMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2127
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->loadHostnameMapFromDb(IZ)V

    .line 2130
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIpToHostnameMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getIpList(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2027
    iget v0, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2029
    .local v0, "adminUid":I
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2030
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->loadHostnameMapFromDb(IZ)V

    .line 2033
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2034
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->updateHostnameIps(Ljava/lang/String;I)V

    .line 2037
    :cond_1
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mHostnameToIpListMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public bridge synthetic getIpList(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2026
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getIpList(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getNetworkForMarket(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v8, 0x1

    monitor-enter p0

    .line 1569
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 1571
    const/4 v2, 0x0

    .line 1573
    .local v2, "networkType":I
    if-eqz p2, :cond_1

    .line 1574
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1575
    const-string/jumbo v5, "RESTRICTION"

    const-string/jumbo v6, "MarketNetworkType"

    .line 1576
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1574
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1577
    .local v1, "fromDb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1578
    const/4 v2, 0x1

    .line 1589
    .end local v1    # "fromDb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    if-ne v2, v8, :cond_2

    monitor-exit p0

    .line 1590
    return v8

    .line 1581
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1582
    const-string/jumbo v6, "RESTRICTION"

    const-string/jumbo v7, "MarketNetworkType"

    .line 1581
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :try_start_3
    const-string/jumbo v3, "FirewallPolicy"

    const-string/jumbo v4, "No Admin data was found - Network for Market Policy"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1586
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 1592
    .end local v0    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :cond_2
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .end local v2    # "networkType":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getRules(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ruleAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2161
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2162
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2163
    .local v0, "containerId":I
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2165
    .local v1, "uid":I
    packed-switch p2, :pswitch_data_0

    .line 2169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 2167
    :pswitch_0
    const-string/jumbo v2, "proxy"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRuleUid(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2165
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public isEnabledProxy(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 641
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    const-string/jumbo v1, "FirewallPolicy"

    const-string/jumbo v2, " isEnabledProxy calls from Profile return default value"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return v4

    .line 645
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 646
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 647
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 646
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v0

    .line 648
    .local v0, "enabledUid":I
    const-string/jumbo v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " isEnabledProxy cxtInfo.mCallerUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "enabledUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_1

    .line 651
    const/4 v1, 0x1

    return v1

    .line 653
    :cond_1
    return v4
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 2172
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1329
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1335
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 1336
    .local v0, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Lcom/samsung/android/knox/ContextInfo;)V

    .line 1334
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1933
    const-string/jumbo v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FirewallPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1945
    const-string/jumbo v0, "FirewallPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FirewallPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Lcom/samsung/android/knox/ContextInfo;)V

    .line 1944
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1927
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 1928
    .local v0, "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 1926
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1938
    const-string/jumbo v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FirewallPolicy.onPreContainerRemoval("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 1940
    .local v0, "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 1937
    return-void
.end method

.method public performMigration()V
    .locals 17

    .prologue
    .line 258
    sget-boolean v13, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mMigrationNeeded:Z

    if-eqz v13, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 260
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v13}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 261
    .local v10, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 262
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 263
    .local v3, "adminsEnabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "FirewallTable"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v12

    .line 264
    .local v12, "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v11, 0x1

    .line 265
    .local v11, "ret":Z
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 297
    :cond_0
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mMigrationNeeded:Z

    .line 257
    .end local v3    # "adminsEnabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "netInfo":Landroid/net/NetworkInfo;
    .end local v11    # "ret":Z
    .end local v12    # "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_0
    return-void

    .line 266
    .restart local v3    # "adminsEnabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v10    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v11    # "ret":Z
    .restart local v12    # "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v11    # "ret":Z
    .local v5, "cv$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 270
    .local v4, "cv":Landroid/content/ContentValues;
    const-string/jumbo v13, "timestamp"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v13, "id"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 272
    const-string/jumbo v13, "adminUid"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 273
    .local v1, "adminUid":I
    const-string/jumbo v13, "enabled"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 274
    .local v9, "isEnabled":Z
    if-eqz v9, :cond_3

    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->convertRule(Landroid/content/ContentValues;)Z

    move-result v13

    and-int/2addr v11, v13

    .local v11, "ret":Z
    goto :goto_1

    .line 282
    .end local v1    # "adminUid":I
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v9    # "isEnabled":Z
    .end local v11    # "ret":Z
    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "adminUid$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 283
    .restart local v1    # "adminUid":I
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v6, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 284
    .local v6, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    if-eqz v13, :cond_5

    .line 286
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    const/4 v14, 0x1

    invoke-interface {v13, v6, v14}, Lcom/samsung/android/knox/net/firewall/IFirewall;->enableFirewall(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 287
    :catch_0
    move-exception v7

    .line 288
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v11, 0x0

    .line 289
    .local v11, "ret":Z
    :try_start_2
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 300
    .end local v1    # "adminUid":I
    .end local v2    # "adminUid$iterator":Ljava/util/Iterator;
    .end local v3    # "adminsEnabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v5    # "cv$iterator":Ljava/util/Iterator;
    .end local v6    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v10    # "netInfo":Landroid/net/NetworkInfo;
    .end local v11    # "ret":Z
    .end local v12    # "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_1
    move-exception v8

    .line 301
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "FirewallPolicy"

    const-string/jumbo v14, "checkOnline exception"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "adminUid$iterator":Ljava/util/Iterator;
    .restart local v3    # "adminsEnabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v5    # "cv$iterator":Ljava/util/Iterator;
    .restart local v10    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v12    # "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_6
    if-eqz v11, :cond_1

    .line 294
    const/4 v13, 0x0

    :try_start_3
    sput-boolean v13, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mMigrationNeeded:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public declared-synchronized setNetworkForMarket(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "networkType"    # I

    .prologue
    const/4 v5, 0x1

    monitor-enter p0

    .line 1406
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkForMarket(Lcom/samsung/android/knox/ContextInfo;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1410
    .local v6, "actualNetwork":I
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1411
    const-string/jumbo v3, "RESTRICTION"

    const-string/jumbo v4, "MarketNetworkType"

    .line 1410
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 1416
    :goto_0
    if-ne v6, p2, :cond_0

    monitor-exit p0

    .line 1417
    return v5

    .line 1412
    :catch_0
    move-exception v7

    .line 1413
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "FirewallPolicy"

    const-string/jumbo v1, "setNetworkForMarket - exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v6    # "actualNetwork":I
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1420
    .restart local v6    # "actualNetwork":I
    :cond_0
    const/4 v8, 0x0

    .line 1421
    .local v8, "result":Z
    if-eq p2, v5, :cond_1

    if-nez p2, :cond_2

    .line 1424
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1425
    const-string/jumbo v3, "RESTRICTION"

    .line 1426
    const-string/jumbo v4, "MarketNetworkType"

    move v5, p2

    .line 1424
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 1429
    .local v8, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v8    # "result":Z
    :cond_2
    monitor-exit p0

    .line 1431
    return v8
.end method

.method public setProxyRules(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 657
    const-string/jumbo v0, "FirewallPolicy"

    const-string/jumbo v1, "setProxyRules..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 659
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 660
    .local v9, "uid":I
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 661
    .local v6, "containerId":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v8, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v2, v8, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    return v10

    .line 666
    :cond_0
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy(II)I

    move-result v7

    .line 669
    .local v7, "enabledUid":I
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    const-string/jumbo v5, "proxy"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRules(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    if-ne v7, v9, :cond_1

    .line 673
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 675
    :cond_1
    return v4

    .line 678
    :cond_2
    return v10
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1920
    return-void
.end method

.method public updateHostnameMap()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 504
    sget-boolean v9, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsHostnameHashMapCreated:Z

    if-nez v9, :cond_0

    .line 505
    const/4 v9, -0x1

    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->loadHostnameMapFromDb(IZ)V

    .line 507
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 509
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v9}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 510
    .local v6, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 511
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    .line 512
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .line 514
    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "adminUid$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 515
    .local v1, "adminUid":I
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 516
    .local v3, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 517
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mFirewallService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    invoke-interface {v9, v3}, Lcom/samsung/android/knox/net/firewall/IFirewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 521
    :cond_2
    const/4 v7, 0x0

    .line 522
    .local v7, "newRules":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    const/4 v8, 0x0

    .line 523
    .local v8, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 524
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 525
    const/16 v10, 0xf

    const/4 v11, 0x0

    .line 524
    invoke-interface {v9, v3, v10, v11}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v7

    .line 526
    .local v7, "newRules":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v7

    if-ge v5, v9, :cond_1

    .line 528
    aget-object v9, v7, v5

    .line 527
    invoke-static {v9}, Lcom/sec/enterprise/firewall/FirewallRule;->convertToOld(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v9

    aput-object v9, v8, v5

    .line 526
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 625
    .end local v0    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "adminUid":I
    .end local v2    # "adminUid$iterator":Ljava/util/Iterator;
    .end local v3    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v5    # "i":I
    .end local v7    # "newRules":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .end local v8    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v6    # "netInfo":Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    return-void

    .line 627
    :catch_0
    move-exception v4

    .line 628
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "FirewallPolicy"

    const-string/jumbo v10, "checkOnline exception"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iput-boolean v12, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    goto :goto_1

    .line 632
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    iput-boolean v12, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    goto :goto_1
.end method
