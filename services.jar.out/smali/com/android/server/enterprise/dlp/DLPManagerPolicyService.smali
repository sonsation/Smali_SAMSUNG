.class public Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
.super Lcom/samsung/android/knox/dlp/IDLPManagerPolicy$Stub;
.source "DLPManagerPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$ClearUserDataObserver;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x30d40L

.field private static TAG:Ljava/lang/String;

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static volatile mBootReceiver:Landroid/content/BroadcastReceiver;

.field private static mDLPConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# instance fields
.field private dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

.field private dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

.field private mContext:Landroid/content/Context;

.field private mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

.field private mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

.field private receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Z)Z
    .locals 1
    .param p1, "isActivated"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerOrUnregisterProcessObserver(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/DLPCacheHelper;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDlpCacheHelper()Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPInterface(I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->bindToDLPService(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const-string/jumbo v0, "DLPManagerPolicyService"

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    .line 77
    sput-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .line 79
    sput-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Lcom/samsung/android/knox/dlp/IDLPManagerPolicy$Stub;-><init>()V

    .line 63
    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    .line 67
    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .line 68
    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    .line 69
    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    .line 75
    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    .line 210
    new-instance v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;)V

    iput-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    .line 214
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "DLPManagerPolicyService Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    .line 217
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .line 218
    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getServiceHelperInstance(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    .line 219
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDlpCacheHelper()Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    .line 220
    invoke-virtual {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerEnterpriseDLPpolicyReciever()V

    .line 221
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerBootReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    sput-object p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .line 212
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "DLPManagerPolicyService Constructor >> Exception Occured"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bindToDLPService(I)V
    .locals 22
    .param p1, "userId"    # I

    .prologue
    .line 521
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "In bindToDLPService: uId is: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;

    move/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;-><init>(I)V

    .line 523
    .local v5, "connection":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v17, "com.samsung.android.knox.intent.action.DLP_SERVICE_BIND_INTERNAL"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v10, "intent":Landroid/content/Intent;
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "In bindToDLPService: action is: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sget-object v18, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v18

    .line 528
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 530
    .local v8, "id":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 531
    .local v11, "pm":Landroid/content/pm/PackageManager;
    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 532
    .local v16, "userHandle":Landroid/os/UserHandle;
    if-eqz v11, :cond_3

    .line 533
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v11, v10, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    .line 534
    .local v14, "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    if-eqz v17, :cond_1

    .line 562
    .end local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v18

    .line 519
    return-void

    .line 535
    .restart local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :try_start_3
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "resInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 536
    .local v12, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 537
    .local v15, "servInfo":Landroid/content/pm/ServiceInfo;
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "In bindToService: serviceInfo : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .local v4, "cn":Landroid/content/ComponentName;
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "In bindToService: Got the component name, Binding to the service..."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v10, v5, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 542
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "In bindToService: Success >>> Bind DLP service"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 544
    :try_start_4
    new-instance v17, Ljava/util/concurrent/CountDownLatch;

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 545
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v20, 0x30d40

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    .line 546
    .local v6, "countDownTimeout":Z
    if-nez v6, :cond_0

    .line 547
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "In bindToService: CoutnDownLatch return false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 549
    .end local v6    # "countDownTimeout":Z
    :catch_0
    move-exception v7

    .line 550
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_5
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "In bindToService: InterruptedException"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 561
    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "resInfo$iterator":Ljava/util/Iterator;
    .end local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    .end local v16    # "userHandle":Landroid/os/UserHandle;
    :catchall_0
    move-exception v17

    .line 562
    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 561
    throw v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 526
    .end local v8    # "id":J
    :catchall_1
    move-exception v17

    monitor-exit v18

    throw v17

    .line 554
    .restart local v4    # "cn":Landroid/content/ComponentName;
    .restart local v8    # "id":J
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "resInfo":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "resInfo$iterator":Ljava/util/Iterator;
    .restart local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    .restart local v16    # "userHandle":Landroid/os/UserHandle;
    :cond_2
    :try_start_7
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "In bindToService: Fail to bind to DLP service"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 559
    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v12    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "resInfo$iterator":Ljava/util/Iterator;
    .end local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    :cond_3
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "In bindToService: PackageManager : Null"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public static checkLaunchIntentForAccessDLP(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;II)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "realCallingPid"    # I
    .param p6, "realCallingUid"    # I

    .prologue
    .line 1028
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v0, :cond_0

    .line 1030
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkLaunchIntentForAccessDLP() DLP is not instantiated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v0, 0x1

    return v0

    .line 1035
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->checkLaunchIntentForAccessDLPInternal(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method private forceStopPackage(ILjava/lang/String;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 237
    if-nez p2, :cond_0

    .line 238
    return-void

    .line 241
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 244
    .local v2, "id":J
    :try_start_0
    const-string/jumbo v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 245
    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    invoke-virtual {v0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 246
    invoke-virtual {v0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 248
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v4, "in":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.extra.user_handle"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    new-instance v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    const/4 v5, 0x3

    invoke-direct {v1, p0, v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    .line 253
    .local v1, "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DLP App ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] force closed !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 254
    .end local v0    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v1    # "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    .end local v4    # "in":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    .line 255
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    throw v5
.end method

.method public static getAccessInfo(ILjava/lang/String;)I
    .locals 6
    .param p0, "userId"    # I
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, "accessInfo":I
    const/4 v1, -0x1

    .line 964
    .local v1, "appType":I
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v3, :cond_0

    .line 965
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "DLP is not instantiated"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    return v5

    .line 969
    :cond_0
    invoke-static {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 970
    return v5

    .line 974
    :cond_1
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget-object v3, v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    invoke-virtual {v3, p0}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->getDLPCache(I)Lcom/android/server/enterprise/dlp/DLPCache;

    move-result-object v2

    .line 975
    .local v2, "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/enterprise/dlp/DLPCache;->mWhitelistedPkgs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 976
    iget-object v3, v2, Lcom/android/server/enterprise/dlp/DLPCache;->mWhitelistedPkgs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 980
    :cond_2
    if-nez v1, :cond_4

    .line 981
    const/16 v0, 0x80

    .line 991
    :cond_3
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccessInfo END "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return v0

    .line 982
    :cond_4
    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 983
    const/16 v0, 0x100

    goto :goto_0

    .line 984
    :cond_5
    const-string/jumbo v3, "com.android.providers.media"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 985
    const/16 v0, 0x200

    goto :goto_0

    .line 986
    :cond_6
    const-string/jumbo v3, "com.android.providers.downloads"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 987
    const/16 v0, 0x200

    goto :goto_0

    .line 988
    :cond_7
    const-string/jumbo v3, "com.android.externalstorage"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 989
    const/16 v0, 0x200

    goto :goto_0
.end method

.method private getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-object v0
.end method

.method private getDLPInterface(I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 451
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->getDLPService()Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v1

    return-object v1

    .line 454
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 457
    .local v8, "id":J
    :try_start_0
    const-string/jumbo v1, "package"

    .line 456
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 459
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const-string/jumbo v1, "com.samsung.android.dlp.service"

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 460
    const-string/jumbo v1, "com.samsung.android.dlp.service"

    .line 461
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p1

    .line 460
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 462
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "DLP : dlp service enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 470
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return-object v7

    .line 464
    :catch_0
    move-exception v6

    .line 465
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDLPInterface exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 466
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 467
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw v1
.end method

.method private getDlpCacheHelper()Lcom/android/server/enterprise/dlp/DLPCacheHelper;
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;-><init>(Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    return-object v0
.end method

.method private getServiceHelperInstance(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "dlpHelper"    # Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    if-nez v0, :cond_0

    .line 263
    invoke-static {p1, p2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getInstance(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    return-object v0
.end method

.method public static isActivated(I)Z
    .locals 5
    .param p0, "userId"    # I

    .prologue
    .line 1002
    const/4 v1, 0x0

    .line 1003
    .local v1, "isActivated":Z
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v2, :cond_0

    .line 1004
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isActivated() DLP is not instantiated"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/4 v2, 0x0

    return v2

    .line 1008
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    iget-object v2, v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    invoke-virtual {v2, p0}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->getDLPCache(I)Lcom/android/server/enterprise/dlp/DLPCache;

    move-result-object v0

    .line 1009
    .local v0, "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    if-eqz v0, :cond_1

    .line 1010
    iget-boolean v1, v0, Lcom/android/server/enterprise/dlp/DLPCache;->isActivated:Z

    .line 1013
    .end local v1    # "isActivated":Z
    :cond_1
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isActivated : DLP activated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "for userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return v1
.end method

.method public static isFirewallDenyRuleEnabledForUid(Landroid/content/Context;I)Z
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    const/4 v12, 0x0

    .line 1070
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1071
    .local v0, "containerId":I
    const/4 v5, 0x0

    .line 1072
    .local v5, "isConsumerApp":Z
    invoke-static {v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_7

    .line 1073
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 1074
    .local v8, "pkgNames":[Ljava/lang/String;
    if-nez v8, :cond_0

    .line 1075
    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "pkgNames is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    return v12

    .line 1078
    :cond_0
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    array-length v9, v8

    if-ge v6, v9, :cond_1

    .line 1079
    aget-object v9, v8, v6

    invoke-static {v0, v9}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getAccessInfo(ILjava/lang/String;)I

    move-result v9

    const/16 v10, 0x100

    if-ne v10, v9, :cond_2

    .line 1080
    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Package is consumer app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 v5, 0x1

    .line 1085
    :cond_1
    if-eqz v5, :cond_7

    .line 1086
    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 1087
    .local v1, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getFirewall()Lcom/samsung/android/knox/net/firewall/Firewall;

    move-result-object v2

    .line 1088
    .local v2, "firewallPolicy":Lcom/samsung/android/knox/net/firewall/Firewall;
    if-eqz v2, :cond_6

    .line 1089
    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    const/4 v10, 0x2

    invoke-virtual {v2, v10, v9}, Lcom/samsung/android/knox/net/firewall/Firewall;->getRules(ILcom/samsung/android/knox/net/firewall/FirewallRule$Status;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v3

    .line 1090
    .local v3, "firewallRule":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v3

    if-ge v4, v9, :cond_7

    .line 1091
    aget-object v9, v3, v4

    if-eqz v9, :cond_5

    .line 1092
    const-string/jumbo v9, "*"

    aget-object v10, v3, v4

    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "*"

    aget-object v10, v3, v4

    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1093
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    array-length v9, v8

    if-ge v7, v9, :cond_5

    .line 1094
    aget-object v9, v3, v4

    invoke-virtual {v9}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v8, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1095
    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Network is  blocked for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const/4 v9, 0x1

    return v9

    .line 1078
    .end local v1    # "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .end local v2    # "firewallPolicy":Lcom/samsung/android/knox/net/firewall/Firewall;
    .end local v3    # "firewallRule":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .end local v4    # "i":I
    .end local v7    # "k":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1093
    .restart local v1    # "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .restart local v2    # "firewallPolicy":Lcom/samsung/android/knox/net/firewall/Firewall;
    .restart local v3    # "firewallRule":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .restart local v4    # "i":I
    .restart local v7    # "k":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1100
    .end local v7    # "k":I
    :cond_4
    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "pkgNames is null OR firewall rules are not fully deny rules"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1105
    .end local v3    # "firewallRule":[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .end local v4    # "i":I
    :cond_6
    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "firewallPolicy is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .end local v1    # "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .end local v2    # "firewallPolicy":Lcom/samsung/android/knox/net/firewall/Firewall;
    .end local v6    # "j":I
    .end local v8    # "pkgNames":[Ljava/lang/String;
    :cond_7
    return v12
.end method

.method public static isLocked(I)Z
    .locals 6
    .param p0, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1051
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v3, :cond_0

    .line 1052
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isLocked() DLP is not instantiated"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return v2

    .line 1056
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isLocked(I)I

    move-result v0

    .line 1058
    .local v0, "isLocked":I
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isLocked() END "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private registerBootReceiver()V
    .locals 3

    .prologue
    .line 82
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V

    sput-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private registerOrUnregisterProcessObserver(Z)Z
    .locals 4
    .param p1, "isActivated"    # Z

    .prologue
    .line 863
    iget-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    if-nez v2, :cond_0

    .line 865
    const/4 v2, 0x0

    return v2

    .line 867
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DLP: registerOrUnregisterProcessObserver :: calling clear calling identity on binder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 871
    .local v0, "token":J
    if-eqz p1, :cond_1

    .line 872
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;->registerObserver()V

    .line 875
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DLP: registerOrUnregisterProcessObserver :: restoring identity on binder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 880
    const/4 v2, 0x1

    return v2

    .line 874
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;->unregister()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 876
    :catchall_0
    move-exception v2

    .line 877
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 876
    throw v2
.end method

.method private setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .locals 31
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;

    .prologue
    .line 680
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v26, v0

    .line 681
    .local v26, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v24

    .line 683
    .local v24, "oldConfig":Landroid/os/Bundle;
    const/16 v18, 0x1

    .line 684
    .local v18, "finalRes":Z
    const/16 v23, 0x0

    .line 685
    .local v23, "notifyDLPService":Z
    if-eqz p2, :cond_17

    .line 688
    const/16 v25, 0x0

    .line 689
    .local v25, "res":Z
    :try_start_0
    const-string/jumbo v28, "ExpiryAfter"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 690
    const-string/jumbo v28, "ExpiryAfter"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 692
    .local v15, "expiryAfter":I
    if-eqz v24, :cond_0

    const-string/jumbo v28, "ExpiryAfter"

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    if-eq v15, v0, :cond_1

    .line 693
    :cond_0
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "DLP : In setDLPExpiry userId : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " expiry_after : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->setDLPAdminExpiry(II)Z

    move-result v25

    .line 696
    .local v25, "res":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v8

    .line 698
    .local v8, "callingUid":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v14

    .line 699
    .local v14, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x1

    aput-object v29, v28, v30

    const/16 v29, 0x3

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v28

    invoke-virtual {v14, v0, v1, v2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    if-eqz v18, :cond_b

    move/from16 v18, v25

    .line 705
    .end local v18    # "finalRes":Z
    :goto_0
    const-string/jumbo v28, "Activate"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 706
    const/16 v23, 0x1

    .line 707
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 708
    .local v20, "in":Landroid/content/Intent;
    const-string/jumbo v28, "android.intent.extra.user_handle"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 709
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 711
    new-instance v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v6, v0, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    .line 712
    .local v6, "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v20, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 723
    .end local v6    # "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    .end local v8    # "callingUid":J
    .end local v14    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v15    # "expiryAfter":I
    .end local v20    # "in":Landroid/content/Intent;
    .end local v25    # "res":Z
    :cond_1
    :goto_1
    const/16 v28, 0x118

    :try_start_3
    invoke-static/range {v28 .. v28}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 724
    const-string/jumbo v28, "AUDIT"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getIntValueForAuditEvents(Landroid/os/Bundle;)I

    move-result v5

    .line 726
    .local v5, "audit":I
    const-string/jumbo v28, "AUDIT"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->sendSetDLPAuditEPMDCommand(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 739
    .end local v5    # "audit":I
    :cond_2
    :goto_2
    const/16 v28, 0x10e

    :try_start_4
    invoke-static/range {v28 .. v28}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 740
    const/16 v25, 0x0

    .line 741
    .local v25, "res":Z
    const-string/jumbo v28, "Extensions"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 742
    const-string/jumbo v28, "Extensions"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 743
    .local v16, "extendedExtensions":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getMergedExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 744
    .local v17, "extensions":Ljava/lang/String;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v28

    if-eqz v28, :cond_d

    .line 751
    .end local v25    # "res":Z
    :cond_3
    :goto_3
    if-eqz v18, :cond_f

    move/from16 v18, v25

    .line 762
    .end local v16    # "extendedExtensions":Ljava/lang/String;
    .end local v17    # "extensions":Ljava/lang/String;
    :cond_4
    :goto_4
    const/16 v28, 0x118

    :try_start_5
    invoke-static/range {v28 .. v28}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 763
    const-string/jumbo v28, "Domains"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 764
    const-string/jumbo v28, "Domains"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 765
    .local v10, "domainList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getFormatedDomainList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 766
    .local v19, "formatedDomainList":Ljava/lang/String;
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_11

    .line 770
    :cond_5
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "DLP : domain list is null or empty"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 783
    .end local v10    # "domainList":Ljava/lang/String;
    .end local v19    # "formatedDomainList":Ljava/lang/String;
    :cond_6
    :goto_5
    const/16 v25, 0x0

    .line 784
    .restart local v25    # "res":Z
    :try_start_6
    const-string/jumbo v28, "Lock"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 785
    const-string/jumbo v28, "Lock"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 786
    .local v22, "isLocked":Z
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "DLP : isLocked : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string/jumbo v28, "Lock"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    .line 789
    if-eqz v22, :cond_13

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v7

    .line 792
    .local v7, "dlpAppList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    if-eqz v7, :cond_13

    .line 793
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "dpi$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    .line 794
    .local v11, "dpi":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    iget-object v4, v11, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 795
    .local v4, "ai":Lcom/samsung/android/knox/AppIdentity;
    if-eqz v4, :cond_7

    .line 796
    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    .line 806
    .end local v4    # "ai":Lcom/samsung/android/knox/AppIdentity;
    .end local v7    # "dlpAppList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    .end local v11    # "dpi":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    .end local v12    # "dpi$iterator":Ljava/util/Iterator;
    .end local v22    # "isLocked":Z
    :catch_0
    move-exception v13

    .line 807
    .local v13, "e":Ljava/lang/Exception;
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig exception:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 809
    const/16 v18, 0x0

    .line 814
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v25    # "res":Z
    :cond_8
    :goto_7
    :try_start_7
    const-string/jumbo v28, "Activate"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 815
    const-string/jumbo v28, "Activate"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 818
    .local v21, "isActivated":Z
    const-string/jumbo v28, "Activate"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_a

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v27

    .line 821
    .local v27, "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    if-eqz v27, :cond_15

    .line 822
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "dpi$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    .line 823
    .restart local v11    # "dpi":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    iget-object v4, v11, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 824
    .restart local v4    # "ai":Lcom/samsung/android/knox/AppIdentity;
    if-eqz v4, :cond_9

    .line 825
    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_8

    .line 846
    .end local v4    # "ai":Lcom/samsung/android/knox/AppIdentity;
    .end local v11    # "dpi":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    .end local v12    # "dpi$iterator":Ljava/util/Iterator;
    .end local v21    # "isActivated":Z
    .end local v27    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    :catch_1
    move-exception v13

    .line 847
    .restart local v13    # "e":Ljava/lang/Exception;
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig exception:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 849
    const/16 v18, 0x0

    .line 855
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_9
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig: Adding/Updating DLP cache for userId: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->setDLPConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->updateUserDLPCacheFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v28

    return v28

    .line 700
    .restart local v8    # "callingUid":J
    .restart local v15    # "expiryAfter":I
    .restart local v18    # "finalRes":Z
    .local v25, "res":Z
    :catchall_0
    move-exception v28

    .line 701
    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    throw v28
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 716
    .end local v8    # "callingUid":J
    .end local v15    # "expiryAfter":I
    .end local v18    # "finalRes":Z
    .end local v25    # "res":Z
    :catch_2
    move-exception v13

    .line 717
    .restart local v13    # "e":Ljava/lang/Exception;
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 719
    const/16 v18, 0x0

    .restart local v18    # "finalRes":Z
    goto/16 :goto_1

    .line 704
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v8    # "callingUid":J
    .restart local v14    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .restart local v15    # "expiryAfter":I
    .restart local v25    # "res":Z
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 731
    .end local v8    # "callingUid":J
    .end local v14    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v15    # "expiryAfter":I
    .end local v18    # "finalRes":Z
    .end local v25    # "res":Z
    :cond_c
    :try_start_9
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "Knox version not supported for DLP Audit events."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 733
    :catch_3
    move-exception v13

    .line 734
    .restart local v13    # "e":Ljava/lang/Exception;
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig exception:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 745
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v16    # "extendedExtensions":Ljava/lang/String;
    .restart local v17    # "extensions":Ljava/lang/String;
    .local v25, "res":Z
    :cond_d
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->setDLPExtension(ILjava/lang/String;)Z

    move-result v25

    .line 746
    .local v25, "res":Z
    if-eqz v25, :cond_e

    .line 747
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "DLP : Extensions set for user: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->sendSetExtensionEPMDCommand(Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    .line 756
    .end local v16    # "extendedExtensions":Ljava/lang/String;
    .end local v17    # "extensions":Ljava/lang/String;
    .end local v25    # "res":Z
    :catch_4
    move-exception v13

    .line 757
    .restart local v13    # "e":Ljava/lang/Exception;
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 751
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v16    # "extendedExtensions":Ljava/lang/String;
    .restart local v17    # "extensions":Ljava/lang/String;
    :cond_f
    const/16 v18, 0x0

    .restart local v18    # "finalRes":Z
    goto/16 :goto_4

    .line 754
    .end local v16    # "extendedExtensions":Ljava/lang/String;
    .end local v17    # "extensions":Ljava/lang/String;
    .end local v18    # "finalRes":Z
    :cond_10
    :try_start_b
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "Knox version not supported for extension"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_4

    .line 767
    .restart local v10    # "domainList":Ljava/lang/String;
    .restart local v19    # "formatedDomainList":Ljava/lang/String;
    :cond_11
    :try_start_c
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "DLP : Domain set for user: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string/jumbo v28, "Domains"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_5

    .line 776
    .end local v10    # "domainList":Ljava/lang/String;
    .end local v19    # "formatedDomainList":Ljava/lang/String;
    :catch_5
    move-exception v13

    .line 777
    .restart local v13    # "e":Ljava/lang/Exception;
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig exception:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "setConfig Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 774
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_12
    :try_start_d
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "Knox version not supported for domains list"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_5

    .line 801
    .restart local v22    # "isLocked":Z
    .local v25, "res":Z
    :cond_13
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->setDLPLock(IZ)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    move-result v25

    .line 803
    .local v25, "res":Z
    if-eqz v18, :cond_14

    move/from16 v18, v25

    .local v18, "finalRes":Z
    goto/16 :goto_7

    .end local v18    # "finalRes":Z
    :cond_14
    const/16 v18, 0x0

    .local v18, "finalRes":Z
    goto/16 :goto_7

    .line 830
    .end local v18    # "finalRes":Z
    .end local v22    # "isLocked":Z
    .end local v25    # "res":Z
    .restart local v21    # "isActivated":Z
    .restart local v27    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    :cond_15
    :try_start_f
    const-string/jumbo v28, "com.android.providers.media"

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V

    .line 832
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "DLP : isActivated : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    if-nez v23, :cond_16

    .line 834
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 835
    .restart local v20    # "in":Landroid/content/Intent;
    const-string/jumbo v28, "android.intent.extra.user_handle"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 838
    new-instance v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    const/16 v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v6, v0, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    .line 839
    .restart local v6    # "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v20, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 841
    .end local v6    # "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    .end local v20    # "in":Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerOrUnregisterProcessObserver(Z)Z

    move-result v28

    if-nez v28, :cond_a

    .line 842
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "DLP : registerOrUnregisterProcessObserver failed for isActive : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_9

    .line 852
    .end local v21    # "isActivated":Z
    .end local v27    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    .restart local v18    # "finalRes":Z
    :cond_17
    sget-object v28, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "DLP: config is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 859
    .end local v18    # "finalRes":Z
    :cond_18
    const/16 v28, 0x0

    return v28
.end method


# virtual methods
.method public addPackagesToAllowDLPWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 9
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    const/4 v8, 0x0

    .line 569
    iget-object v6, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->enforceKnoxDLPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 570
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 571
    :cond_0
    return v8

    .line 574
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v6

    if-nez v6, :cond_2

    .line 575
    sget-object v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "In addPackagesToAllowDLPWhiteList: dlpHelper is not initialized"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return v8

    .line 579
    :cond_2
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 581
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    iget-object v7, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->feederToMdmMigration(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V

    .line 583
    invoke-static {v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 584
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dpi$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    .line 586
    .local v1, "dpi":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    if-eqz v1, :cond_3

    .line 590
    iget-object v0, v1, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 591
    .local v0, "ai":Lcom/samsung/android/knox/AppIdentity;
    if-eqz v0, :cond_3

    .line 592
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v4

    .line 594
    .local v4, "signature":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v6, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isListAppsContainsDLPPackageInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 596
    invoke-direct {p0, v5, v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V

    goto :goto_0

    .line 602
    .end local v0    # "ai":Lcom/samsung/android/knox/AppIdentity;
    .end local v1    # "dpi":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    .end local v2    # "dpi$iterator":Ljava/util/Iterator;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "signature":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->addPackagesToAllowWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 603
    iget-object v6, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->updateUserDLPCacheFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    return v6

    .line 605
    :cond_5
    return v8
.end method

.method public addToAuditLog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 16
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "opr"    # I
    .param p6, "userId"    # I

    .prologue
    .line 1221
    const/4 v7, 0x0

    .line 1222
    .local v7, "message":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1223
    .local v4, "isSuccess":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1224
    .local v10, "callingUid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->checkCaller()Ljava/lang/String;

    move-result-object v9

    .line 1225
    .local v9, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1227
    .local v14, "token":J
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "callingUid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " Actual callerPackage : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1228
    const-string/jumbo v5, " Audit logging with pkg : "

    .line 1227
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->getDLPCache(I)Lcom/android/server/enterprise/dlp/DLPCache;

    move-result-object v11

    .line 1232
    .local v11, "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    if-eqz v11, :cond_6

    .line 1233
    const/16 v2, 0x3e8

    if-eq v10, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v2, v9}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->isPlatformOrProvider(Ljava/lang/String;)Z

    move-result v2

    .line 1232
    if-eqz v2, :cond_6

    .line 1234
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Caller is trusted (platform, system or provider), proceeding for audit log!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    packed-switch p5, :pswitch_data_0

    .line 1297
    :pswitch_0
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Invalid Opcode for audit logging. Returning!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1298
    return-void

    .line 1239
    :pswitch_1
    :try_start_1
    iget-boolean v2, v11, Lcom/android/server/enterprise/dlp/DLPCache;->auditCreate:Z

    if-eqz v2, :cond_1

    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " /pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " created DLP file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] using ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1241
    .local v7, "message":Ljava/lang/String;
    const/4 v4, 0x1

    .line 1242
    const/4 v2, 0x5

    const/4 v3, 0x4

    move/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1308
    .end local v7    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1220
    .end local v11    # "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    :goto_1
    return-void

    .line 1244
    .local v7, "message":Ljava/lang/String;
    .restart local v11    # "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    :cond_1
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Audit logging is diabled or no config found for file create event, returning!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1308
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1245
    return-void

    .line 1251
    :pswitch_2
    :try_start_3
    iget-boolean v2, v11, Lcom/android/server/enterprise/dlp/DLPCache;->auditOpen:Z

    if-eqz v2, :cond_2

    .line 1252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " /pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " DLP file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] opened by ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1253
    .local v7, "message":Ljava/lang/String;
    const/4 v4, 0x1

    .line 1254
    const/4 v2, 0x5

    const/4 v3, 0x4

    move/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1304
    .end local v7    # "message":Ljava/lang/String;
    .end local v11    # "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    :catch_0
    move-exception v12

    .line 1305
    .local v12, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addToAuditLog exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1308
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 1256
    .end local v12    # "e":Ljava/lang/Exception;
    .local v7, "message":Ljava/lang/String;
    .restart local v11    # "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    :cond_2
    :try_start_5
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Audit logging is diabled or no config found for open event, returning!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1308
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1257
    return-void

    .line 1263
    :pswitch_3
    :try_start_6
    iget-boolean v2, v11, Lcom/android/server/enterprise/dlp/DLPCache;->auditRename:Z

    if-eqz v2, :cond_3

    .line 1264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " /pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "renamed DLP file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] using ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1265
    .local v7, "message":Ljava/lang/String;
    const/4 v4, 0x1

    .line 1266
    const/4 v2, 0x5

    const/4 v3, 0x4

    move/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1307
    .end local v7    # "message":Ljava/lang/String;
    .end local v11    # "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    :catchall_0
    move-exception v2

    .line 1308
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    throw v2

    .line 1268
    .local v7, "message":Ljava/lang/String;
    .restart local v11    # "dlpCache":Lcom/android/server/enterprise/dlp/DLPCache;
    :cond_3
    :try_start_7
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Audit logging is diabled or no config found for file rename event, returning!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1308
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1269
    return-void

    .line 1274
    :pswitch_4
    :try_start_8
    iget-boolean v2, v11, Lcom/android/server/enterprise/dlp/DLPCache;->auditExpired:Z

    if-eqz v2, :cond_4

    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " /pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "attempt to access expired DLP file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] by ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1276
    .local v7, "message":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1277
    const/4 v2, 0x4

    const/4 v3, 0x4

    move/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1279
    .local v7, "message":Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Audit logging is diabled or no config found for file expired event, returning!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1308
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1280
    return-void

    .line 1286
    :pswitch_5
    :try_start_9
    iget-boolean v2, v11, Lcom/android/server/enterprise/dlp/DLPCache;->auditUnauthorized:Z

    if-eqz v2, :cond_5

    .line 1287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " /pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " DLP file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] access denied to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1288
    .local v7, "message":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1289
    const/4 v2, 0x1

    const/4 v3, 0x4

    move/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1291
    .local v7, "message":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Audit logging is diabled or no config found for access denied event, returning!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1308
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1292
    return-void

    .line 1301
    :cond_6
    :try_start_a
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "DLP config doesn\'t exist for user or caller is not media provider or trusted component.. UIDs dont match !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 1235
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump DLPManagerPolicyService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1392
    const-string/jumbo v1, "android.permission.DUMP"

    .line 1391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    return-void

    .line 1396
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1389
    return-void
.end method

.method public getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 885
    const/4 v0, 0x0

    .line 887
    .local v0, "ret":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 888
    return-object v3

    .line 891
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v1

    if-nez v1, :cond_1

    .line 892
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "In getDLPConfig: dlpHelper is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-object v3

    .line 896
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 898
    .local v0, "ret":Landroid/os/Bundle;
    return-object v0
.end method

.method public getPackagesFromAllowDLPWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 639
    if-nez p1, :cond_0

    .line 640
    return-object v2

    .line 643
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 644
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "In getPackagesFromAllowDLPWhiteList: dlpHelper is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-object v2

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getPackagesFromAllowWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDLPActivated(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1040
    invoke-static {p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v0

    return v0
.end method

.method public isShareAllowed(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 25
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .prologue
    .line 1124
    if-nez p1, :cond_0

    .line 1125
    sget-object v22, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "DLP: isShareAllowed: ctxInfo is null, returning false!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/16 v22, 0x0

    return v22

    .line 1128
    :cond_0
    const/4 v12, 0x1

    .line 1130
    .local v12, "isShareAllowed":Z
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 1131
    const-string/jumbo v22, "isAllowedToShare"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1133
    if-nez p2, :cond_1

    .line 1134
    sget-object v22, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "isShareAllowed. selectionArgs is null. return true"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/16 v22, 0x1

    return v22

    .line 1137
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getPackagesFromAllowDLPWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v17

    .line 1138
    .local v17, "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    const/4 v10, 0x0

    .line 1139
    .local v10, "isConsumerAppDLP":Z
    const/4 v7, 0x0

    .line 1140
    .local v7, "isCallerAppDLP":Z
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1196
    :cond_2
    if-eqz v7, :cond_4

    .line 1197
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isLocked(I)Z

    move-result v11

    .line 1198
    .local v11, "isLocked":Z
    if-eqz v10, :cond_3

    if-eqz v10, :cond_4

    if-eqz v11, :cond_4

    .line 1199
    :cond_3
    sget-object v22, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isShareAllowed is false - isLocked:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " isCallerAppDLP:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " isConsumerAppDLP:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/4 v12, 0x0

    .line 1215
    .end local v7    # "isCallerAppDLP":Z
    .end local v10    # "isConsumerAppDLP":Z
    .end local v11    # "isLocked":Z
    .end local v17    # "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    :cond_4
    :goto_0
    return v12

    .line 1143
    .restart local v7    # "isCallerAppDLP":Z
    .restart local v10    # "isConsumerAppDLP":Z
    .restart local v17    # "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1144
    .local v19, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "android"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v5

    .line 1145
    .local v5, "ctx":Landroid/content/Context;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 1146
    const/16 v22, 0x0

    aget-object v22, p2, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1147
    .local v21, "uid":I
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "pkgInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    .line 1148
    .local v15, "pkgInfo":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    iget-object v0, v15, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 1149
    .local v13, "packageName":Ljava/lang/String;
    iget-object v0, v15, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v20

    .line 1151
    .local v20, "signature":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 1153
    .local v8, "identity":J
    :try_start_1
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_6

    move-object/from16 v0, v20

    invoke-static {v5, v13, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1154
    :cond_6
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    .line 1155
    .local v18, "pkguid":I
    move/from16 v0, v21

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1157
    const/4 v10, 0x1

    .line 1159
    :cond_7
    move/from16 v0, p5

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1161
    const/4 v7, 0x1

    .line 1165
    .end local v18    # "pkguid":I
    :cond_8
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1211
    .end local v5    # "ctx":Landroid/content/Context;
    .end local v7    # "isCallerAppDLP":Z
    .end local v8    # "identity":J
    .end local v10    # "isConsumerAppDLP":Z
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "pkgInfo":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    .end local v16    # "pkgInfo$iterator":Ljava/util/Iterator;
    .end local v17    # "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "signature":Ljava/lang/String;
    .end local v21    # "uid":I
    :catch_0
    move-exception v6

    .line 1212
    .local v6, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 1213
    sget-object v22, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Exception in isShareAllowed : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1164
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "ctx":Landroid/content/Context;
    .restart local v7    # "isCallerAppDLP":Z
    .restart local v8    # "identity":J
    .restart local v10    # "isConsumerAppDLP":Z
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v15    # "pkgInfo":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    .restart local v16    # "pkgInfo$iterator":Ljava/util/Iterator;
    .restart local v17    # "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "signature":Ljava/lang/String;
    .restart local v21    # "uid":I
    :catchall_0
    move-exception v22

    .line 1165
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1164
    throw v22

    .line 1169
    .end local v8    # "identity":J
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "pkgInfo":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    .end local v16    # "pkgInfo$iterator":Ljava/util/Iterator;
    .end local v20    # "signature":Ljava/lang/String;
    .end local v21    # "uid":I
    :cond_9
    const/16 v22, 0x0

    aget-object v22, p2, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1170
    .restart local v21    # "uid":I
    const/16 v22, 0x1

    aget-object v22, p2, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1171
    .local v14, "pid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v4

    .line 1172
    .local v4, "consumerPkgName":Ljava/lang/String;
    sget-object v22, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isShareAllowed consumerPkgName : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "pkgInfo$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    .line 1174
    .restart local v15    # "pkgInfo":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    iget-object v0, v15, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 1175
    .restart local v13    # "packageName":Ljava/lang/String;
    iget-object v0, v15, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v20

    .line 1176
    .restart local v20    # "signature":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v8

    .line 1178
    .restart local v8    # "identity":J
    :try_start_4
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    move-object/from16 v0, v20

    invoke-static {v5, v13, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 1179
    :cond_a
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v18

    .line 1180
    .restart local v18    # "pkguid":I
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v22

    if-eqz v22, :cond_b

    .line 1182
    const/4 v10, 0x1

    .line 1184
    :cond_b
    move/from16 v0, p5

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1186
    const/4 v7, 0x1

    .line 1190
    .end local v18    # "pkguid":I
    :cond_c
    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 1189
    :catchall_1
    move-exception v22

    .line 1190
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1189
    throw v22

    .line 1205
    .end local v4    # "consumerPkgName":Ljava/lang/String;
    .end local v5    # "ctx":Landroid/content/Context;
    .end local v7    # "isCallerAppDLP":Z
    .end local v8    # "identity":J
    .end local v10    # "isConsumerAppDLP":Z
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pid":I
    .end local v15    # "pkgInfo":Lcom/samsung/android/knox/dlp/DLPPackageInfo;
    .end local v16    # "pkgInfo$iterator":Ljava/util/Iterator;
    .end local v17    # "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/dlp/DLPPackageInfo;>;"
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "signature":Ljava/lang/String;
    .end local v21    # "uid":I
    :cond_d
    sget-object v22, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "In the default case"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const/16 v22, 0x0

    return v22

    .line 1209
    :cond_e
    sget-object v22, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "DLP Is not activated"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public notifyDLPOpenedFile(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "processId"    # I
    .param p3, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 1349
    if-nez p1, :cond_0

    .line 1350
    sget-object v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "DLP: notifyDLPOpenedFile: cxtInfo is null, returning false!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    return v11

    .line 1353
    :cond_0
    const/4 v6, 0x0

    .line 1355
    .local v6, "ret":Z
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1357
    .local v7, "uid":I
    sget-object v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyDLPOpenedFile() called with containerID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1358
    const-string/jumbo v10, " processId = "

    .line 1357
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1359
    const-string/jumbo v10, " filePath = "

    .line 1357
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1360
    const-string/jumbo v10, "Calling UID = "

    .line 1357
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v8, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1362
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v8, "com.android.providers.media"

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 1363
    const-string/jumbo v8, "com.android.providers.downloads"

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 1364
    sget-object v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "notifyDLPOpenedFile() caller is not authorised permission denied"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    return v11

    .line 1368
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "uid":I
    :catch_0
    move-exception v2

    .line 1369
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception occured : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return v11

    .line 1372
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "uid":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1374
    .local v0, "callingUid":J
    :try_start_1
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p3, v8}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1375
    .local v5, "realPath":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1377
    :cond_2
    sget-object v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "path translation failed for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    move-object v5, p3

    .line 1380
    :cond_3
    iget-object v8, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v3

    .line 1381
    .local v3, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    aput-object v5, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x3

    invoke-virtual {v3, v9, v10, v8}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 1383
    .local v6, "ret":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1385
    return v6

    .line 1382
    .end local v3    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v5    # "realPath":Ljava/lang/String;
    .local v6, "ret":Z
    :catchall_0
    move-exception v8

    .line 1383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1382
    throw v8
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 950
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 951
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "add DLPManagerPolicyService to system"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 926
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 931
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 936
    return-void
.end method

.method public registerEnterpriseDLPpolicyReciever()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 436
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEnterpriseDLPpolicyReciever - Binding the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    .line 438
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 439
    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 434
    return-void
.end method

.method public removeDLPFiles(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "onlyExpired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 903
    const/4 v0, 0x0

    .line 905
    .local v0, "ret":Z
    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->enforceKnoxDLPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 906
    if-nez p1, :cond_0

    .line 907
    const/4 v3, 0x0

    return v3

    .line 910
    :cond_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 911
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPInterface(I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v3

    if-nez v3, :cond_1

    .line 912
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->bindToDLPService(I)V

    .line 914
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDLPFiles => onlyExpired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 915
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPInterface(I)Lcom/samsung/android/knox/dlp/IFrameworkConnector;

    move-result-object v1

    .line 916
    .local v1, "serviceConn":Lcom/samsung/android/knox/dlp/IFrameworkConnector;
    if-eqz v1, :cond_2

    .line 917
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "DLP : notify DLPService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-interface {v1, p2}, Lcom/samsung/android/knox/dlp/IFrameworkConnector;->removeDLPFiles(Z)Z

    move-result v3

    return v3

    .line 921
    :cond_2
    return v0
.end method

.method public removePackagesFromAllowDLPWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 7
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 610
    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->enforceKnoxDLPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 611
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 612
    :cond_0
    return v6

    .line 615
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v3

    if-nez v3, :cond_2

    .line 616
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "In removePackagesFromAllowDLPWhiteList: dlpHelper is not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return v6

    .line 620
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    iget-object v4, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->feederToMdmMigration(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V

    .line 622
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 623
    .local v2, "userId":I
    invoke-static {v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 624
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "packageName$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 625
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v3, p1, v0, v5}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isListAppsContainsDLPPackageInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 626
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V

    goto :goto_0

    .line 630
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "packageName$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->removePackagesFromAllowWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 631
    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpCacheHelper:Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->updateUserDLPCacheFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    return v3

    .line 633
    :cond_5
    return v6
.end method

.method public setDLPConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 653
    const/4 v0, 0x0

    .line 655
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->enforceKnoxDLPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 656
    if-nez p1, :cond_0

    .line 657
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "DLP: setDLPConfig: cxtInfo is null, returning false!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return v3

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->isDLPKernelEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 662
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v1

    const-string/jumbo v2, "setDLPConfig /dev/sdp_dlp is not found, need to port DLP Kernel"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 664
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "In setDLPConfig: /dev/sdp_dlp is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return v3

    .line 668
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v1

    if-nez v1, :cond_2

    .line 669
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "In setDLPConfig: dlpHelper is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return v3

    .line 673
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->feederToMdmMigration(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V

    .line 674
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    move-result v0

    .line 676
    .local v0, "ret":Z
    return v0
.end method

.method public setExpiryDate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1316
    if-nez p1, :cond_0

    .line 1317
    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "DLP: setExpiryDate: cxtInfo is null, returning false!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return v8

    .line 1320
    :cond_0
    const/4 v4, 0x0

    .line 1321
    .local v4, "ret":Z
    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setExpiryDate() called with containerID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1322
    const-string/jumbo v7, " file name = "

    .line 1321
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1323
    const-string/jumbo v7, " time = "

    .line 1321
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-virtual {v5}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->checkDLPCaller()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1326
    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setExpiryDate() caller is not authorised permission denied"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    return v8

    .line 1330
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1332
    .local v0, "callingUid":J
    :try_start_0
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p2, v5}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1333
    .local v3, "realPath":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1334
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "path translation failed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    move-object v3, p2

    .line 1337
    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v2

    .line 1338
    .local v2, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7, v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1340
    .local v4, "ret":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1343
    return v4

    .line 1339
    .end local v2    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v3    # "realPath":Ljava/lang/String;
    .local v4, "ret":Z
    :catchall_0
    move-exception v5

    .line 1340
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    throw v5
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 941
    return-void
.end method
