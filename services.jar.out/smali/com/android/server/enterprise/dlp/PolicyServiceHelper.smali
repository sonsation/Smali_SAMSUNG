.class public Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
.super Ljava/lang/Object;
.source "PolicyServiceHelper.java"


# static fields
.field private static final ContentProviderRestrictingApps:[Ljava/lang/String;

.field protected static final DELIMITER:Ljava/lang/String; = ","

.field protected static final EMP_DLP_CMD_NOTIFY_DLP_FILE_OPEN:I = 0x4

.field protected static final EMP_DLP_CMD_NOTIFY_PROCESS_DIED:I = 0x1

.field protected static final EMP_DLP_CMD_SET_AUDITLOG_STATUS:I = 0x6

.field protected static final EMP_DLP_CMD_SET_EXPIRY_AFTER:I = 0x3

.field protected static final EMP_DLP_CMD_SET_EXTENSIONS:I = 0x5

.field protected static final EMP_DLP_CMD_SET_FILE_EXPIRY:I = 0x2

.field private static final ENTERPRISE_DLP_PERMISSION_ONESDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DLP"

.field private static final TAG:Ljava/lang/String; = "PolicyServiceHelper"

.field private static _instance:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;


# instance fields
.field private dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->_instance:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 73
    const-string/jumbo v1, "com.microsoft.office"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.hancom.office.editor"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.infraware.office"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "com.mobisystems.editor"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 72
    sput-object v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->ContentProviderRestrictingApps:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "dlpHelper"    # Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .line 66
    iput-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    .line 91
    iput-object p1, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .line 90
    return-void
.end method

.method private enableClipboard(Lcom/samsung/android/knox/container/KnoxContainerManager;Ljava/util/List;)Z
    .locals 8
    .param p1, "kcm"    # Lcom/samsung/android/knox/container/KnoxContainerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/container/KnoxContainerManager;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 435
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    .line 436
    .local v2, "applicationPolicy":Lcom/samsung/android/knox/application/ApplicationPolicy;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v4, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 438
    .local v3, "i":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    .line 439
    .local v0, "app":Lcom/samsung/android/knox/AppIdentity;
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    const-string/jumbo v6, "PolicyServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgList["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    .end local v0    # "app":Lcom/samsung/android/knox/AppIdentity;
    :cond_0
    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromDisableClipboardBlackList(Ljava/util/List;)Z

    move-result v5

    return v5
.end method

.method private enableNetwork(Lcom/samsung/android/knox/container/KnoxContainerManager;Ljava/util/List;)Z
    .locals 14
    .param p1, "kcm"    # Lcom/samsung/android/knox/container/KnoxContainerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/container/KnoxContainerManager;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 446
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getFirewall()Lcom/samsung/android/knox/net/firewall/Firewall;

    move-result-object v2

    .line 447
    .local v2, "firewall":Lcom/samsung/android/knox/net/firewall/Firewall;
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/samsung/android/knox/net/firewall/Firewall;->enableFirewall(Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v5

    .line 448
    .local v5, "response":Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    if-eqz v5, :cond_0

    .line 449
    const-string/jumbo v10, "PolicyServiceHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "firewall.enableFirewall response: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string/jumbo v10, "PolicyServiceHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "firewall.enableFirewall response message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v9, "rulesString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 456
    .local v3, "i":I
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    .line 457
    .local v0, "app":Lcom/samsung/android/knox/AppIdentity;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "*:*;*;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    const-string/jumbo v11, "PolicyServiceHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "rulesString["

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "]: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 452
    .end local v0    # "app":Lcom/samsung/android/knox/AppIdentity;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .end local v3    # "i":I
    .end local v9    # "rulesString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v10, "PolicyServiceHelper"

    const-string/jumbo v11, "Firewall response is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    .restart local v1    # "app$iterator":Ljava/util/Iterator;
    .restart local v3    # "i":I
    .restart local v9    # "rulesString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getRuleArray(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v8

    .line 462
    .local v8, "rules":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    invoke-virtual {v2, v8}, Lcom/samsung/android/knox/net/firewall/Firewall;->removeRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v6

    .line 463
    .local v6, "responses":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    if-nez v6, :cond_2

    .line 464
    const/4 v10, 0x0

    return v10

    .line 466
    :cond_2
    const/4 v7, 0x1

    .line 467
    .local v7, "result":Z
    const/4 v10, 0x0

    array-length v11, v6

    :goto_2
    if-ge v10, v11, :cond_5

    aget-object v4, v6, v10

    .line 468
    .local v4, "res":Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    if-eqz v7, :cond_4

    .line 469
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    if-ne v12, v13, :cond_3

    const/4 v7, 0x1

    .line 467
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 469
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 468
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 471
    .end local v4    # "res":Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :cond_5
    return v7
.end method

.method private getDLPManagerService()Lcom/android/server/DLPManagerService;
    .locals 1

    .prologue
    .line 587
    const-string/jumbo v0, "dlp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DLPManagerService;

    return-object v0
.end method

.method private getDelimFormattedList(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 632
    .local p1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 633
    :cond_0
    const-string/jumbo v3, ""

    return-object v3

    .line 634
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 636
    .local v0, "item":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 637
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 645
    .end local v0    # "item":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "PolicyServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Formated list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    .line 520
    const-string/jumbo v1, "enterprise_policy_new"

    .line 519
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dlpHelper"    # Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .prologue
    const-class v1, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->_instance:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)V

    sput-object v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->_instance:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    .line 99
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->_instance:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRuleArray(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 9
    .param p2, "type"    # Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;",
            ")[",
            "Lcom/samsung/android/knox/net/firewall/FirewallRule;"
        }
    .end annotation

    .prologue
    .local p1, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 475
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p2, :cond_1

    .line 476
    :cond_0
    return-object v8

    .line 479
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 481
    .local v4, "rules":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 485
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 486
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "splitted":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v5, v6

    .line 491
    .local v0, "address":Ljava/lang/String;
    const-string/jumbo v6, "*"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 492
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->translateRule(Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v3

    .line 493
    .local v3, "rule":Lcom/samsung/android/knox/net/firewall/FirewallRule;
    aput-object v3, v4, v2
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v3    # "rule":Lcom/samsung/android/knox/net/firewall/FirewallRule;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "address":Ljava/lang/String;
    .end local v5    # "splitted":[Ljava/lang/String;
    :cond_3
    return-object v8

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/security/InvalidParameterException;
    return-object v8

    .line 499
    .end local v1    # "e":Ljava/security/InvalidParameterException;
    :cond_4
    return-object v4
.end method

.method private revertPolicy(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .locals 10
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "adminUid"    # J
    .param p4, "clipFirewall"    # Z

    .prologue
    const/4 v8, 0x0

    .line 402
    const/4 v1, 0x1

    .line 403
    .local v1, "finalRes":Z
    iget-object v5, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6, p2, p3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;IJ)Ljava/util/List;

    move-result-object v3

    .line 406
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    if-eqz v3, :cond_5

    .line 407
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    .line 409
    .local v0, "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    if-eqz v0, :cond_4

    .line 410
    iget-object v5, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v2

    .line 411
    .local v2, "kcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    if-nez v2, :cond_0

    .line 412
    const-string/jumbo v5, "PolicyServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Knox container manager is null:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return v8

    .line 415
    :cond_0
    const/4 v4, 0x0

    .line 416
    .local v4, "res":Z
    if-eqz p4, :cond_2

    .line 417
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->enableClipboard(Lcom/samsung/android/knox/container/KnoxContainerManager;Ljava/util/List;)Z

    move-result v4

    .line 418
    .local v4, "res":Z
    if-eqz v1, :cond_1

    move v1, v4

    .line 431
    .end local v0    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v1    # "finalRes":Z
    .end local v2    # "kcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v4    # "res":Z
    :goto_0
    return v1

    .line 418
    .restart local v0    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .restart local v1    # "finalRes":Z
    .restart local v2    # "kcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .restart local v4    # "res":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 420
    .local v4, "res":Z
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->enableNetwork(Lcom/samsung/android/knox/container/KnoxContainerManager;Ljava/util/List;)Z

    move-result v4

    .line 421
    .local v4, "res":Z
    if-eqz v1, :cond_3

    move v1, v4

    .local v1, "finalRes":Z
    goto :goto_0

    .local v1, "finalRes":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 425
    .end local v2    # "kcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v4    # "res":Z
    :cond_4
    const-string/jumbo v5, "PolicyServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EnterpriseKnoxManager is null:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v8

    .line 429
    .end local v0    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :cond_5
    const-string/jumbo v5, "PolicyServiceHelper"

    const-string/jumbo v6, "OldList is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected addPackagesToAllowWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 526
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 527
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addWhitelistApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected checkCaller()Ljava/lang/String;
    .locals 6

    .prologue
    .line 282
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 283
    .local v0, "callerPid":I
    const/4 v2, 0x0

    .line 285
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 290
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "PolicyServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "caller Uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-object v2

    .line 286
    .restart local v2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PolicyServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkCaller exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected checkDLPCaller()Z
    .locals 8

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->checkCaller()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "callerPackage":Ljava/lang/String;
    const-string/jumbo v5, "PolicyServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkDLPCaller(), performing validation, calling packagename:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v2, 0x0

    .line 257
    .local v2, "isDLPWhitelisted":Z
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->isPlatformOrProvider(Ljava/lang/String;)Z

    move-result v3

    .line 259
    .local v3, "isSignaturePlatform":Z
    if-nez v3, :cond_0

    .line 260
    const-string/jumbo v5, "PolicyServiceHelper"

    const-string/jumbo v6, "checkDLPCaller(). Called from non-platform, non-media app. Return false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v5, 0x0

    return v5

    .line 264
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 265
    .local v4, "uid":I
    if-eqz v1, :cond_2

    .line 266
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getAccessInfo(ILjava/lang/String;)I

    move-result v0

    .line 268
    .local v0, "accessInfo":I
    const/16 v5, 0x100

    if-eq v0, v5, :cond_1

    const/16 v5, 0x80

    if-ne v0, v5, :cond_3

    .line 270
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 274
    .end local v0    # "accessInfo":I
    :cond_2
    const-string/jumbo v5, "PolicyServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkDLPCaller(). isSignaturePlatform : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 275
    const-string/jumbo v7, " isDLPWhitelisted : "

    .line 274
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v2

    .line 269
    .restart local v0    # "accessInfo":I
    :cond_3
    const/16 v5, 0x200

    if-ne v0, v5, :cond_2

    goto :goto_0
.end method

.method protected checkLaunchIntentForAccessDLPInternal(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 178
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 179
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 182
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 184
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 185
    const/4 v1, 0x1

    return v1

    .line 188
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "authority":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 193
    .local v8, "calleePkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 195
    .local v15, "userid":I
    if-nez v8, :cond_3

    .line 196
    const/4 v1, 0x1

    return v1

    .line 199
    :cond_3
    const/4 v13, 0x0

    .line 200
    .local v13, "isInterestedApp":Z
    sget-object v3, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->ContentProviderRestrictingApps:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_4

    aget-object v14, v3, v1

    .line 201
    .local v14, "pkgName":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 202
    const/4 v13, 0x1

    .line 207
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_4
    if-nez v13, :cond_6

    .line 208
    const/4 v1, 0x1

    return v1

    .line 200
    .restart local v14    # "pkgName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_6
    invoke-static {v15}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 212
    const/4 v1, 0x1

    return v1

    .line 215
    :cond_7
    invoke-static {v15, v8}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getAccessInfo(ILjava/lang/String;)I

    move-result v1

    const/16 v3, 0x100

    if-eq v1, v3, :cond_8

    .line 216
    const/4 v1, 0x1

    return v1

    .line 219
    :cond_8
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "@media"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 220
    const-string/jumbo v1, "downloads"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 219
    if-nez v1, :cond_9

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "@downloads"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 219
    if-eqz v1, :cond_c

    .line 221
    :cond_9
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedUserInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 223
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 226
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 227
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 228
    const-string/jumbo v4, "_data"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 229
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 226
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 230
    .local v9, "cur":Landroid/database/Cursor;
    if-eqz v9, :cond_c

    .line 231
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 234
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 236
    .local v12, "filepath":Ljava/lang/String;
    if-eqz v12, :cond_b

    const-string/jumbo v1, "/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 238
    .local v11, "fileUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    .end local v11    # "fileUri":Landroid/net/Uri;
    .end local v12    # "filepath":Ljava/lang/String;
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v8    # "calleePkgName":Ljava/lang/String;
    .end local v9    # "cur":Landroid/database/Cursor;
    .end local v13    # "isInterestedApp":Z
    .end local v15    # "userid":I
    :cond_c
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 246
    :catch_0
    move-exception v10

    .line 247
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PolicyServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkLaunchIntentForAccessDLPInternal Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected enforceKnoxDLPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 513
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.sec.enterprise.permission.KNOX_DLP"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 514
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_DLP"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 513
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 511
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method protected feederToMdmMigration(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;

    .prologue
    .line 335
    if-nez p2, :cond_0

    .line 336
    return-void

    .line 340
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 341
    .local v3, "callerUid":I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 342
    .local v5, "containerId":I
    const-string/jumbo v13, "PolicyServiceHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "callerUid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "containerId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v13, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 345
    .local v6, "containerOwner":I
    if-ne v3, v6, :cond_5

    .line 347
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->isMdmActivated(I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 348
    const-string/jumbo v13, "PolicyServiceHelper"

    .line 349
    const-string/jumbo v14, "setDLPConfig: called by MDM - updating DBEntries for system and disabling the receiver"

    .line 348
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 356
    .local v8, "id":J
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-static {v5, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 357
    .local v2, "adminUid":I
    const-string/jumbo v13, "PolicyServiceHelper"

    .line 358
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "AdminUid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/ SystemCallerUid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 358
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 357
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-direct {v10, v13, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 364
    .local v10, "newCtxInfo":Lcom/samsung/android/knox/ContextInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v13, v10}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v11

    .line 365
    .local v11, "oldConfig":Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 366
    .local v12, "res":Z
    const-string/jumbo v13, "Activate"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 367
    const-string/jumbo v13, "Activate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 366
    if-eqz v13, :cond_4

    .line 368
    const-string/jumbo v13, "CLIPBOARD"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 369
    int-to-long v14, v2

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v15, v13}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->revertPolicy(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    move-result v12

    .line 370
    .local v12, "res":Z
    const-string/jumbo v13, "PolicyServiceHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Clipboard revert policy res : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v12    # "res":Z
    :cond_1
    const-string/jumbo v13, "NETWORK"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 373
    int-to-long v14, v2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v15, v13}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->revertPolicy(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    move-result v12

    .line 374
    .restart local v12    # "res":Z
    const-string/jumbo v13, "PolicyServiceHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Firewall revert policy res : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v12    # "res":Z
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    int-to-long v14, v2

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->updateAdminUid(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v4

    .line 382
    .local v4, "cnt":I
    const-string/jumbo v13, "PolicyServiceHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "AdminUid updated for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " rows."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 334
    .end local v2    # "adminUid":I
    .end local v3    # "callerUid":I
    .end local v4    # "cnt":I
    .end local v5    # "containerId":I
    .end local v6    # "containerOwner":I
    .end local v8    # "id":J
    .end local v10    # "newCtxInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v11    # "oldConfig":Landroid/os/Bundle;
    :cond_3
    :goto_1
    return-void

    .line 377
    .restart local v2    # "adminUid":I
    .restart local v3    # "callerUid":I
    .restart local v5    # "containerId":I
    .restart local v6    # "containerOwner":I
    .restart local v8    # "id":J
    .restart local v10    # "newCtxInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v11    # "oldConfig":Landroid/os/Bundle;
    .local v12, "res":Z
    :cond_4
    const/4 v12, 0x1

    goto :goto_0

    .line 384
    .end local v2    # "adminUid":I
    .end local v10    # "newCtxInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v11    # "oldConfig":Landroid/os/Bundle;
    .end local v12    # "res":Z
    :catchall_0
    move-exception v13

    .line 385
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 393
    .end local v3    # "callerUid":I
    .end local v5    # "containerId":I
    .end local v6    # "containerOwner":I
    .end local v8    # "id":J
    :catch_0
    move-exception v7

    .line 394
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "PolicyServiceHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setDLPConfig Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setDLPConfig Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 390
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "callerUid":I
    .restart local v5    # "containerId":I
    .restart local v6    # "containerOwner":I
    :cond_5
    :try_start_3
    const-string/jumbo v13, "PolicyServiceHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setDLPConfig: caller : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " is not owner for container: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method protected getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v0, 0x0

    .line 503
    if-nez p1, :cond_0

    .line 504
    return-object v0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getFormatedDomainList(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "domainList"    # Ljava/lang/String;

    .prologue
    .line 548
    if-nez p1, :cond_0

    .line 549
    const-string/jumbo p1, ""

    .line 550
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "domains":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 552
    .local v2, "uniqueDomains":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    array-length v3, v1

    if-nez v3, :cond_2

    .line 553
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "uniqueDomains":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 557
    .local v2, "uniqueDomains":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getDelimFormattedList(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "delimString":Ljava/lang/String;
    const-string/jumbo v3, "PolicyServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Returning domain list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-object v0

    .line 555
    .end local v0    # "delimString":Ljava/lang/String;
    .local v2, "uniqueDomains":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "uniqueDomains":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v2, "uniqueDomains":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method protected getIntValueForAuditEvents(Landroid/os/Bundle;)I
    .locals 7
    .param p1, "config"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "create":Z
    const/4 v3, 0x0

    .line 121
    .local v3, "open":Z
    const/4 v4, 0x0

    .line 122
    .local v4, "rename":Z
    const/4 v2, 0x0

    .line 123
    .local v2, "expired":Z
    const/4 v5, 0x0

    .line 124
    .local v5, "unauthorized":Z
    const/4 v0, 0x0

    .line 125
    .local v0, "audit":I
    const-string/jumbo v6, "CREATE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    const-string/jumbo v6, "CREATE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 128
    .end local v1    # "create":Z
    :cond_0
    const-string/jumbo v6, "OPEN"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    const-string/jumbo v6, "OPEN"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 131
    .end local v3    # "open":Z
    :cond_1
    const-string/jumbo v6, "RENAME"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 132
    const-string/jumbo v6, "RENAME"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 134
    .end local v4    # "rename":Z
    :cond_2
    const-string/jumbo v6, "EXPIRED"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 135
    const-string/jumbo v6, "EXPIRED"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 137
    .end local v2    # "expired":Z
    :cond_3
    const-string/jumbo v6, "UNAUTHORIZED"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 138
    const-string/jumbo v6, "UNAUTHORIZED"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 140
    .end local v5    # "unauthorized":Z
    :cond_4
    if-eqz v1, :cond_5

    .line 141
    const/4 v0, 0x1

    .line 142
    :cond_5
    if-eqz v3, :cond_6

    .line 143
    or-int/lit8 v0, v0, 0x2

    .line 144
    :cond_6
    if-eqz v4, :cond_7

    .line 145
    or-int/lit8 v0, v0, 0x4

    .line 146
    :cond_7
    if-eqz v2, :cond_8

    .line 147
    or-int/lit8 v0, v0, 0x8

    .line 148
    :cond_8
    if-eqz v5, :cond_9

    .line 149
    or-int/lit8 v0, v0, 0x10

    .line 150
    :cond_9
    return v0
.end method

.method protected getMergedExtensions(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "extendedExt"    # Ljava/lang/String;

    .prologue
    .line 610
    if-nez p1, :cond_0

    .line 611
    const-string/jumbo p1, ""

    .line 612
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "extendedExtensions":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 614
    .local v2, "mergedExtnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    array-length v3, v1

    if-nez v3, :cond_2

    .line 615
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "mergedExtnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 619
    .local v2, "mergedExtnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    sget-object v3, Lcom/samsung/android/knox/dlp/DLPConstants;->FIXED_EXTENSIONS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 620
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getDelimFormattedList(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "delimString":Ljava/lang/String;
    const-string/jumbo v3, "PolicyServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Returning extension list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-object v0

    .line 617
    .end local v0    # "delimString":Ljava/lang/String;
    .local v2, "mergedExtnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "mergedExtnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v2, "mergedExtnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method protected getPackageMetaData(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 103
    const-string/jumbo v2, "PolicyServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageMetaData: getting metadata for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 106
    const/16 v3, 0x80

    .line 105
    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 107
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 108
    const-string/jumbo v2, "PolicyServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageMetaData: Application Meta data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 109
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 109
    const-string/jumbo v4, " Package: "

    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 112
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PolicyServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v5
.end method

.method protected getPackagesFromAllowWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 540
    if-nez p1, :cond_0

    .line 541
    return-object v0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isDLPKernelEnabled()Z
    .locals 6

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "dev":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .end local v0    # "dev":Ljava/io/FileOutputStream;
    const-string/jumbo v3, "/dev/sdp_dlp"

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .local v0, "dev":Ljava/io/FileOutputStream;
    if-eqz v0, :cond_0

    .line 163
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "err":Ljava/io/IOException;
    const-string/jumbo v3, "PolicyServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    .end local v0    # "dev":Ljava/io/FileOutputStream;
    .end local v1    # "err":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 158
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string/jumbo v3, "PolicyServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    const/4 v3, 0x0

    return v3

    .line 160
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method protected isMdmActivated(I)Z
    .locals 13
    .param p1, "userID"    # I

    .prologue
    const/4 v12, 0x0

    .line 309
    const/4 v6, 0x0

    .line 310
    .local v6, "isMdmActivated":Z
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v10}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getPolicyConfigOwners()Landroid/util/SparseLongArray;

    move-result-object v7

    .line 311
    .local v7, "policyConfigOwners":Landroid/util/SparseLongArray;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 312
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v10, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 313
    .local v4, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 314
    invoke-virtual {v7, v5}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 315
    .local v1, "containerId":I
    if-ne p1, v1, :cond_2

    .line 316
    invoke-virtual {v7, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    .line 318
    .local v2, "adminUid":J
    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 319
    .local v0, "actualOwnerUid":I
    invoke-static {v1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    int-to-long v8, v10

    .line 320
    .local v8, "realContainerOwnerUid":J
    const-string/jumbo v10, "PolicyServiceHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPolicyOwner:: For containerId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 321
    const-string/jumbo v12, ", actual ownerId: "

    .line 320
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    cmp-long v10, v2, v8

    if-nez v10, :cond_1

    const/4 v6, 0x1

    .line 331
    .end local v0    # "actualOwnerUid":I
    .end local v1    # "containerId":I
    .end local v2    # "adminUid":J
    .end local v8    # "realContainerOwnerUid":J
    :cond_0
    :goto_1
    return v6

    .line 323
    .restart local v0    # "actualOwnerUid":I
    .restart local v1    # "containerId":I
    .restart local v2    # "adminUid":J
    .restart local v8    # "realContainerOwnerUid":J
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 313
    .end local v0    # "actualOwnerUid":I
    .end local v2    # "adminUid":J
    .end local v8    # "realContainerOwnerUid":J
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "containerId":I
    .end local v4    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v5    # "i":I
    :cond_3
    const-string/jumbo v10, "PolicyServiceHelper"

    const-string/jumbo v11, "No config entry found in DB !"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return v12
.end method

.method protected isPlatformOrProvider(Ljava/lang/String;)Z
    .locals 3
    .param p1, "callerPackage"    # Ljava/lang/String;

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "isSignaturePlatform":Z
    iget-object v2, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 297
    :goto_0
    if-eqz p1, :cond_1

    .line 298
    if-eqz v1, :cond_1

    .line 299
    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const-string/jumbo v2, "com.android.providers.media"

    .line 301
    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x1

    .line 305
    :cond_1
    return v0

    .line 296
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_0
.end method

.method protected removePackagesFromAllowWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 533
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 534
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->removeWhitelistApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected sendSetDLPAuditEPMDCommand(II)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "userId"    # I

    .prologue
    .line 669
    const-string/jumbo v3, "PolicyServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sending EPMD command with Log status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 673
    .local v0, "calling_uid":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v2

    .line 674
    .local v2, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 675
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 674
    const/4 v4, 0x6

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5, v3}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 668
    return-void

    .line 676
    .end local v2    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    :catchall_0
    move-exception v3

    .line 677
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 676
    throw v3
.end method

.method protected sendSetExtensionEPMDCommand(Ljava/lang/String;I)V
    .locals 7
    .param p1, "extendedExtensions"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 650
    if-nez p1, :cond_0

    .line 651
    const-string/jumbo v4, "PolicyServiceHelper"

    const-string/jumbo v5, "Extended extension is null, making it empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string/jumbo p1, ""

    .line 654
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    .line 655
    const-string/jumbo v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 654
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getDelimFormattedList(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "extendedExtns":Ljava/lang/String;
    const-string/jumbo v4, "PolicyServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Sending EPMD command with additional extensions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 660
    .local v0, "callingUid":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v2

    .line 661
    .local v2, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 662
    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 661
    const/4 v5, 0x5

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6, v4}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 649
    return-void

    .line 663
    .end local v2    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    :catchall_0
    move-exception v4

    .line 664
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 663
    throw v4
.end method

.method protected setDLPAdminExpiry(II)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "expiry"    # I

    .prologue
    .line 564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 565
    .local v0, "callingUid":J
    const/4 v2, 0x0

    .line 567
    .local v2, "res":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/DLPManagerService;->setDLPExpiry(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 569
    .local v2, "res":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    return v2

    .line 568
    .local v2, "res":Z
    :catchall_0
    move-exception v3

    .line 569
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 568
    throw v3
.end method

.method protected setDLPExtension(ILjava/lang/String;)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "mergedExtensions"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 592
    .local v0, "callingUid":J
    const/4 v2, 0x0

    .line 594
    .local v2, "res":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/DLPManagerService;->setDLPExtensions(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 596
    .local v2, "res":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 598
    return v2

    .line 595
    .local v2, "res":Z
    :catchall_0
    move-exception v3

    .line 596
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 595
    throw v3
.end method

.method protected setDLPLock(IZ)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "lockStatus"    # Z

    .prologue
    .line 575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 576
    .local v0, "callingUid":J
    const/4 v2, 0x0

    .line 578
    .local v2, "res":Z
    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/DLPManagerService;->lockDLP(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 581
    .local v2, "res":Z
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    return v2

    .line 578
    .local v2, "res":Z
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/DLPManagerService;->unlockDLP(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .local v2, "res":Z
    goto :goto_0

    .line 580
    .local v2, "res":Z
    :catchall_0
    move-exception v3

    .line 581
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 580
    throw v3
.end method
