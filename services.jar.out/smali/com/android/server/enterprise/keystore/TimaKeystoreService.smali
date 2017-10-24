.class public Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.super Lcom/sec/enterprise/knox/keystore/ITimaKeystore$Stub;
.source "TimaKeystoreService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "defaultpackage"

.field private static final DOWNLOADABLEKEYSTORE_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.BIND_TIMA_KS_CCM"

.field private static final DOWNLOADABLEKEYSTORE_PACKAGE:Ljava/lang/String; = "com.sec.downloadablekeystore"

.field private static final FIPS_TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/fips_tima_keystore/"

.field private static final GET_ADMINCONTAINER_CCMBUILDUPDATE:I = 0x5

.field private static final GET_ADMINLUIDLIST:I = 0x0

.field private static final GET_CONTAINEROWNERUID:I = 0x1

.field private static final GET_MUMCONTAINEROWNERUID:I = 0x2

.field private static final KNOX_DKS_INTERNAL_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DKS_INTERNAL"

.field private static final KNOX_KEYSTORE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

.field private static final KNOX_KEYSTORE_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KEYSTORE"

.field private static final KNOX_KEYSTORE_PER_APP_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP"

.field private static final KNOX_KEYSTORE_PER_APP_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KEYSTORE_PER_APP"

.field private static final RESTART_DKS_TIMEOUT_MILLIS:I = 0x1f4

.field private static final SET_ADMIN_INFO_TABLE_FORDEFAULTCCMPROFILE:I = 0x3

.field private static final SET_USER_CCM_PROVISIONED:I = 0x4

.field private static TAG:Ljava/lang/String; = null

.field private static final TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/tima_keystore/"

.field private static mInternalHandler:Landroid/os/Handler;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field final interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Z

.field private mContext:Landroid/content/Context;

.field private mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsTimaVersion30:Z

.field private mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimaService:Landroid/service/tima/ITimaService;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mBound:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecordPerApp(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;Z)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z
    .locals 1
    .param p1, "path"    # Ljava/io/File;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->scheduleDKSRestart()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->startDownlodableKeystoreServices()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V
    .locals 0
    .param p1, "currentPhase"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->systemReady(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    .line 118
    const-string/jumbo v0, "TimaKeystoreService"

    sput-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Lcom/sec/enterprise/knox/keystore/ITimaKeystore$Stub;-><init>()V

    .line 116
    iput-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    .line 122
    iput-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 124
    iput-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 139
    const-string/jumbo v1, "tima"

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TIMA_SERVICE:Ljava/lang/String;

    .line 143
    iput-boolean v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    .line 145
    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;)V

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    .line 182
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    .line 183
    iput-boolean v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mBound:Z

    .line 882
    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_0

    .line 151
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "TimaKeystoreService Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    .line 154
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    .line 155
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 158
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 159
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    .line 160
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->setupIntentFilters()V

    .line 163
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_2

    .line 165
    :try_start_0
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1

    .line 166
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Called TIMA service getTimaVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_2
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bindDownlodableKeystoreService()I
    .locals 4

    .prologue
    .line 238
    const/4 v0, -0x1

    .line 239
    .local v0, "ret":I
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bindDownlodableKeystoreService - DOWNLOADABLEKEYSTORE_BIND_ACTION -- "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->getService()Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v1

    .line 242
    .local v1, "service":Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    if-eqz v1, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :cond_0
    return v0
.end method

.method private deletePackageRecord(ILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 998
    const/4 v4, 0x2

    :try_start_0
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v4, "uid"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 999
    const-string/jumbo v4, "pkgName"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 1000
    .local v1, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1001
    .local v2, "sUid":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 1002
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "TimaKeystorePolicy"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 1003
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sUid":Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deletePackageRecord() failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return v7
.end method

.method private deletePackageRecord(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1025
    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "pkgName"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 1026
    .local v1, "sColumns":[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1027
    .local v2, "sValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "TimaKeystorePolicy"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1028
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deletePackageRecord() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return v6
.end method

.method private deletePackageRecordPerApp(ILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1011
    const/4 v4, 0x2

    :try_start_0
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v4, "uid"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 1012
    const-string/jumbo v4, "pkgName"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 1013
    .local v1, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1014
    .local v2, "sUid":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 1015
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "TimaKeystorePerAppPolicy"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 1017
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sUid":Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deletePackageRecordPerApp() failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return v7
.end method

.method private enforcePermission()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 318
    return-void

    .line 322
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_KEYSTORE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforcePermissionDks()V
    .locals 3

    .prologue
    .line 366
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 367
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_DKS_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private enforcePermissionPerApp()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 331
    return-void

    .line 337
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 341
    :catch_1
    move-exception v1

    .line 343
    .local v1, "e1":Ljava/lang/SecurityException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_KEYSTORE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 344
    :catch_2
    move-exception v2

    .line 345
    .local v2, "e2":Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_KEYSTORE_PER_APP"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforcePermissionPerAppOnly()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 353
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 354
    return-void

    .line 357
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_KEYSTORE_PER_APP"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getService()Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 187
    iget-object v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    if-nez v5, :cond_1

    .line 188
    iget-object v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 189
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.BIND_TIMA_KS_CCM"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.sec.downloadablekeystore"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$2;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    .line 215
    .local v1, "connection":Landroid/content/ServiceConnection;
    iget-object v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v1, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mBound:Z

    .line 216
    iget-boolean v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mBound:Z

    if-eqz v5, :cond_1

    .line 217
    const/4 v4, 0x0

    .line 219
    .local v4, "interfacedksservice":Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-object v4, v0

    .line 220
    .local v4, "interfacedksservice":Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    sget-object v5, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "take interface using queue"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v4    # "interfacedksservice":Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    :goto_0
    if-nez v4, :cond_0

    .line 226
    sget-object v5, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "takeInterfaceOnBlockingQueue bind service is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-object v7

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v5, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iput-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    .line 234
    .end local v1    # "connection":Landroid/content/ServiceConnection;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    return-object v5
.end method

.method private insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 963
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 964
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 965
    const-string/jumbo v3, "pkgName"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string/jumbo v3, "enabled"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 968
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 969
    .local v2, "whereValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "TimaKeystorePolicy"

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 973
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "whereValues":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 974
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insertOrUpdatePackageRecord() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v3, 0x0

    return v3
.end method

.method private insertOrUpdatePackageRecordPerApp(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 981
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 982
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 983
    const-string/jumbo v3, "pkgName"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 986
    .local v2, "whereValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 987
    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "TimaKeystorePerAppPolicy"

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 990
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "whereValues":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 991
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insertOrUpdatePackageRecordPerApp() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v3, 0x0

    return v3
.end method

.method private removeUserKeyDirectory(Ljava/io/File;)Z
    .locals 5
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 945
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 946
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 947
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 948
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 949
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 950
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z

    .line 948
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 952
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 956
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    return v2

    .line 958
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private scheduleDKSRestart()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 273
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scheduleDKSRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    return-void
.end method

.method private setupIntentFilters()V
    .locals 5

    .prologue
    .line 866
    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_0

    .line 867
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in setupIntentFilters"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    new-instance v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    .line 869
    .local v2, "receiver":Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 870
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 872
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 873
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 875
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 876
    .local v0, "addRemoveUserFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string/jumbo v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 878
    const-string/jumbo v3, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 865
    return-void
.end method

.method private startDownlodableKeystoreServices()V
    .locals 9

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 251
    .local v2, "inittime":J
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->bindDownlodableKeystoreService()I

    move-result v1

    .line 252
    .local v1, "ret":I
    if-nez v1, :cond_1

    .line 253
    sget-object v6, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Binded Successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    iget-object v6, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    if-eqz v6, :cond_0

    .line 260
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;->startTimaKeystoreServices(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v2

    .line 268
    .local v4, "interval":J
    sget-object v6, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TIME TAKEN = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 255
    .end local v4    # "interval":J
    :cond_1
    sget-object v6, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Binding Failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private systemReady(I)V
    .locals 5
    .param p1, "currentPhase"    # I

    .prologue
    const/4 v4, 0x3

    .line 1065
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady() Phase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    packed-switch p1, :pswitch_data_0

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1082
    :pswitch_0
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1083
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1084
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1066
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method static native timaSetLicenseStatus(Z)Z
.end method


# virtual methods
.method public enableTimaKeystore(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 378
    sget-boolean v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v4, :cond_0

    .line 379
    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in enableTimaKeystore"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V

    .line 383
    iget-boolean v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v4, :cond_2

    .line 384
    sget-boolean v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v4, :cond_1

    .line 385
    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableTimaKeystore - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_1
    return v6

    .line 389
    :cond_2
    if-eqz p1, :cond_4

    .line 392
    :try_start_0
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {v2, v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 393
    .local v2, "newContextInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 395
    .local v3, "userId":I
    const-string/jumbo v4, "defaultpackage"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 396
    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableTimaKeystore: deletePackageRecord failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "caller":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4, v0, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 402
    .end local v0    # "caller":Ljava/lang/String;
    .end local v2    # "newContextInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v3    # "userId":I
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "enableTimaKeystore() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    return v6
.end method

.method public enableTimaKeystorePerApp(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 550
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_0

    .line 551
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in enableTimaKeystorePerApp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionPerApp()V

    .line 555
    iget-boolean v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v2, :cond_2

    .line 556
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_1

    .line 557
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "enableTimaKeystorePerApp - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_1
    return v4

    .line 562
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "caller":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 564
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecordPerApp(ILjava/lang/String;)Z

    move-result v2

    return v2

    .line 566
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDBPerApp(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 567
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_4

    .line 568
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "disable is called, and caller is enabled. try to delete and return the result"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecordPerApp(ILjava/lang/String;)Z

    move-result v2

    return v2

    .line 571
    :cond_5
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_6

    .line 572
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "disable is called, but caller is not enabled. return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :cond_6
    const/4 v2, 0x1

    return v2

    .line 576
    .end local v0    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "enableTimaKeystorePerApp() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 580
    return v4
.end method

.method public getContainerAdminDetails(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 34
    .param p1, "cmd"    # I
    .param p2, "input"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 418
    sget-boolean v30, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v30, :cond_0

    .line 419
    sget-object v30, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v31, "in getContainerAdminDetails"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionDks()V

    .line 423
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 425
    .local v21, "resultbundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 427
    .local v24, "token":J
    packed-switch p1, :pswitch_data_0

    .line 537
    :cond_1
    :goto_0
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 540
    return-object v21

    .line 429
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 430
    .local v8, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_1

    .line 431
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [J

    move-object/from16 v29, v0

    .line 432
    .local v29, "values":[J
    const/16 v23, 0x0

    .line 433
    .local v23, "tempcount":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "adminId$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 434
    .local v6, "adminId":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    aput-wide v30, v29, v23

    .line 435
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 438
    .end local v6    # "adminId":Ljava/lang/Long;
    :cond_2
    const-string/jumbo v30, "ADMINLUIDLIST"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 536
    .end local v7    # "adminId$iterator":Ljava/util/Iterator;
    .end local v8    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v23    # "tempcount":I
    .end local v29    # "values":[J
    :catchall_0
    move-exception v30

    .line 537
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    throw v30

    .line 444
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v20

    .line 445
    .local v20, "ownerUid":I
    const-string/jumbo v30, "CONTAINEROWNERUID"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 450
    .end local v20    # "ownerUid":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v19

    .line 451
    .local v19, "mumContainerOwnerUid":I
    const-string/jumbo v30, "MUMCONTAINEROWNERUID"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 456
    .end local v19    # "mumContainerOwnerUid":I
    :pswitch_3
    move/from16 v12, p2

    .line 457
    .local v12, "callerUID":I
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 458
    .local v16, "cvUid":Landroid/content/ContentValues;
    const-string/jumbo v30, "adminUid"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    const-string/jumbo v30, "adminName"

    const-string/jumbo v31, "CCM-System"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string/jumbo v30, "canRemove"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 462
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 463
    .local v17, "cvUidWhere":Landroid/content/ContentValues;
    const-string/jumbo v30, "adminUid"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    const-string/jumbo v31, "ADMIN_INFO"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v22

    .line 467
    .local v22, "ret":Z
    const-string/jumbo v30, "SET_ADMIN_INFO_TABLE_FORDEFAULTCCMPROFILE"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 472
    .end local v12    # "callerUID":I
    .end local v16    # "cvUid":Landroid/content/ContentValues;
    .end local v17    # "cvUidWhere":Landroid/content/ContentValues;
    .end local v22    # "ret":Z
    :pswitch_4
    move/from16 v27, p2

    .line 473
    .local v27, "userId":I
    const-string/jumbo v30, "user"

    invoke-static/range {v30 .. v30}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    .line 474
    .local v10, "b":Landroid/os/IBinder;
    invoke-static {v10}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v26

    check-cast v26, Lcom/android/server/pm/UserManagerService;

    .line 475
    .local v26, "umService":Lcom/android/server/pm/UserManagerService;
    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->setUserCCMProvisioned(I)V

    goto/16 :goto_0

    .line 481
    .end local v10    # "b":Landroid/os/IBinder;
    .end local v26    # "umService":Lcom/android/server/pm/UserManagerService;
    .end local v27    # "userId":I
    :pswitch_5
    const/4 v4, 0x0

    .line 482
    .local v4, "DB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 483
    .local v11, "c":Landroid/database/Cursor;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v15, "containerId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    .local v9, "adminUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "/data/system/enterprise.db"

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v30 .. v33}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 487
    .local v4, "DB":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v4, :cond_6

    .line 488
    const-string/jumbo v30, "SELECT * FROM MUMCONTAINER;"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 489
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_6

    .line 490
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v30

    if-eqz v30, :cond_6

    .line 491
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v30

    if-nez v30, :cond_6

    .line 492
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 499
    .end local v4    # "DB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v18

    .line 501
    .local v18, "e":Ljava/lang/Exception;
    if-eqz v11, :cond_3

    .line 502
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 503
    :cond_3
    if-eqz v4, :cond_4

    .line 504
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 507
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_1

    .line 508
    sget-object v30, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v31, "Container list"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_a

    .line 521
    :cond_5
    :goto_4
    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_1

    .line 522
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 523
    .local v28, "values":[I
    const/16 v23, 0x0

    .line 524
    .restart local v23    # "tempcount":I
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "container$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 525
    .local v13, "container":I
    aput v13, v28, v23

    .line 526
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 501
    .end local v13    # "container":I
    .end local v14    # "container$iterator":Ljava/util/Iterator;
    .end local v23    # "tempcount":I
    .end local v28    # "values":[I
    .restart local v4    # "DB":Landroid/database/sqlite/SQLiteDatabase;
    :cond_6
    if-eqz v11, :cond_7

    .line 502
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 503
    :cond_7
    if-eqz v4, :cond_4

    .line 504
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 500
    .end local v4    # "DB":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v30

    .line 501
    if-eqz v11, :cond_8

    .line 502
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 503
    :cond_8
    if-eqz v4, :cond_9

    .line 504
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 500
    :cond_9
    throw v30

    .line 511
    :cond_a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 512
    .restart local v28    # "values":[I
    const/16 v23, 0x0

    .line 513
    .restart local v23    # "tempcount":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "adminId$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 514
    .local v5, "adminId":I
    aput v5, v28, v23

    .line 515
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 518
    .end local v5    # "adminId":I
    :cond_b
    const-string/jumbo v30, "ADMINLUIDLIST"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_4

    .line 529
    .end local v7    # "adminId$iterator":Ljava/util/Iterator;
    .restart local v14    # "container$iterator":Ljava/util/Iterator;
    :cond_c
    const-string/jumbo v30, "CONTAINERIDLIST"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isTimaKeyStoreDefaultForContainer(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 587
    const/4 v2, 0x0

    .line 588
    .local v2, "ret":Z
    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_0

    .line 589
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in isTimaKeyStoreDefaultForContainer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    .line 592
    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_1

    .line 593
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isTimaKeyStoreDefaultForContainer - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 598
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const v4, 0x186a0

    div-int/2addr v3, v4

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    const/4 v1, 0x1

    .line 599
    .local v1, "isUserContainer":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 598
    .end local v1    # "isUserContainer":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isUserContainer":Z
    goto :goto_0

    .line 602
    .end local v1    # "isUserContainer":Z
    :catch_0
    move-exception v0

    .line 603
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTimaKeyStoreDefaultForContainer() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4
    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_5

    .line 607
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTimaKeyStoreDefaultForContainer returning - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_5
    return v2
.end method

.method public isTimaKeystoreEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 721
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_0

    .line 722
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in isTimaKeystoreEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 725
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_1

    .line 726
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isTimaKeystoreEnabled - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_1
    return v6

    .line 730
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    .line 731
    return v5

    .line 734
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 735
    return v5

    .line 736
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDBPerApp(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 737
    return v5

    .line 740
    :cond_5
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Binder.getCallingPid() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Binder.getCallingUid()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 741
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v0

    if-nez v0, :cond_6

    .line 743
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 745
    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 746
    const-string/jumbo v3, "knox_timakeystore_policy"

    const-string/jumbo v4, "isTimaKeystoreEnabled"

    .line 745
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 747
    return v5

    .line 751
    :cond_7
    return v6
.end method

.method public isTimaKeystoreEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 810
    const/4 v11, 0x0

    .line 811
    .local v11, "ret":Z
    sget-boolean v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v13, :cond_0

    .line 812
    sget-object v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "in isTimaKeystoreEnabledForPackage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v13, :cond_2

    .line 815
    sget-boolean v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v13, :cond_1

    .line 816
    sget-object v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "isTimaKeystoreEnabledForPackage - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_1
    const/4 v13, 0x0

    return v13

    .line 821
    :cond_2
    :try_start_0
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {v8, v13, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 822
    .local v8, "newContextInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 824
    .local v12, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 826
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    const/16 v13, 0x80

    move-object/from16 v0, p2

    invoke-interface {v9, v0, v13, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 827
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v13, 0x1

    new-array v3, v13, [Ljava/lang/String;

    const-string/jumbo v13, "enabled"

    const/4 v14, 0x0

    aput-object v13, v3, v14

    .line 829
    .local v3, "columns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v14, "TimaKeystorePolicy"

    .line 830
    const/4 v15, 0x0

    .line 829
    invoke-virtual {v13, v14, v3, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    .line 832
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 852
    :cond_3
    :goto_0
    if-nez v11, :cond_4

    if-eqz v1, :cond_4

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_4

    .line 853
    const/4 v11, 0x1

    .line 859
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v8    # "newContextInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v12    # "userId":I
    :cond_4
    :goto_1
    sget-boolean v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v13, :cond_5

    .line 860
    sget-object v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isTimaKeystoreEnabledForPackage returning - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_5
    return v11

    .line 833
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "columns":[Ljava/lang/String;
    .restart local v8    # "newContextInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v12    # "userId":I
    :cond_6
    const/4 v4, 0x0

    .line 834
    .local v4, "cv":Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 835
    .local v6, "isEnabled":Z
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 837
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "isEnabled":Z
    .local v7, "it":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 838
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 839
    .local v4, "cv":Landroid/content/ContentValues;
    if-eqz v4, :cond_8

    .line 840
    const-string/jumbo v13, "enabled"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 841
    .local v2, "bisEnabled":Ljava/lang/Boolean;
    if-eqz v2, :cond_8

    .line 842
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 845
    .end local v2    # "bisEnabled":Ljava/lang/Boolean;
    :cond_8
    if-eqz v6, :cond_7

    .line 846
    const/4 v11, 0x1

    .line 847
    goto :goto_0

    .line 855
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v7    # "it":Ljava/util/Iterator;
    .end local v8    # "newContextInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v12    # "userId":I
    :catch_0
    move-exception v5

    .line 856
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isTimaKeystoreEnabledForPackage() failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v10, 0x0

    .line 616
    const/4 v7, 0x0

    .line 617
    .local v7, "ret":Z
    sget-boolean v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v8, :cond_0

    .line 618
    sget-object v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "in isTimaKeystoreEnabledInDB"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    iget-boolean v8, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v8, :cond_2

    .line 621
    sget-boolean v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v8, :cond_1

    .line 622
    sget-object v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "isTimaKeystoreEnabledInDB - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_1
    return v10

    .line 627
    :cond_2
    const/4 v8, 0x1

    :try_start_0
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v8, "enabled"

    const/4 v9, 0x0

    aput-object v8, v1, v9

    .line 629
    .local v1, "columns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "TimaKeystorePolicy"

    .line 630
    const/4 v10, 0x0

    .line 629
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 632
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_5

    .line 656
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v6    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    :goto_0
    sget-boolean v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v8, :cond_4

    .line 657
    sget-object v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isTimaKeystoreEnabledInDB returning - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_4
    return v7

    .line 633
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v6    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_5
    const/4 v2, 0x0

    .line 634
    .local v2, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 635
    .local v4, "isEnabled":Z
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 637
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "isEnabled":Z
    .local v5, "it":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 638
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 639
    .local v2, "cv":Landroid/content/ContentValues;
    if-eqz v2, :cond_7

    .line 640
    const-string/jumbo v8, "enabled"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 641
    .local v0, "bisEnabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_7

    .line 642
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 646
    .end local v0    # "bisEnabled":Ljava/lang/Boolean;
    :cond_7
    if-eqz v4, :cond_6

    .line 647
    const/4 v7, 0x1

    .line 648
    goto :goto_0

    .line 652
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "it":Ljava/util/Iterator;
    .end local v6    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v3

    .line 653
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isTimaKeystoreEnabledInDB() failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isTimaKeystoreEnabledInDBPerApp(Landroid/app/enterprise/ContextInfo;)Z
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v13, 0x0

    .line 667
    const/4 v10, 0x0

    .line 668
    .local v10, "ret":Z
    const/4 v3, 0x0

    .line 669
    .local v3, "callingUid":I
    const/4 v0, 0x0

    .line 670
    .local v0, "caller":Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v11, :cond_0

    .line 671
    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "in isTimaKeystoreEnabledInDBPerApp"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    iget-boolean v11, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v11, :cond_2

    .line 674
    sget-boolean v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v11, :cond_1

    .line 675
    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "isTimaKeystoreEnabledInDBPerApp - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_1
    return v13

    .line 680
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 681
    iget-object v11, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 688
    .end local v0    # "caller":Ljava/lang/String;
    :goto_0
    const/4 v11, 0x2

    :try_start_1
    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v11, "uid"

    const/4 v12, 0x0

    aput-object v11, v4, v12

    .line 689
    const-string/jumbo v11, "pkgName"

    const/4 v12, 0x1

    aput-object v11, v4, v12

    .line 691
    .local v4, "columns":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 692
    const-string/jumbo v12, "TimaKeystorePerAppPolicy"

    const/4 v13, 0x0

    .line 691
    invoke-virtual {v11, v12, v4, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 694
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-eqz v11, :cond_5

    .line 712
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    :goto_1
    sget-boolean v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v11, :cond_4

    .line 713
    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isTimaKeystoreEnabledInDBPerApp returning -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_4
    return v10

    .line 682
    .restart local v0    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 683
    .local v7, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "isTimaKeystoreEnabledInDBPerApp() get callingUid, caller failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 695
    .end local v0    # "caller":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_5
    :try_start_2
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "cv$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 696
    .local v5, "cv":Landroid/content/ContentValues;
    const-string/jumbo v11, "uid"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 697
    .local v2, "callerUid":Ljava/lang/Integer;
    const-string/jumbo v11, "pkgName"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "callerPkg":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isTimaKeystoreEnabledInDBPerApp, callingUid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", caller = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", callerUid in DB = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", callerPkg in DB = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    if-eqz v2, :cond_6

    .line 701
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v3, v11, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 702
    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "isTimaKeystoreEnabledInDBPerApp matched. caller app can use TKS"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 703
    const/4 v10, 0x1

    .line 704
    goto/16 :goto_1

    .line 709
    .end local v1    # "callerPkg":Ljava/lang/String;
    .end local v2    # "callerUid":Ljava/lang/Integer;
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "cv$iterator":Ljava/util/Iterator;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_1
    move-exception v8

    .line 710
    .local v8, "ex":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isTimaKeystoreEnabledInDBPerApp() failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public isTimaKeystoreEnabledInternal(Landroid/app/enterprise/ContextInfo;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 758
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_0

    .line 759
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in isTimaKeystoreEnabledInternal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_0
    const/4 v1, 0x1

    .line 762
    .local v1, "isTKSEnabledPerApp":Z
    iget-boolean v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v2, :cond_2

    .line 763
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_1

    .line 764
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledInternal - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_1
    return v8

    .line 768
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_3

    .line 769
    return v7

    .line 772
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 773
    return v7

    .line 774
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDBPerApp(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 775
    return v7

    .line 779
    :cond_5
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Binder.getCallingPid() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Binder.getCallingUid()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 780
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_6

    .line 782
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 784
    :cond_6
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 785
    const-string/jumbo v5, "knox_timakeystore_policy"

    const-string/jumbo v6, "isTimaKeystoreEnabled"

    .line 784
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 786
    return v7

    .line 793
    :cond_7
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionPerAppOnly()V

    .line 794
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_8

    .line 795
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledInternal - this ctx is not in TKSperappDB, but has TKSperapp permission"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :cond_8
    return v7

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledInDBPerApp() no permission"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return v8
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1165
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1104
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1160
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1132
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1097
    return-void
.end method
