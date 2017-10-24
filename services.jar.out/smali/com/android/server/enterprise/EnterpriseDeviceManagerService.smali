.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.super Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final ACTIVATE_DEVICE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS"

.field public static final AVRCP_RESTRICTION_INTENT:I = 0x3

.field private static final BBC_METADATA:Ljava/lang/String; = "com.samsung.android.knoxenabled"

.field private static final BULK_ENROLL_DATA_FILE:Ljava/lang/String; = "BulkEnrollmentProfile"

.field public static final CAMERA_RESTRICTION_INTENT:I = 0x1

.field private static final CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field private static final EXCLUDED_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KLMS_PKG_NAME:Ljava/lang/String; = "com.samsung.klmsagent"

.field public static final MIC_RESTRICTION_INTENT:I = 0x2

.field private static final MIN_PERSONA_ID:I = 0x64

.field private static final MY_PID:I

.field public static final NEW_EMAIL_PKG_NAME:Ljava/lang/String; = "com.samsung.android.email.provider"

.field private static final NON_MDM_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERMISSION_KNOX_ACTIVATE_DEVICE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

.field private static final PERMISSION_KNOX_PROXY_ADMIN_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

.field private static final PERMISSION_KNOX_SILENT_ACTIVATION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SILENT_ACTIVATION_INTERNAL"

.field private static final PROXY_ADMIN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

.field private static final SELF_UPDATE_ADMIN_APK_FILE_DIR:Ljava/lang/String; = "/data/app/selfUpdateApks"

.field private static final SELF_UPDATE_ADMIN_APK_FILE_PATH:Ljava/lang/String; = "/data/app/selfUpdateApks/"

.field private static final SELF_UPDATE_ADMIN_COMPONENT_KEY:Ljava/lang/String; = "self_update_admin_component"

.field private static final SELF_UPDATE_ADMIN_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/selfUpdateAdmin.conf"

.field private static final SELF_UPDATE_ADMIN_SEPARATOR:Ljava/lang/String; = ";"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field private static final SILENT_ACTIVATION_PERMISION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

.field private static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "EnterpriseDeviceManagerService"

.field private static final UMC_DATA_PATH:Ljava/lang/String; = "/efs/umc"

.field public static final UMC_PACKAGENAME:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

.field private static mFirstInitializedPolicyServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field private static mInternalHandler:Landroid/os/Handler;

.field private static mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private static mPolicyServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/EnterpriseServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static mRemovingFromPkgName:Ljava/lang/String;

.field public static mRemovingFromUid:I

.field private static mSelfUpdateAdminComponent:Landroid/content/ComponentName;

.field private static mServiceAdditionCondition:Landroid/os/ConditionVariable;

.field private static mServicesAdded:Z


# instance fields
.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field final mDPM:Landroid/app/admin/DevicePolicyManager;

.field final mDPMS:Landroid/app/admin/IDevicePolicyManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field final mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

.field final mPMS:Landroid/content/pm/IPackageManager;

.field private mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# direct methods
.method static synthetic -get0()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1()Landroid/os/ConditionVariable;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -set0(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 1
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->cleanGenericTableOnUserRemoved(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Z)V
    .locals 0
    .param p1, "isFirstInitialized"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->initServices(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->onStartUser(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->selfUpdate()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V
    .locals 0
    .param p1, "mCurrentPhase"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->updateCurrentUser()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    .line 353
    const-string/jumbo v0, "com.samsung.android.email.provider"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string/jumbo v1, "com.samsung.android.email.provider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :goto_0
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string/jumbo v1, "com.sec.esdk.elm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string/jumbo v1, "com.samsung.android.email.provider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string/jumbo v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string/jumbo v1, "com.android.exchange"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string/jumbo v1, "com.sec.enterprise.knox.express"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string/jumbo v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 382
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    .line 391
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    .line 406
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    .line 430
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.sec.MDM_WIFI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_WIFI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "android.permission.sec.MDM_SECURITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    return-void

    .line 357
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string/jumbo v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string/jumbo v1, "com.android.exchange"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 2306
    invoke-direct {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;-><init>()V

    .line 272
    iput v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    .line 404
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    .line 405
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    .line 562
    new-instance v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;

    invoke-direct {v8, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2307
    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 2308
    const-string/jumbo v8, "package"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 2309
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    .line 2310
    const-string/jumbo v8, "device_policy"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    iput-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 2311
    const-string/jumbo v8, "device_policy"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 2312
    new-instance v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    invoke-direct {v8, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    .line 2313
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v8, p1, v10, v9, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 2315
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 2316
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v8

    sput-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 2317
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 2318
    new-instance v2, Lcom/android/server/enterprise/log/LogManagerService;

    invoke-direct {v2, p1}, Lcom/android/server/enterprise/log/LogManagerService;-><init>(Landroid/content/Context;)V

    .line 2319
    .local v2, "mLMS":Lcom/android/server/enterprise/log/LogManagerService;
    const-string/jumbo v8, "log_manager_service"

    invoke-static {v8, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2321
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->handleDowngrade()V

    .line 2323
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2324
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2325
    const-string/jumbo v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2326
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2328
    new-instance v8, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2332
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isFirmwareChanged()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2333
    const-string/jumbo v8, "EnterpriseDeviceManagerService"

    const-string/jumbo v9, "handleUpgrade: Checking Upgrade..."

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->handleFirmwareUpgrade()V

    .line 2335
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 2338
    const-string/jumbo v8, "ro.build.fingerprint"

    const-string/jumbo v9, "unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2339
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v8, "unknown"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2340
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "PlatformSoftwareVersion"

    invoke-virtual {v8, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2347
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "RESTRICTION"

    .line 2348
    const-string/jumbo v10, "firmwarerecoveryallowed"

    .line 2347
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 2349
    .local v4, "ret":Z
    const-string/jumbo v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RESTRICTION_FIRMWARE_RECOVERY_ALLOWED is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    if-eqz v4, :cond_1

    .line 2351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 2353
    .local v6, "token":J
    const/4 v8, 0x7

    :try_start_1
    invoke-static {v8, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeData(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2355
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2362
    .end local v4    # "ret":Z
    .end local v6    # "token":J
    :cond_1
    :goto_0
    new-instance v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-direct {v3, v8, v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V

    .line 2363
    .local v3, "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v9, "enterprise_license_policy"

    move-object v8, v3

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2364
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v9, "enterprise_license_policy"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2365
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v9, "enterprise_license_policy"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2367
    new-instance v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .end local v3    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    .line 2368
    .restart local v3    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v9, "application_policy"

    move-object v8, v3

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2369
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v9, "application_policy"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2370
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v9, "application_policy"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2372
    new-instance v3, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .end local v3    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Landroid/content/Context;)V

    .line 2373
    .restart local v3    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v9, "wifi_policy"

    move-object v8, v3

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2374
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v9, "wifi_policy"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2375
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v9, "wifi_policy"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2377
    new-instance v3, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .end local v3    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;-><init>(Landroid/content/Context;)V

    .line 2378
    .restart local v3    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v9, "phone_restriction_policy"

    move-object v8, v3

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2379
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v9, "phone_restriction_policy"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v9, "phone_restriction_policy"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2382
    new-instance v3, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .end local v3    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Landroid/content/Context;)V

    .line 2383
    .restart local v3    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v9, "remoteinjection"

    move-object v8, v3

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2384
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v9, "remoteinjection"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2385
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v9, "remoteinjection"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2387
    const-string/jumbo v8, "edm_proxy"

    new-instance v9, Lcom/android/server/enterprise/EDMProxyService;

    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/server/enterprise/EDMProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2306
    return-void

    .line 2354
    .end local v3    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v4    # "ret":Z
    .restart local v6    # "token":J
    :catchall_0
    move-exception v8

    .line 2355
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2354
    throw v8
    :try_end_3
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2358
    .end local v4    # "ret":Z
    .end local v6    # "token":J
    :catch_0
    move-exception v0

    .line 2359
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string/jumbo v8, "EnterpriseDeviceManagerService"

    const-string/jumbo v9, "RESTRICTION_FIRMWARE_RECOVERY_ALLOWED not found on database "

    invoke-static {v8, v9, v0}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private activateAdmin(Landroid/content/ComponentName;Z)V
    .locals 24
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z

    .prologue
    .line 1172
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    .line 1173
    .local v19, "userHandle":I
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Activating admin on user!!!!!! "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v7

    .line 1176
    .local v7, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-nez v7, :cond_0

    .line 1177
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Bad admin: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1180
    :cond_0
    const-string/jumbo v20, "restriction_policy"

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1181
    .local v16, "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v16, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkAdminActivationEnabled(ILjava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1185
    :cond_1
    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v20

    if-eqz v20, :cond_2

    sget-object v20, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1189
    :cond_2
    :goto_0
    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .line 1190
    .local v18, "uid":I
    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 1191
    .local v8, "compName":Landroid/content/ComponentName;
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Admin uid: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", Component name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1194
    .local v12, "ident":J
    const/16 v17, 0x1

    .line 1197
    .local v17, "ret":Z
    const/4 v6, 0x0

    .line 1200
    .local v6, "activationStatus":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1201
    if-nez p2, :cond_6

    :try_start_1
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v8, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 1202
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Admin is already added"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1200
    .end local v17    # "ret":Z
    :catchall_0
    move-exception v20

    :try_start_2
    monitor-exit p0

    throw v20
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1248
    :catch_0
    move-exception v9

    .line 1249
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1251
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1254
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1255
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v20, "android.accessory.device.action.ACTIVE_MDM"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1257
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "send to Gear Manager ."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    if-eqz v6, :cond_3

    .line 1260
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    const-string/jumbo v21, "Calling MSG_POST_ADMIN_ACTIVATION after Admin activation..."

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    sget-object v20, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/16 v21, 0x1

    const/16 v22, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    .line 1171
    :cond_3
    return-void

    .line 1182
    .end local v6    # "activationStatus":Z
    .end local v8    # "compName":Landroid/content/ComponentName;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "ident":J
    .end local v18    # "uid":I
    :cond_4
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Admin cannot be activated"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1186
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    goto/16 :goto_0

    .line 1204
    .restart local v6    # "activationStatus":Z
    .restart local v8    # "compName":Landroid/content/ComponentName;
    .restart local v12    # "ident":J
    .restart local v17    # "ret":Z
    .restart local v18    # "uid":I
    :cond_6
    if-nez p2, :cond_7

    .line 1205
    :try_start_4
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Adding admin "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " to lists"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v17

    .line 1213
    .end local v17    # "ret":Z
    :cond_7
    if-nez v17, :cond_8

    .line 1214
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Removing admin "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " from lists"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Unable to activate admin"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1220
    :cond_8
    sget-object v20, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "ps$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1221
    .local v14, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .end local v14    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_9
    :try_start_5
    monitor-exit p0

    .line 1229
    const/4 v10, 0x1

    .line 1196
    .local v10, "i":I
    :goto_3
    const/16 v20, 0x2

    .line 1229
    move/from16 v0, v20

    if-gt v10, v0, :cond_a

    .line 1230
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Attempt "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " to active admin in DPM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1233
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Admin sucessfully activated in DPM for user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const/4 v6, 0x1

    .line 1240
    :cond_a
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "EDM setActiveAdmin activationStatus -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " for user - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    if-nez v6, :cond_c

    .line 1242
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    const-string/jumbo v21, "Started removing admin information..."

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    new-instance v20, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1244
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1245
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "EDM - Admin activation failed for user -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1250
    .end local v10    # "i":I
    .end local v15    # "ps$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v20

    .line 1251
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1250
    throw v20

    .line 1237
    .restart local v10    # "i":I
    .restart local v15    # "ps$iterator":Ljava/util/Iterator;
    :cond_b
    :try_start_6
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Admin activation failed for user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1247
    :cond_c
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    const-string/jumbo v21, "Admin added to DPM!"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1251
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1
.end method

.method public static final addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .param p0, "service_name"    # Ljava/lang/String;
    .param p1, "service"    # Ljava/lang/Object;
    .param p2, "deferred"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 413
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    if-eqz v1, :cond_1

    instance-of v1, p1, Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 417
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    check-cast p1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .end local p1    # "service":Ljava/lang/Object;
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    if-nez p2, :cond_0

    .line 419
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 414
    .restart local p1    # "service":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "addPolicyService failed becuase it\'s not enterprise service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    .end local p1    # "service":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private addServices()V
    .locals 6

    .prologue
    .line 2391
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "addServices() : Adding services() ... "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    :try_start_0
    new-instance v2, Lcom/android/server/enterprise/device/DeviceInfo;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 2396
    .local v2, "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "device_info"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2397
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "device_info"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    new-instance v2, Lcom/android/server/enterprise/license/LicenseLogService;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/license/LicenseLogService;-><init>(Landroid/content/Context;)V

    .line 2400
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "license_log_service"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2401
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "license_log_service"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2403
    new-instance v2, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Landroid/content/Context;)V

    .line 2404
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "auditlog"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2405
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "auditlog"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    new-instance v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 2408
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "eas_account_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2409
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "eas_account_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    new-instance v2, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/email/EmailAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 2412
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "email_account_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2413
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "email_account_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    new-instance v2, Lcom/android/server/enterprise/location/LocationPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/location/LocationPolicy;-><init>(Landroid/content/Context;)V

    .line 2416
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "location_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2417
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "location_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    new-instance v2, Lcom/android/server/enterprise/general/MiscPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/general/MiscPolicy;-><init>(Landroid/content/Context;)V

    .line 2420
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "misc_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2421
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "misc_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2423
    new-instance v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;-><init>(Landroid/content/Context;)V

    .line 2424
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "vpn_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2425
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "vpn_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2427
    new-instance v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;-><init>(Landroid/content/Context;)V

    .line 2428
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "enterprise_vpn_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2429
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "enterprise_vpn_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2431
    new-instance v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;-><init>(Landroid/content/Context;)V

    .line 2432
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "restriction_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2433
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "restriction_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    new-instance v2, Lcom/android/server/enterprise/security/PasswordPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;-><init>(Landroid/content/Context;)V

    .line 2436
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "password_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2437
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "password_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    new-instance v2, Lcom/android/server/enterprise/security/SecurityPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Landroid/content/Context;)V

    .line 2440
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "security_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2441
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "security_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    new-instance v2, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/restriction/RoamingPolicy;-><init>(Landroid/content/Context;)V

    .line 2444
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "roaming_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2445
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "roaming_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    new-instance v2, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;-><init>(Landroid/content/Context;)V

    .line 2448
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "bluetooth_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2449
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "bluetooth_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2451
    new-instance v2, Lcom/android/server/enterprise/email/EmailPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/email/EmailPolicy;-><init>(Landroid/content/Context;)V

    .line 2452
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "email_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2453
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "email_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    new-instance v2, Lcom/android/server/enterprise/firewall/Firewall;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/firewall/Firewall;-><init>(Landroid/content/Context;)V

    .line 2456
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "firewall"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2457
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "firewall"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2459
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;-><init>(Landroid/content/Context;)V

    .line 2460
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "firewall_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2461
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "firewall_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2463
    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;-><init>(Landroid/content/Context;)V

    .line 2464
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "certificate_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2465
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "certificate_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2467
    new-instance v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;-><init>(Landroid/content/Context;)V

    .line 2468
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "apn_settings_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2469
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "apn_settings_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2471
    new-instance v2, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;-><init>(Landroid/content/Context;)V

    .line 2472
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "browser_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2473
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "browser_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2475
    new-instance v2, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/datetime/DateTimePolicy;-><init>(Landroid/content/Context;)V

    .line 2476
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "date_time_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2477
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "date_time_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2479
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;-><init>(Landroid/content/Context;)V

    .line 2480
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "kioskmode"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2481
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "kioskmode"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;-><init>(Landroid/content/Context;)V

    .line 2484
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "apppermission_control_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2485
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "apppermission_control_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2487
    new-instance v2, Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 2488
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "ldap_account_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2489
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "ldap_account_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2491
    new-instance v2, Lcom/android/server/enterprise/lso/LSOService;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/lso/LSOService;-><init>(Landroid/content/Context;)V

    .line 2492
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "lockscreen_overlay"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2493
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "lockscreen_overlay"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2495
    new-instance v2, Lcom/android/server/enterprise/geofencing/GeofenceService;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;-><init>(Landroid/content/Context;)V

    .line 2496
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "geofencing"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2497
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "geofencing"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2499
    new-instance v2, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 2500
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "device_account_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2501
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "device_account_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2503
    new-instance v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;-><init>(Landroid/content/Context;)V

    .line 2504
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "dualsim_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2505
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "dualsim_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2507
    new-instance v2, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;-><init>(Landroid/content/Context;)V

    .line 2508
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "bluetooth_secure_mode_policy"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2509
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "bluetooth_secure_mode_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2511
    new-instance v2, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;-><init>(Landroid/content/Context;)V

    .line 2512
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v4, "multi_user_manager_service"

    move-object v0, v2

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2513
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v4, "multi_user_manager_service"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2520
    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServicesAdded:Z

    .line 2523
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->notifyAddSystemService()V

    .line 2390
    return-void

    .line 2515
    :catch_0
    move-exception v1

    .line 2516
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addServices() : Failure creating Policy services"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private checkAdminExistsInELMDB(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2255
    .local v2, "ident":J
    :try_start_0
    const-string/jumbo v6, "enterprise_license_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 2256
    .local v5, "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-eqz v5, :cond_1

    .line 2257
    invoke-virtual {v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v4

    .line 2258
    .local v4, "list":[Lcom/samsung/android/knox/license/LicenseInfo;
    if-eqz v4, :cond_1

    .line 2259
    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v1, v4, v6

    .line 2260
    .local v1, "info":Lcom/samsung/android/knox/license/LicenseInfo;
    invoke-virtual {v1}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_0

    .line 2261
    const/4 v6, 0x1

    .line 2269
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2261
    return v6

    .line 2259
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2269
    .end local v1    # "info":Lcom/samsung/android/knox/license/LicenseInfo;
    .end local v4    # "list":[Lcom/samsung/android/knox/license/LicenseInfo;
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2272
    .end local v5    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :goto_1
    return v7

    .line 2266
    :catch_0
    move-exception v0

    .line 2267
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkAdminExistsInELMDB Ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2269
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 2268
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 2269
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2268
    throw v6
.end method

.method private checkCallerIsUMC()Z
    .locals 6

    .prologue
    .line 3212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3214
    .local v1, "uid":I
    const/4 v2, -0x1

    .line 3216
    .local v2, "umcuid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3221
    :goto_0
    if-ne v1, v2, :cond_0

    .line 3223
    const/4 v3, 0x1

    return v3

    .line 3217
    :catch_0
    move-exception v0

    .line 3218
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 3226
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private checkContainerOwnerShip(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/16 v5, 0x64

    .line 969
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 971
    .local v3, "userId":I
    if-ge v3, v5, :cond_0

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-ge v4, v5, :cond_0

    .line 972
    return-void

    .line 975
    :cond_0
    move v0, v3

    .line 977
    .local v0, "containerId":I
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-lt v4, v5, :cond_1

    .line 978
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 981
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 982
    .local v2, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 984
    .local v1, "ownerUid":I
    if-eq v1, v2, :cond_2

    .line 985
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Admin doesn\'t own container uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ContextInfo.uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 968
    :cond_2
    return-void
.end method

.method private checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/16 v4, 0x64

    .line 990
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 992
    .local v2, "userId":I
    if-ge v2, v4, :cond_0

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-ge v3, v4, :cond_0

    .line 993
    return-void

    .line 996
    :cond_0
    move v0, v2

    .line 998
    .local v0, "containerId":I
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-lt v3, v4, :cond_1

    .line 999
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1002
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 1004
    .local v1, "ownerUid":I
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v1, v3, :cond_2

    .line 1005
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Admin doesn\'t own container id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ContextInfo.uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 989
    :cond_2
    return-void
.end method

.method private checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 13
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
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3245
    new-array v0, v12, [Ljava/lang/String;

    .line 3246
    const-string/jumbo v9, "permissions"

    aput-object v9, v0, v11

    .line 3248
    .local v0, "columns":[Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3249
    .local v6, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v9, "proxyUid"

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3250
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "PROXY_ADMIN_INFO"

    invoke-virtual {v9, v10, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 3251
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3264
    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "permission$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3265
    .local v3, "permission":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-interface {v9, v3, v10}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_1

    .line 3266
    return v12

    .line 3252
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "permission$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string/jumbo v10, "permissions"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3253
    .local v7, "serializedPerms":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 3254
    const-string/jumbo v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3255
    .local v5, "perms":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3256
    .local v2, "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "permission$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3257
    .restart local v3    # "permission":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3258
    return v12

    .line 3268
    .end local v2    # "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "permission$iterator":Ljava/util/Iterator;
    .end local v5    # "perms":[Ljava/lang/String;
    .end local v7    # "serializedPerms":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3269
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "EnterpriseDeviceManagerService"

    const-string/jumbo v10, "could not check calling permission"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    return v11
.end method

.method private cleanGenericTableOnUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 581
    new-array v0, v4, [Ljava/lang/String;

    .line 582
    const-string/jumbo v2, "userID"

    aput-object v2, v0, v3

    .line 584
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    .line 585
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 587
    .local v1, "sValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "generic"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 580
    return-void
.end method

.method public static comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2229
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2230
    :cond_0
    const-string/jumbo v4, "EnterpriseDeviceManagerService"

    const-string/jumbo v6, "Invalid arguments"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    return v5

    .line 2233
    :cond_1
    const/4 v1, 0x0

    .line 2235
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v6, 0x40

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2240
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v1, :cond_3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_3

    .line 2241
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2242
    .local v3, "signs":[Landroid/content/pm/Signature;
    array-length v6, v3

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v2, v3, v4

    .line 2243
    .local v2, "sign":Landroid/content/pm/Signature;
    if-eqz v2, :cond_2

    .line 2244
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2245
    const/4 v4, 0x1

    return v4

    .line 2236
    .end local v2    # "sign":Landroid/content/pm/Signature;
    .end local v3    # "signs":[Landroid/content/pm/Signature;
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 2237
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2242
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "sign":Landroid/content/pm/Signature;
    .restart local v3    # "signs":[Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2249
    .end local v2    # "sign":Landroid/content/pm/Signature;
    .end local v3    # "signs":[Landroid/content/pm/Signature;
    :cond_3
    return v5
.end method

.method private static compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2193
    const/4 v1, 0x0

    .line 2195
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v7, "android"

    const/16 v8, 0x40

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2200
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 2201
    const-string/jumbo v5, "EnterpriseDeviceManagerService"

    const-string/jumbo v7, "Could not Read package info"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    :cond_0
    if-eqz v1, :cond_3

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    .line 2204
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2205
    .local v2, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v4, v7, v5

    .line 2206
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2205
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2196
    .end local v2    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v4    # "sig":Landroid/content/pm/Signature;
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 2197
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2198
    return v6

    .line 2208
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2209
    .local v3, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v7, p1

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v4, p1, v5

    .line 2210
    .restart local v4    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2209
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2213
    .end local v4    # "sig":Landroid/content/pm/Signature;
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2214
    const/4 v5, 0x1

    return v5

    .line 2219
    .end local v2    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v3    # "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_3
    return v6
.end method

.method public static createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2845
    const-string/jumbo v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Creating context as user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2847
    const/4 v0, 0x0

    .line 2848
    .local v0, "contextAsUser":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2851
    .local v2, "token":J
    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 2850
    invoke-virtual {p0, p1, p2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2855
    .local v0, "contextAsUser":Landroid/content/Context;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2857
    .end local v0    # "contextAsUser":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 2852
    .local v0, "contextAsUser":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 2853
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string/jumbo v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " could not be found! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2855
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2854
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v4

    .line 2855
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2854
    throw v4
.end method

.method private deactivateProxyAdminsForOwnerAdmin(Landroid/content/ComponentName;I)V
    .locals 13
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerUid"    # I

    .prologue
    .line 3128
    const-string/jumbo v10, "EnterpriseDeviceManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "deactivateProxyAdminsForOwnerAdmin() : ownerUid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", admin = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3130
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const/16 v10, 0x9

    new-array v1, v10, [Ljava/lang/String;

    .line 3131
    const-string/jumbo v10, "adminUid"

    const/4 v11, 0x0

    aput-object v10, v1, v11

    const-string/jumbo v10, "proxyUid"

    const/4 v11, 0x1

    aput-object v10, v1, v11

    const-string/jumbo v10, "proxyType"

    const/4 v11, 0x2

    aput-object v10, v1, v11

    .line 3132
    const-string/jumbo v10, "componentName"

    const/4 v11, 0x3

    aput-object v10, v1, v11

    const-string/jumbo v10, "proxyComponentName"

    const/4 v11, 0x4

    aput-object v10, v1, v11

    .line 3133
    const-string/jumbo v10, "label"

    const/4 v11, 0x5

    aput-object v10, v1, v11

    const-string/jumbo v10, "icon"

    const/4 v11, 0x6

    aput-object v10, v1, v11

    .line 3134
    const-string/jumbo v10, "description"

    const/4 v11, 0x7

    aput-object v10, v1, v11

    const-string/jumbo v10, "permissions"

    const/16 v11, 0x8

    aput-object v10, v1, v11

    .line 3137
    .local v1, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3138
    const-string/jumbo v11, "PROXY_ADMIN_INFO"

    const/4 v12, 0x0

    .line 3137
    invoke-virtual {v10, v11, v1, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 3141
    .local v9, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cv$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3142
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "proxyUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3143
    .local v7, "proxyUid":I
    const-string/jumbo v10, "adminUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3144
    .local v8, "uid":I
    const-string/jumbo v10, "componentName"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3145
    .local v0, "adminName":Ljava/lang/String;
    const-string/jumbo v10, "proxyComponentName"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3146
    .local v6, "proxyName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-ne v8, p2, :cond_0

    if-eqz v6, :cond_0

    .line 3148
    :try_start_0
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 3149
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 3148
    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3150
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeProxyAdmin(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3151
    :catch_0
    move-exception v4

    .line 3152
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "EnterpriseDeviceManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "deactivateAdminForUser:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3127
    .end local v0    # "adminName":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "proxyName":Ljava/lang/String;
    .end local v7    # "proxyUid":I
    .end local v8    # "uid":I
    :cond_1
    return-void
.end method

.method private enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZ)Lcom/samsung/android/knox/ContextInfo;
    .locals 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "userPolicy"    # Z
    .param p4, "checkActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 745
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 746
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 748
    .local v11, "pid":I
    if-nez p1, :cond_0

    .line 750
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    move-object/from16 v0, p1

    invoke-direct {v0, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 754
    .restart local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    .line 757
    .local v4, "contextUid":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "caller":Ljava/lang/String;
    const/16 v13, 0x3e8

    if-ne v12, v13, :cond_2

    sget v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    if-ne v11, v13, :cond_2

    .line 760
    :cond_1
    if-eqz p3, :cond_4

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 v14, 0x64

    if-lt v13, v14, :cond_4

    .line 761
    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v13, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v13

    .line 758
    :cond_2
    if-eqz v3, :cond_3

    const-string/jumbo v13, "android.uid.system:1000"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 767
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 768
    new-instance v13, Ljava/lang/SecurityException;

    const-string/jumbo v14, "Operation not supported on profile"

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 763
    :cond_4
    return-object p1

    .line 772
    :cond_5
    if-eqz p4, :cond_6

    .line 773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 775
    .local v1, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-nez v1, :cond_6

    .line 776
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "No active admin owned by uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 781
    .end local v1    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 783
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    .line 786
    if-eqz p3, :cond_7

    .line 787
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V

    .line 790
    :cond_7
    if-eqz p2, :cond_9

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_9

    .line 791
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 792
    if-eqz p3, :cond_8

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 v14, 0x64

    if-lt v13, v14, :cond_8

    .line 793
    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v13, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v13

    .line 795
    :cond_8
    return-object p1

    .line 801
    :cond_9
    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v13, v12, :cond_c

    .line 802
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAuthorizedAdminUid(I)I

    move-result v2

    .line 803
    .local v2, "adminUid":I
    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v13, v2, :cond_c

    .line 805
    if-eqz p3, :cond_a

    .line 806
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V

    .line 809
    :cond_a
    if-eqz p2, :cond_c

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 810
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 811
    if-eqz p3, :cond_b

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 v14, 0x64

    if-lt v13, v14, :cond_b

    .line 812
    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v13, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v13

    .line 814
    :cond_b
    return-object p1

    .line 821
    .end local v2    # "adminUid":I
    :cond_c
    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v13, v12, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v13, v14}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v13

    if-eq v12, v13, :cond_d

    .line 822
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ContextInfo UID voilation info is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 823
    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 822
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 823
    const-string/jumbo v15, " but caller is "

    .line 822
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 827
    :cond_d
    if-eqz p3, :cond_e

    .line 828
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkContainerOwnerShip(Lcom/samsung/android/knox/ContextInfo;)V

    .line 831
    :cond_e
    const/4 v9, 0x0

    .line 834
    .local v9, "permissionGranted":Z
    if-eqz p2, :cond_10

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_10

    .line 835
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "permission$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 836
    .local v7, "permission":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_f

    .line 837
    const/4 v9, 0x1

    .line 842
    .end local v7    # "permission":Ljava/lang/String;
    .end local v8    # "permission$iterator":Ljava/util/Iterator;
    :cond_10
    const-string/jumbo v13, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "is permission granted: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_0
    const-string/jumbo v10, ""

    .line 858
    .local v10, "permissionString":Ljava/lang/String;
    if-nez v9, :cond_12

    .line 859
    if-eqz p2, :cond_11

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_11

    .line 860
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "permissionString":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 861
    .restart local v10    # "permissionString":Ljava/lang/String;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_11

    .line 862
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " OR "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 861
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 852
    .end local v6    # "i":I
    .end local v10    # "permissionString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 854
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "EnterpriseDeviceManagerService"

    const-string/jumbo v14, "could not check calling permission"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 866
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v10    # "permissionString":Ljava/lang/String;
    :cond_11
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Admin  does not have "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 876
    :cond_12
    if-eqz p3, :cond_13

    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 v14, 0x64

    if-lt v13, v14, :cond_13

    .line 877
    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v13, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v13

    .line 880
    :cond_13
    const-string/jumbo v13, "EnterpriseDeviceManagerService"

    const-string/jumbo v14, "enforceActiveAdminDualPermission >>>"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-object p1
.end method

.method public static enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4070
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4071
    :cond_0
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "no permission provided"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4072
    return-void

    .line 4075
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4069
    :goto_0
    return-void

    .line 4076
    :catch_0
    move-exception v0

    .line 4077
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 4078
    throw v0

    .line 4081
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4082
    :catch_1
    move-exception v2

    .line 4083
    .local v2, "innerEx":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 4085
    .local v1, "finalMsg":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 4086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4087
    :cond_3
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private enforceOwnerOnlyAndActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Lcom/samsung/android/knox/ContextInfo;
    .locals 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "checkActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .prologue
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 718
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 720
    .local v1, "userId":I
    if-nez p1, :cond_0

    .line 722
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 725
    .restart local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_0
    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 727
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 729
    .local v0, "proxyAdminUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyActivePermissions(ILjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 730
    new-instance v2, Ljava/lang/SecurityException;

    .line 731
    const-string/jumbo v3, "Operation not supported, Device permission not present"

    .line 730
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 733
    :cond_1
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 734
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v2

    .line 735
    .end local v0    # "proxyAdminUid":I
    :cond_2
    if-nez v1, :cond_3

    .line 736
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 738
    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Operation supported only on owner space"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 737
    :cond_4
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-gtz v2, :cond_3

    .line 740
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    return-object v2
.end method

.method private enforceUMCSignature()V
    .locals 6

    .prologue
    .line 3231
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3232
    const-string/jumbo v4, "com.sec.enterprise.knox.cloudmdm.smdms"

    const/16 v5, 0x40

    .line 3231
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3233
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v2

    .line 3234
    .local v2, "signatureVerified":Z
    if-nez v2, :cond_0

    .line 3236
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Caller is not real UMC. Signature Verification failed."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3238
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signatureVerified":Z
    :catch_0
    move-exception v0

    .line 3239
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "package not found"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3229
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 13
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1435
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1436
    .local v8, "token":J
    const/4 v0, 0x0

    .line 1438
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 1439
    const v11, 0xc8080

    .line 1438
    invoke-interface {v10, p1, v11, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1447
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1451
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-nez v0, :cond_2

    .line 1453
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v6

    .line 1454
    .local v6, "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "proxy$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1455
    .local v4, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v4}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1457
    :try_start_1
    new-instance v10, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v10

    .line 1443
    .end local v4    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v5    # "proxy$iterator":Ljava/util/Iterator;
    .end local v6    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v2

    .line 1447
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1446
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 1447
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1446
    throw v10

    .line 1461
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v5    # "proxy$iterator":Ljava/util/Iterator;
    .restart local v6    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :catch_1
    move-exception v1

    .line 1463
    .local v1, "e":Ljava/io/IOException;
    return-object v12

    .line 1458
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 1460
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    return-object v12

    .line 1467
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unknown admin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1470
    .end local v5    # "proxy$iterator":Ljava/util/Iterator;
    .end local v6    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_2
    :try_start_2
    new-instance v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {v7}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1471
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1472
    new-instance v10, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v10

    .line 1476
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_3
    move-exception v1

    .line 1478
    .restart local v1    # "e":Ljava/io/IOException;
    return-object v12

    .line 1473
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 1475
    .restart local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    return-object v12
.end method

.method private getActiveAdminLocked(Landroid/content/ComponentName;)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 1115
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "auxAdm$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1116
    .local v0, "auxAdm":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1117
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Admin found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    return-object v0

    .line 1121
    .end local v0    # "auxAdm":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1125
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "auxAdm$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1126
    .local v0, "auxAdm":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1127
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1128
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Admin found on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    return-object v0

    .line 1132
    .end local v0    # "auxAdm":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getAdminNameForUserId(I)Landroid/content/ComponentName;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 3456
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 3458
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3459
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3460
    .local v0, "uid":J
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v3

    return-object v3

    .line 3463
    .end local v0    # "uid":J
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private getAuthorizedAdminUid(I)I
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 3689
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "getAuthorizedAdminUid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3690
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3691
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3692
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string/jumbo v4, "adminUid"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3693
    .local v0, "result":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 3694
    const-string/jumbo v2, "adminUid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 3696
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method public static getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 5
    .param p0, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1010
    if-nez p0, :cond_0

    .line 1011
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    .end local p0    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1014
    .restart local p0    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_0
    iget v2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 1015
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCallingOrCurrentUserId(): move: cxtInfo.mContainerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget v2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    return v2

    .line 1019
    :cond_1
    sget v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1020
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1022
    .local v0, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1024
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    return v2

    .line 1023
    :catchall_0
    move-exception v2

    .line 1024
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1023
    throw v2

    .line 1029
    .end local v0    # "token":J
    :cond_2
    iget v2, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    return v2
.end method

.method public static getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 2
    .param p0, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 1034
    if-nez p0, :cond_0

    .line 1035
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0

    .line 1038
    :cond_0
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 1039
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0

    .line 1042
    :cond_1
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    return v0
.end method

.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .locals 1

    .prologue
    .line 2300
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    return-object v0
.end method

.method public static getKioskOrOwnerUserId()I
    .locals 4

    .prologue
    .line 1104
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1106
    .local v2, "token":J
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getCOMContainerOrOwnerUserId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1109
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1106
    return v1

    .line 1107
    :catch_0
    move-exception v0

    .line 1109
    .local v0, "ignore":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    const/4 v1, 0x0

    return v1

    .line 1108
    .end local v0    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 1109
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1108
    throw v1
.end method

.method public static final getPolicyService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "policyService"    # Ljava/lang/String;

    .prologue
    .line 409
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I
    .locals 6
    .param p0, "edmStorageProvider"    # Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .param p1, "proxyUid"    # I

    .prologue
    const/4 v5, 0x0

    .line 3398
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 3399
    const-string/jumbo v3, "adminUid"

    aput-object v3, v0, v5

    .line 3401
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3402
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "proxyUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3404
    const-string/jumbo v3, "PROXY_ADMIN_INFO"

    .line 3403
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 3406
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3407
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v4, "adminUid"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 3410
    :cond_0
    return p1
.end method

.method private handleDowngrade()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2276
    const-string/jumbo v4, "EnterpriseDeviceManagerService"

    const-string/jumbo v5, "handleDowngrade: Checking Downgrade..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    const/4 v1, 0x0

    .line 2278
    .local v1, "edmDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "enterprise.db"

    .line 2280
    .local v2, "edmDBPath":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    .line 2281
    const/4 v6, 0x0

    .line 2280
    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2287
    .end local v1    # "edmDB":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 2288
    .local v3, "oldVersion":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2290
    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    .line 2291
    const-string/jumbo v4, "EnterpriseDeviceManagerService"

    const-string/jumbo v5, "Current Platform Version is older than the previous DB version"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    const-string/jumbo v4, "EnterpriseDeviceManagerService"

    const-string/jumbo v5, "Deleting EDM Databases - enterprise.db and dmapprmgr.db"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/data/system/enterprise.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2294
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/data/system/dmappmgr.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2295
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 2275
    :cond_0
    return-void

    .line 2282
    .end local v3    # "oldVersion":I
    .restart local v1    # "edmDB":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 2284
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "could not open or create databse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initServices(Z)V
    .locals 7
    .param p1, "isFirstInitialized"    # Z

    .prologue
    .line 2530
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ps$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2534
    .local v1, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 2535
    .local v3, "service":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    if-eqz p1, :cond_1

    .line 2536
    invoke-interface {v3}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2543
    .end local v3    # "service":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :catch_0
    move-exception v0

    .line 2544
    .local v0, "ignore":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initServices() failed in"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2539
    .end local v0    # "ignore":Ljava/lang/Exception;
    .restart local v3    # "service":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2540
    invoke-interface {v3}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2528
    .end local v1    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v3    # "service":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :cond_2
    return-void
.end method

.method private isFirmwareChanged()Z
    .locals 4

    .prologue
    .line 2640
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "PlatformSoftwareVersion"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2641
    .local v0, "swVer":Ljava/lang/String;
    const-string/jumbo v2, "ro.build.fingerprint"

    const-string/jumbo v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2642
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 2643
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2646
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 2644
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static isKioskOrOwnerUserId(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 7
    .param p0, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 1078
    if-nez p0, :cond_0

    .line 1080
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    .end local p0    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1083
    .restart local p0    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_0
    iget v3, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1084
    .local v2, "userId":I
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKioskOrOwnerUserId(): userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1089
    .local v0, "token":J
    if-eqz v2, :cond_1

    .line 1090
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerId(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1089
    if-eqz v3, :cond_2

    .line 1091
    :cond_1
    const/4 v3, 0x1

    .line 1094
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1091
    return v3

    .line 1094
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    return v6

    .line 1093
    :catchall_0
    move-exception v3

    .line 1094
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1093
    throw v3
.end method

.method public static isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v8, 0x0

    .line 1050
    if-nez p1, :cond_0

    .line 1052
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p1, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1055
    .restart local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_0
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1056
    .local v3, "userId":I
    const-string/jumbo v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isManagedProfileUser(): userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1060
    .local v0, "ident":J
    :try_start_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 1061
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1062
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_2

    .line 1063
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 1070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1064
    return v8

    .line 1065
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 1070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1065
    return v5

    .line 1070
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1068
    return v8

    .line 1069
    .end local v2    # "um":Landroid/os/UserManager;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v5

    .line 1070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1069
    throw v5
.end method

.method private isMdmAdminPresentInternal()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2749
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2750
    .local v5, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "storedUid$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2751
    .local v3, "storedUid":I
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2752
    .local v0, "compName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    sget-object v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2756
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2757
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v6

    .line 2756
    if-eqz v6, :cond_1

    .line 2758
    const-string/jumbo v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isMdmAdminPresentInternal() : MDM Admin Found - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    return v9

    .line 2763
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2762
    invoke-static {v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2765
    .local v2, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 2766
    const-string/jumbo v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isMdmAdminPresentInternal() : MDM Admin Found(2) - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    return v9

    .line 2770
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v2    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "storedUid":I
    :cond_2
    const-string/jumbo v6, "EnterpriseDeviceManagerService"

    const-string/jumbo v7, "isMdmAdminPresentInternal() : MDM Admin is not present."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2771
    return v8

    .line 2773
    .end local v4    # "storedUid$iterator":Ljava/util/Iterator;
    .end local v5    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 2774
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "EnterpriseDeviceManagerService"

    const-string/jumbo v7, "isMdmAdminPresentInternal() : failed. "

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2778
    return v9
.end method

.method private static isPackageInstalled(Ljava/lang/String;I)Z
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 3867
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3868
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3869
    .local v4, "token":J
    if-eqz v2, :cond_1

    .line 3871
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, p0, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3872
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 3873
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPackageInstalled() : package present. application : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3874
    const/4 v3, 0x1

    .line 3882
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3874
    return v3

    .line 3876
    :cond_0
    :try_start_1
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPackageInstalled() : package is not present. application : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3882
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3877
    return v8

    .line 3879
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 3880
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v6, "Exception in isPackageInstalled()"

    invoke-static {v3, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3882
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3885
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v8

    .line 3881
    :catchall_0
    move-exception v3

    .line 3882
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3881
    throw v3
.end method

.method private isPermissionGranted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3364
    const-string/jumbo v3, "apppermission_control_policy"

    .line 3363
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    .line 3365
    .local v2, "policy":Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3367
    .local v4, "token":J
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getApplicationGrantedPermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3369
    .local v1, "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 3370
    const/4 v3, 0x1

    .line 3375
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3370
    return v3

    .line 3375
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3377
    .end local v1    # "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3372
    :catch_0
    move-exception v0

    .line 3375
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3374
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 3375
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3374
    throw v3
.end method

.method public static isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2168
    if-nez p1, :cond_0

    .line 2169
    return v7

    .line 2171
    :cond_0
    const/4 v2, 0x0

    .line 2173
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2177
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v2, :cond_1

    .line 2178
    const-string/jumbo v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldnt get Package Info for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    return v7

    .line 2174
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 2175
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2182
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v3, 0x0

    .line 2184
    .local v3, "ret":Z
    :try_start_1
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 2189
    .local v3, "ret":Z
    return v3

    .line 2185
    .local v3, "ret":Z
    :catch_1
    move-exception v1

    .line 2186
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2187
    return v7
.end method

.method private loadActiveAdmins()V
    .locals 28

    .prologue
    .line 1529
    monitor-enter p0

    .line 1530
    :try_start_0
    const-string/jumbo v24, "EnterpriseDeviceManagerService"

    const-string/jumbo v25, "loadActiveAdmins"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v21

    .line 1532
    .local v21, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "storedUid$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1533
    .local v16, "storedUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1534
    .local v9, "compName":Landroid/content/ComponentName;
    if-eqz v9, :cond_0

    .line 1539
    :try_start_1
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 1540
    .local v5, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_3

    .line 1541
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1542
    .local v10, "currentUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1544
    move/from16 v0, v16

    if-ne v10, v0, :cond_1

    .line 1546
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v24, v0

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v0, v9, v1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v24

    if-nez v24, :cond_0

    .line 1548
    new-instance v24, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1549
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1551
    const-string/jumbo v24, "EnterpriseDeviceManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Admin invalid on DPM, removing from EDM:   "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1552
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v26

    .line 1551
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1552
    const-string/jumbo v26, ", uid: "

    .line 1551
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1555
    :catch_0
    move-exception v12

    .line 1556
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1598
    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v10    # "currentUid":I
    .end local v12    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 1599
    .local v13, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string/jumbo v24, "EnterpriseDeviceManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Exception occured while loading active admins "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1529
    .end local v9    # "compName":Landroid/content/ComponentName;
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .end local v16    # "storedUid":I
    .end local v17    # "storedUid$iterator":Ljava/util/Iterator;
    .end local v21    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    .line 1559
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v9    # "compName":Landroid/content/ComponentName;
    .restart local v10    # "currentUid":I
    .restart local v16    # "storedUid":I
    .restart local v17    # "storedUid$iterator":Ljava/util/Iterator;
    .restart local v21    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string/jumbo v25, "ADMIN_INFO"

    .line 1560
    const-string/jumbo v26, "adminUid"

    .line 1559
    move-object/from16 v0, v24

    move/from16 v1, v16

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 1562
    const-string/jumbo v24, "EnterpriseDeviceManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Admin "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1563
    const-string/jumbo v26, ", updated with new currentUid: "

    .line 1562
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1564
    const-string/jumbo v26, ", old storedUid: "

    .line 1562
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1566
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v24, v0

    .line 1567
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    .line 1566
    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v0, v9, v1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v24

    if-nez v24, :cond_0

    .line 1569
    new-instance v24, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1570
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1571
    const-string/jumbo v24, "EnterpriseDeviceManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Admin invalid on DPM, removing from EDM: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1572
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v26

    .line 1571
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1572
    const-string/jumbo v26, ", uid: "

    .line 1571
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1575
    :catch_2
    move-exception v12

    .line 1576
    .restart local v12    # "e":Landroid/os/RemoteException;
    :try_start_7
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1579
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1581
    new-instance v24, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1582
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1584
    const-string/jumbo v24, "EnterpriseDeviceManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Failed updating uid, removed: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1585
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v26

    .line 1584
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1585
    const-string/jumbo v26, ", uid: "

    .line 1584
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1591
    .end local v10    # "currentUid":I
    :cond_3
    new-instance v24, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1592
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1594
    const-string/jumbo v24, "EnterpriseDeviceManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Admin loaded null, removed: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1595
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v26

    .line 1594
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1596
    const-string/jumbo v26, ", uid: "

    .line 1594
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1604
    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v9    # "compName":Landroid/content/ComponentName;
    .end local v16    # "storedUid":I
    :cond_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "user"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    .line 1605
    .local v22, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v22 .. v22}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v23

    .line 1606
    .local v23, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "uf$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/UserInfo;

    .line 1607
    .local v18, "uf":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminsInfo(I)Ljava/util/List;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v14

    .line 1609
    .local v14, "edmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;>;"
    const/4 v11, 0x0

    .line 1611
    .local v11, "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v11

    .line 1616
    .end local v11    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_1
    if-eqz v11, :cond_5

    .line 1617
    if-eqz v14, :cond_6

    :try_start_a
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1618
    :cond_6
    const-string/jumbo v24, "EnterpriseDeviceManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Adding all admins from DPM for user : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "cn$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1620
    .local v7, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 1621
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_7

    .line 1622
    const-string/jumbo v24, "EnterpriseDeviceManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Adding missing admin to EDM : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    .line 1624
    .local v20, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    .line 1627
    const/16 v27, 0x0

    .line 1626
    move-object/from16 v0, v24

    move/from16 v1, v20

    move-object/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z

    goto :goto_2

    .line 1612
    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v8    # "cn$iterator":Ljava/util/Iterator;
    .end local v20    # "uid":I
    .restart local v11    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_3
    move-exception v12

    .line 1613
    .restart local v12    # "e":Landroid/os/RemoteException;
    const-string/jumbo v24, "EnterpriseDeviceManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Failed to get active admins from dpm "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v12}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1631
    .end local v11    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_8
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "cn$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 1632
    .restart local v7    # "cn":Landroid/content/ComponentName;
    const/4 v15, 0x0

    .line 1633
    .local v15, "found":Z
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "admin$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1634
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1635
    const/4 v15, 0x1

    .line 1639
    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_b
    if-nez v15, :cond_9

    .line 1640
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 1641
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_9

    .line 1642
    const-string/jumbo v24, "EnterpriseDeviceManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Adding missing admin to EDM : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    .line 1644
    .restart local v20    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    .line 1647
    const/16 v27, 0x0

    .line 1646
    move-object/from16 v0, v24

    move/from16 v1, v20

    move-object/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "admin$iterator":Ljava/util/Iterator;
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v8    # "cn$iterator":Ljava/util/Iterator;
    .end local v14    # "edmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;>;"
    .end local v15    # "found":Z
    .end local v18    # "uf":Landroid/content/pm/UserInfo;
    .end local v20    # "uid":I
    :cond_c
    monitor-exit p0

    .line 1528
    return-void
.end method

.method private migrateEcppDatabse(Landroid/content/ComponentName;IJ)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "newContainerId"    # I
    .param p3, "newContainerAdminUid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3478
    const-string/jumbo v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "Migrating ECPP Database data on Device after FOTA update"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EcppMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EcppMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EcppMigrationManager;->migrateEcppDB(Landroid/content/ComponentName;IJ)Z

    move-result v0

    return v0
.end method

.method private migrateEnterpriseDatabase(IZ)J
    .locals 2
    .param p1, "newContainerId"    # I
    .param p2, "isB2B"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3494
    const-string/jumbo v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "Migrating Enterprise data on Device after FOTA update"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3496
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrateEnterpriseDB(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyAddSystemService()V
    .locals 6

    .prologue
    .line 2550
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ps$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2552
    .local v1, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2554
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-interface {v3, v4, v5}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2555
    :catch_0
    move-exception v0

    .line 2556
    .local v0, "ignore":Ljava/lang/Exception;
    const-string/jumbo v4, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyAddSystemService() failed in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2549
    .end local v0    # "ignore":Ljava/lang/Exception;
    .end local v1    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_1
    return-void
.end method

.method private onStartUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1810
    const-string/jumbo v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartUser() : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    return-void
.end method

.method private removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1272
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeActiveAdmin() : Removing admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    :goto_0
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "Admin removed from DPM!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    return-void

    .line 1278
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to remove action admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1276
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1277
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to remove action admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    .locals 29
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1292
    monitor-enter p0

    .line 1293
    :try_start_0
    const-string/jumbo v26, "EnterpriseDeviceManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "removeActiveAdminDelayed - adminReceiver: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1294
    const-string/jumbo v28, ", userId: "

    .line 1293
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1296
    .local v5, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-nez v5, :cond_0

    monitor-exit p0

    .line 1297
    return-void

    .line 1299
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    .line 1300
    .local v25, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1301
    .local v7, "callingUid":I
    const-string/jumbo v26, "EnterpriseDeviceManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Admin uid: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", calling uid: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    move/from16 v0, v25

    if-eq v0, v7, :cond_1

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    .line 1307
    const-string/jumbo v27, "android.permission.BIND_DEVICE_ADMIN"

    .line 1308
    const-string/jumbo v28, "Only system or itself can remove an EDM admin"

    .line 1306
    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v8

    .line 1313
    .local v8, "canRemove":Z
    if-nez v8, :cond_2

    .line 1314
    const-string/jumbo v26, "EnterpriseDeviceManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Admin "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " cannot be removed!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1315
    return-void

    .line 1318
    :cond_2
    :try_start_2
    sget-object v26, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->cleanUpConstrainedState(I)V

    .line 1321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1323
    .local v14, "ident":J
    if-eqz p1, :cond_3

    const/16 v26, 0x3e8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 1324
    sput v25, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mRemovingFromUid:I

    .line 1325
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    sput-object v26, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mRemovingFromPkgName:Ljava/lang/String;

    .line 1329
    :cond_3
    sget-object v26, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "ps$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1331
    .local v22, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :try_start_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onPreAdminRemoval(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1333
    :catch_0
    move-exception v13

    .line 1334
    .local v13, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v26, "EnterpriseDeviceManagerService"

    const-string/jumbo v27, "removeActiveAdminDelayed Ex1:"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1292
    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v7    # "callingUid":I
    .end local v8    # "canRemove":Z
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "ident":J
    .end local v22    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v23    # "ps$iterator":Ljava/util/Iterator;
    .end local v25    # "uid":I
    :catchall_0
    move-exception v26

    monitor-exit p0

    throw v26

    .line 1339
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v7    # "callingUid":I
    .restart local v8    # "canRemove":Z
    .restart local v14    # "ident":J
    .restart local v23    # "ps$iterator":Ljava/util/Iterator;
    .restart local v25    # "uid":I
    :cond_4
    :try_start_5
    sget v26, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mRemovingFromUid:I

    if-eqz v26, :cond_5

    .line 1340
    const/16 v26, 0x0

    sput v26, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mRemovingFromUid:I

    .line 1341
    const/16 v26, 0x0

    sput-object v26, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mRemovingFromPkgName:Ljava/lang/String;

    .line 1344
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v26, v0

    const-string/jumbo v27, "MyKNOXAdmin"

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1345
    .local v17, "myKNOXAdminPkg":Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v26, v0

    const-string/jumbo v27, "MyKNOXAdmin"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1352
    :cond_6
    :try_start_6
    const-string/jumbo v26, "EnterpriseDeviceManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Removing Admin with uid"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeAdminFromDatabase(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1362
    :goto_1
    :try_start_7
    sget-object v26, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1364
    .restart local v22    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :try_start_8
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 1366
    :catch_1
    move-exception v13

    .line 1367
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v26, "EnterpriseDeviceManagerService"

    const-string/jumbo v27, "removeActiveAdminDelayed Ex2:"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1357
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v22    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :catch_2
    move-exception v13

    .line 1358
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string/jumbo v26, "EnterpriseDeviceManagerService"

    const-string/jumbo v27, "FATAL: Admin failed to remove lets try during next boot up"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 1372
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_7
    if-eqz p1, :cond_b

    const/16 v26, 0x3e8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 1373
    const/4 v12, 0x0

    .line 1375
    .local v12, "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    invoke-interface/range {v26 .. v27}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v12

    .line 1377
    .local v12, "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v12, :cond_b

    .line 1378
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "compName$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 1379
    .local v10, "compName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v4

    .line 1381
    .local v4, "activeAdminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v26, v0

    const/16 v27, 0x3e8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 1385
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 1386
    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v10, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->reconcileAdmin(Landroid/content/ComponentName;I)V

    .line 1390
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v9, v0, [Ljava/lang/String;

    const-string/jumbo v26, "adminUid"

    const/16 v27, 0x0

    aput-object v26, v9, v27

    const-string/jumbo v26, "proxyUid"

    const/16 v27, 0x1

    aput-object v26, v9, v27

    .line 1392
    .local v9, "columns":[Ljava/lang/String;
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1394
    .local v24, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v26, "adminUid"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v26, v0

    const-string/jumbo v27, "PROXY_ADMIN_INFO"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v20

    .line 1397
    .local v20, "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v20, :cond_b

    .line 1398
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "proxAdminInfo$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/ContentValues;

    .line 1399
    .local v18, "proxAdminInfo":Landroid/content/ContentValues;
    const-string/jumbo v26, "adminUid"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1400
    .local v6, "adminUid":I
    const-string/jumbo v26, "proxyUid"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1402
    .local v21, "proxyAdminUid":I
    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v26, v0

    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addMUMContainer(II)Z

    .line 1404
    const-string/jumbo v26, "EnterpriseDeviceManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MUMContainer relation rebuilt : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " - "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 1414
    .end local v4    # "activeAdminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "adminUid":I
    .end local v9    # "columns":[Ljava/lang/String;
    .end local v10    # "compName":Landroid/content/ComponentName;
    .end local v11    # "compName$iterator":Ljava/util/Iterator;
    .end local v12    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v18    # "proxAdminInfo":Landroid/content/ContentValues;
    .end local v19    # "proxAdminInfo$iterator":Ljava/util/Iterator;
    .end local v20    # "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v21    # "proxyAdminUid":I
    .end local v24    # "selectionValues":Landroid/content/ContentValues;
    :catch_3
    move-exception v13

    .line 1415
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1419
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_b
    const-string/jumbo v26, "EnterpriseDeviceManagerService"

    const-string/jumbo v27, "delete admin, Send intent to Gear for deregister"

    invoke-static/range {v26 .. v27}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 1421
    .local v16, "intent":Landroid/content/Intent;
    const-string/jumbo v26, "android.accessory.device.action.DEACTIVE_MDM"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    new-instance v27, Landroid/os/UserHandle;

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1424
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1425
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForOwnerAdmin(Landroid/content/ComponentName;I)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    .line 1427
    const-string/jumbo v27, "ADMIN_REMOVED"

    .line 1426
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    .line 1291
    return-void
.end method

.method private runAdminUpdate()V
    .locals 2

    .prologue
    .line 2013
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2014
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2012
    :cond_0
    return-void
.end method

.method private selfUpdate()V
    .locals 23

    .prologue
    .line 2026
    const/4 v6, 0x0

    .line 2027
    .local v6, "adminsTemp":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 2028
    .local v4, "activeComponent":Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 2030
    .local v8, "apkFileTemp":Ljava/io/File;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2031
    :try_start_1
    sget-object v19, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    if-eqz v19, :cond_0

    .line 2032
    const-string/jumbo v19, "EnterpriseDeviceManagerService"

    const-string/jumbo v20, "selfUpdate in progress"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2033
    return-void

    .line 2036
    :cond_0
    :try_start_3
    const-string/jumbo v19, "self_update_admin_component"

    .line 2037
    const-string/jumbo v20, "/data/system/selfUpdateAdmin.conf"

    .line 2036
    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2039
    .local v11, "cNames":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 2040
    const-string/jumbo v19, "EnterpriseDeviceManagerService"

    const-string/jumbo v20, "nothing to selfUpdate"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    new-instance v19, Ljava/io/File;

    const-string/jumbo v20, "/data/app/selfUpdateApks"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2043
    return-void

    .line 2046
    :cond_1
    :try_start_5
    const-string/jumbo v19, ";"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2048
    .local v6, "adminsTemp":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v12, v6, v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2050
    .local v12, "component":Ljava/lang/String;
    if-nez v12, :cond_2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 2051
    return-void

    .line 2053
    :cond_2
    :try_start_7
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    .line 2055
    .local v4, "activeComponent":Landroid/content/ComponentName;
    if-nez v4, :cond_3

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 2056
    return-void

    .line 2058
    :cond_3
    :try_start_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "/data/app/selfUpdateApks/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 2059
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 2058
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 2059
    const-string/jumbo v20, ".apk"

    .line 2058
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2061
    .local v13, "destFilePath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2062
    .end local v8    # "apkFileTemp":Ljava/io/File;
    .local v9, "apkFileTemp":Ljava/io/File;
    :try_start_a
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2067
    sput-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 2069
    move-object v5, v6

    .line 2070
    .local v5, "admins":[Ljava/lang/String;
    move-object v7, v9

    .line 2074
    .local v7, "apkFile":Ljava/io/File;
    const/16 v19, 0x0

    :try_start_c
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 2079
    :goto_0
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v4, v1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2080
    monitor-enter v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 2082
    :try_start_e
    const-string/jumbo v19, "EnterpriseDeviceManagerService"

    const-string/jumbo v20, "Waiting..."

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    const-wide/16 v20, 0x1388

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ComponentName;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_1
    :try_start_f
    monitor-exit v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_0

    .line 2161
    .end local v5    # "admins":[Ljava/lang/String;
    .end local v7    # "apkFile":Ljava/io/File;
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    move-object v8, v9

    .line 2162
    .end local v4    # "activeComponent":Landroid/content/ComponentName;
    .end local v6    # "adminsTemp":[Ljava/lang/String;
    .end local v9    # "apkFileTemp":Ljava/io/File;
    .end local v11    # "cNames":Ljava/lang/String;
    .end local v12    # "component":Ljava/lang/String;
    .end local v13    # "destFilePath":Ljava/lang/String;
    :goto_2
    const-string/jumbo v19, "EnterpriseDeviceManagerService"

    const-string/jumbo v20, "Upgrade Admin Ex: "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2163
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 2023
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 2063
    .restart local v4    # "activeComponent":Landroid/content/ComponentName;
    .restart local v6    # "adminsTemp":[Ljava/lang/String;
    .restart local v9    # "apkFileTemp":Ljava/io/File;
    .restart local v11    # "cNames":Ljava/lang/String;
    .restart local v12    # "component":Ljava/lang/String;
    .restart local v13    # "destFilePath":Ljava/lang/String;
    :cond_4
    :try_start_10
    const-string/jumbo v19, "EnterpriseDeviceManagerService"

    const-string/jumbo v20, "Cannot read or is not a file : /data/app/selfUpdateApks/"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    .line 2064
    return-void

    .line 2030
    .end local v4    # "activeComponent":Landroid/content/ComponentName;
    .end local v6    # "adminsTemp":[Ljava/lang/String;
    .end local v9    # "apkFileTemp":Ljava/io/File;
    .end local v11    # "cNames":Ljava/lang/String;
    .end local v12    # "component":Ljava/lang/String;
    .end local v13    # "destFilePath":Ljava/lang/String;
    .restart local v8    # "apkFileTemp":Ljava/io/File;
    :catchall_0
    move-exception v19

    .end local v8    # "apkFileTemp":Ljava/io/File;
    :goto_4
    :try_start_12
    monitor-exit p0

    throw v19
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 2161
    :catch_1
    move-exception v14

    .restart local v14    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 2076
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v4    # "activeComponent":Landroid/content/ComponentName;
    .restart local v5    # "admins":[Ljava/lang/String;
    .restart local v6    # "adminsTemp":[Ljava/lang/String;
    .restart local v7    # "apkFile":Ljava/io/File;
    .restart local v9    # "apkFileTemp":Ljava/io/File;
    .restart local v11    # "cNames":Ljava/lang/String;
    .restart local v12    # "component":Ljava/lang/String;
    .restart local v13    # "destFilePath":Ljava/lang/String;
    :catch_2
    move-exception v16

    .local v16, "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 2075
    .end local v16    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v15

    .local v15, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 2084
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v17

    .line 2085
    .local v17, "e":Ljava/lang/InterruptedException;
    :try_start_13
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_1

    .line 2080
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v19

    :try_start_14
    monitor-exit v4

    throw v19

    .line 2089
    :cond_5
    const-string/jumbo v19, "EnterpriseDeviceManagerService"

    const-string/jumbo v20, "Finished Waiting."

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const-string/jumbo v19, "application_policy"

    .line 2091
    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2097
    .local v10, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    const-string/jumbo v19, "EnterpriseDeviceManagerService"

    const-string/jumbo v20, "Uninstall of old apk"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplicationBySystem(ILjava/lang/String;Z)Z

    .line 2101
    const-string/jumbo v19, "EnterpriseDeviceManagerService"

    const-string/jumbo v20, "Install of new apk"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 2103
    .local v18, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    .line 2104
    new-instance v20, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;[Ljava/lang/String;Ljava/io/File;)V

    .line 2139
    const/16 v21, 0x10

    const/16 v22, 0x0

    .line 2103
    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    move-object v8, v9

    .end local v9    # "apkFileTemp":Ljava/io/File;
    .local v8, "apkFileTemp":Ljava/io/File;
    goto :goto_3

    .line 2030
    .end local v5    # "admins":[Ljava/lang/String;
    .end local v7    # "apkFile":Ljava/io/File;
    .end local v8    # "apkFileTemp":Ljava/io/File;
    .end local v10    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "apkFileTemp":Ljava/io/File;
    :catchall_2
    move-exception v19

    move-object v8, v9

    .end local v9    # "apkFileTemp":Ljava/io/File;
    .restart local v8    # "apkFileTemp":Ljava/io/File;
    goto :goto_4
.end method

.method private sendMigrationIntent(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 2611
    return-void
.end method

.method private showKnoxVersion()Ljava/lang/String;
    .locals 29

    .prologue
    .line 3906
    const-string/jumbo v9, ""

    .line 3907
    .local v9, "knoxVersion":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 3908
    .local v8, "knoxMajorVersion":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 3910
    .local v18, "softwareInfo":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKnoxContainerVersionString()Ljava/lang/String;

    move-result-object v23

    .line 3911
    .local v23, "version":Ljava/lang/String;
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_12

    .line 3927
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v20

    .line 3929
    .local v20, "standardVersion":Ljava/lang/String;
    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_14

    .line 3936
    :cond_1
    :goto_1
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getVersion()Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v14

    .line 3938
    .local v14, "premiumVersion":Ljava/lang/String;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_15

    .line 3945
    :cond_2
    :goto_2
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->getInternalSdkVersion()Ljava/lang/String;

    move-result-object v3

    .line 3947
    .local v3, "customizationVersion":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_16

    .line 3955
    :cond_3
    :goto_3
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKnoxContainerVersionString()Ljava/lang/String;

    move-result-object v2

    .line 3956
    .local v2, "containerVersion":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_17

    .line 3963
    :cond_4
    :goto_4
    const-string/jumbo v26, "net.knoxisl.version"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3964
    .local v6, "imVersion":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_18

    .line 3971
    :cond_5
    :goto_5
    const-string/jumbo v26, "net.knoxscep.version"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3972
    .local v15, "scepVersion":Ljava/lang/String;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_19

    .line 3979
    :cond_6
    :goto_6
    const-string/jumbo v26, "sys.enterprise.billing.version"

    .line 3980
    const/16 v27, 0x0

    .line 3979
    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3981
    .local v5, "enterpriseBillingVersion":Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 3988
    :cond_7
    :goto_7
    const-string/jumbo v26, "sys.enterprise.otp.version"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3989
    .local v13, "otpVersion":Ljava/lang/String;
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 3996
    :cond_8
    :goto_8
    invoke-static {}, Landroid/os/SELinux;->getSEAndroidVersion()Ljava/lang/String;

    move-result-object v17

    .line 3997
    .local v17, "seAndroidVersion":Ljava/lang/String;
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 4004
    :cond_9
    :goto_9
    const-string/jumbo v26, "net.knoxsso.version"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4005
    .local v19, "ssoVersion":Ljava/lang/String;
    if-eqz v19, :cond_a

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 4012
    :cond_a
    :goto_a
    const-string/jumbo v26, "net.knox.shareddevice.version"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4013
    .local v16, "sdVersion":Ljava/lang/String;
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 4020
    :cond_b
    :goto_b
    const-string/jumbo v26, ""

    const-string/jumbo v27, "ro.config.timaversion"

    const-string/jumbo v28, "No Policy Version"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 4023
    const-string/jumbo v26, "3.0"

    .line 4024
    const-string/jumbo v27, "ro.config.timaversion"

    const-string/jumbo v28, "No Policy Version"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 4023
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 4025
    const/16 v24, 0x0

    .line 4027
    .local v24, "version_fragmenting":I
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isKnoxVersionSupported_2_7_0()Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 4028
    const-string/jumbo v21, "3.3"

    .line 4031
    .local v21, "timaMajorVersion":Ljava/lang/String;
    :goto_c
    const-string/jumbo v26, "true"

    const-string/jumbo v27, "ro.config.dmverity"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 4025
    const/16 v26, 0x0

    .line 4032
    add-int/lit8 v24, v26, 0x1

    .line 4033
    :cond_c
    const-string/jumbo v26, "true"

    const-string/jumbo v27, "ro.config.rkp"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 4034
    add-int/lit8 v24, v24, 0x2

    .line 4035
    :cond_d
    const-string/jumbo v26, "true"

    const-string/jumbo v27, "ro.config.kap"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 4036
    add-int/lit8 v24, v24, 0x4

    .line 4037
    :cond_e
    const-string/jumbo v26, "true"

    const-string/jumbo v27, "ro.config.kap_default_on"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 4038
    add-int/lit8 v24, v24, 0x8

    .line 4039
    :cond_f
    const/16 v26, 0xa

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_20

    .line 4040
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ".00"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 4041
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 4040
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 4049
    .end local v21    # "timaMajorVersion":Ljava/lang/String;
    .end local v24    # "version_fragmenting":I
    .local v22, "timaVersion":Ljava/lang/String;
    :goto_d
    const-string/jumbo v26, "TIMA "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4050
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4051
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4055
    .end local v22    # "timaVersion":Ljava/lang/String;
    :cond_10
    const-string/jumbo v26, "net.knoxvpn.version"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 4056
    .local v25, "vpnVersion":Ljava/lang/String;
    if-eqz v25, :cond_11

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    if-eqz v26, :cond_22

    .line 4065
    .end local v2    # "containerVersion":Ljava/lang/String;
    .end local v3    # "customizationVersion":Ljava/lang/String;
    .end local v5    # "enterpriseBillingVersion":Ljava/lang/String;
    .end local v6    # "imVersion":Ljava/lang/String;
    .end local v13    # "otpVersion":Ljava/lang/String;
    .end local v14    # "premiumVersion":Ljava/lang/String;
    .end local v15    # "scepVersion":Ljava/lang/String;
    .end local v16    # "sdVersion":Ljava/lang/String;
    .end local v17    # "seAndroidVersion":Ljava/lang/String;
    .end local v19    # "ssoVersion":Ljava/lang/String;
    .end local v20    # "standardVersion":Ljava/lang/String;
    .end local v23    # "version":Ljava/lang/String;
    .end local v25    # "vpnVersion":Ljava/lang/String;
    :cond_11
    :goto_e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    return-object v26

    .line 3912
    .restart local v23    # "version":Ljava/lang/String;
    :cond_12
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 3913
    .local v10, "last":C
    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    .line 3914
    .local v12, "last_str":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 3915
    .local v11, "last_int":I
    const-string/jumbo v26, "Knox "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3916
    if-lez v11, :cond_13

    .line 3917
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3923
    :goto_f
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 4061
    .end local v10    # "last":C
    .end local v11    # "last_int":I
    .end local v12    # "last_str":Ljava/lang/String;
    .end local v23    # "version":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 4062
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "EnterpriseDeviceManagerService"

    const-string/jumbo v27, "Failed to get Knox Version "

    invoke-static/range {v26 .. v27}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4063
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 3919
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v10    # "last":C
    .restart local v11    # "last_int":I
    .restart local v12    # "last_str":Ljava/lang/String;
    .restart local v23    # "version":Ljava/lang/String;
    :cond_13
    const/16 v26, 0x2e

    :try_start_2
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 3920
    .local v7, "index":I
    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 3921
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 3930
    .end local v7    # "index":I
    .end local v10    # "last":C
    .end local v11    # "last_int":I
    .end local v12    # "last_str":Ljava/lang/String;
    .restart local v20    # "standardVersion":Ljava/lang/String;
    :cond_14
    const-string/jumbo v26, "Standard SDK "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3931
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3932
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 3939
    .restart local v14    # "premiumVersion":Ljava/lang/String;
    :cond_15
    const-string/jumbo v26, "Premium SDK "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3940
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3941
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 3948
    .restart local v3    # "customizationVersion":Ljava/lang/String;
    :cond_16
    const-string/jumbo v26, "Customization SDK "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3949
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3950
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 3957
    .restart local v2    # "containerVersion":Ljava/lang/String;
    :cond_17
    const-string/jumbo v26, "Container  "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3958
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3959
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 3965
    .restart local v6    # "imVersion":Ljava/lang/String;
    :cond_18
    const-string/jumbo v26, "IM "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3966
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3967
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 3973
    .restart local v15    # "scepVersion":Ljava/lang/String;
    :cond_19
    const-string/jumbo v26, "CEP "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3974
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3975
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 3982
    .restart local v5    # "enterpriseBillingVersion":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v26, "Enterprise Billing "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3983
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3984
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 3990
    .restart local v13    # "otpVersion":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v26, "OTP "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3991
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3992
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 3998
    .restart local v17    # "seAndroidVersion":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v26, "SE for Android "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3999
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 4006
    .restart local v19    # "ssoVersion":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v26, "SSO "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4007
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4008
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 4014
    .restart local v16    # "sdVersion":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v26, "Shared Devices "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4015
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4016
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 4030
    .restart local v24    # "version_fragmenting":I
    :cond_1f
    const-string/jumbo v21, "3.2"

    .restart local v21    # "timaMajorVersion":Ljava/lang/String;
    goto/16 :goto_c

    .line 4043
    :cond_20
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ".0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 4044
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 4043
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "timaVersion":Ljava/lang/String;
    goto/16 :goto_d

    .line 4046
    .end local v21    # "timaMajorVersion":Ljava/lang/String;
    .end local v22    # "timaVersion":Ljava/lang/String;
    .end local v24    # "version_fragmenting":I
    :cond_21
    const-string/jumbo v26, "ro.config.timaversion"

    .line 4047
    const-string/jumbo v27, "No Policy Version"

    .line 4046
    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "timaVersion":Ljava/lang/String;
    goto/16 :goto_d

    .line 4057
    .end local v22    # "timaVersion":Ljava/lang/String;
    .restart local v25    # "vpnVersion":Ljava/lang/String;
    :cond_22
    const-string/jumbo v26, "VPN "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4058
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_e
.end method

.method private static native startRemoteDesktopService()V
.end method

.method private systemReady(I)V
    .locals 3
    .param p1, "mCurrentPhase"    # I

    .prologue
    .line 1800
    const-string/jumbo v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady() : mCurrentPhase = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    sparse-switch p1, :sswitch_data_0

    .line 1799
    :goto_0
    :sswitch_0
    return-void

    .line 1803
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->onStartUser(I)V

    goto :goto_0

    .line 1801
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e0 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateCurrentUser()V
    .locals 8

    .prologue
    .line 1814
    const/4 v4, 0x0

    .line 1815
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1817
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1821
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1823
    :goto_0
    iget v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    if-eq v5, v4, :cond_0

    .line 1824
    iget v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    .line 1825
    .local v1, "oldUserId":I
    iput v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    .line 1826
    const-string/jumbo v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCurrentUser() : User changed ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    iget v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V

    .line 1813
    .end local v1    # "oldUserId":I
    :cond_0
    return-void

    .line 1818
    :catch_0
    move-exception v0

    .line 1819
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "EnterpriseDeviceManagerService"

    const-string/jumbo v6, "updateCurrentUser() : cannot get current userId. "

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1821
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1820
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 1821
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1820
    throw v5
.end method

.method private verifyActivePermissions(ILjava/util/List;)Z
    .locals 6
    .param p1, "proxyAdminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3383
    .local p2, "requirePermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 3384
    .local v0, "adminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3386
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    .line 3387
    .local v3, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "permission$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3388
    .local v1, "permission":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3389
    const/4 v4, 0x1

    return v4

    .line 3393
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "permission$iterator":Ljava/util/Iterator;
    .end local v3    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public activateAdminForUser(Landroid/content/ComponentName;ZI)V
    .locals 20
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3040
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v16, Ljava/util/ArrayList;

    .line 3041
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const-string/jumbo v18, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 3040
    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3041
    const/16 v17, 0x0

    .line 3040
    invoke-static/range {v15 .. v17}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 3042
    const-string/jumbo v15, "EnterpriseDeviceManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Activating proxy admin on user "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 3045
    .local v5, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-nez v5, :cond_0

    .line 3046
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Bad admin: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3049
    :cond_0
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v15

    if-eqz v15, :cond_1

    sget-object v15, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 3053
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3054
    .local v14, "uid":I
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 3055
    .local v6, "compName":Landroid/content/ComponentName;
    const-string/jumbo v15, "EnterpriseDeviceManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Admin uid: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", Component name: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3058
    const/4 v4, 0x0

    .line 3059
    .local v4, "activationStatus":Z
    monitor-enter p0

    .line 3060
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v10

    .line 3061
    .local v10, "ident":J
    const/4 v13, 0x1

    .line 3063
    .local v13, "ret":Z
    if-nez p2, :cond_4

    :try_start_1
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 3064
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Admin is already added"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3110
    .end local v13    # "ret":Z
    :catch_0
    move-exception v7

    .line 3111
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3114
    :try_start_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3117
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_1
    if-eqz v4, :cond_2

    .line 3118
    const-string/jumbo v15, "EnterpriseDeviceManagerService"

    const-string/jumbo v16, "Calling MSG_POST_ADMIN_ACTIVATION after Admin activation..."

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    sget-object v15, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v15, :cond_2

    .line 3120
    sget-object v15, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v0, v14, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    monitor-exit p0

    .line 3039
    return-void

    .line 3050
    .end local v4    # "activationStatus":Z
    .end local v6    # "compName":Landroid/content/ComponentName;
    .end local v10    # "ident":J
    .end local v14    # "uid":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    goto :goto_0

    .line 3067
    .restart local v4    # "activationStatus":Z
    .restart local v6    # "compName":Landroid/content/ComponentName;
    .restart local v10    # "ident":J
    .restart local v13    # "ret":Z
    .restart local v14    # "uid":I
    :cond_4
    if-nez p2, :cond_5

    .line 3068
    :try_start_4
    const-string/jumbo v15, "EnterpriseDeviceManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Adding admin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " to lists"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3071
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3073
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v15, v14, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v13

    .line 3076
    .end local v13    # "ret":Z
    :cond_5
    if-nez v13, :cond_6

    .line 3077
    const-string/jumbo v15, "EnterpriseDeviceManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Removing admin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " from lists"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3079
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3080
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Unable to activate admin"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3113
    :catchall_0
    move-exception v15

    .line 3114
    :try_start_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3113
    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3059
    .end local v10    # "ident":J
    :catchall_1
    move-exception v15

    monitor-exit p0

    throw v15

    .line 3083
    .restart local v10    # "ident":J
    :cond_6
    :try_start_6
    sget-object v15, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "ps$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 3084
    .local v9, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v15, v14}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_2

    .line 3091
    .end local v9    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_7
    const/4 v8, 0x1

    .line 3057
    .local v8, "i":I
    :goto_3
    const/4 v15, 0x2

    .line 3091
    if-gt v8, v15, :cond_8

    .line 3092
    const-string/jumbo v15, "EnterpriseDeviceManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Attempt "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " to active admin in DPM"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3093
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 3094
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v15, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 3095
    const-string/jumbo v15, "EnterpriseDeviceManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Admin sucessfully activated in DPM for user "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    const/4 v4, 0x1

    .line 3102
    :cond_8
    const-string/jumbo v15, "EnterpriseDeviceManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "EDM setActiveAdmin activationStatus -"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " for user - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3103
    if-nez v4, :cond_a

    .line 3104
    const-string/jumbo v15, "EnterpriseDeviceManagerService"

    const-string/jumbo v16, "Started removing admin information..."

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    new-instance v15, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v15, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 3106
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 3107
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "EDM - Admin activation failed for user -"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3099
    :cond_9
    const-string/jumbo v15, "EnterpriseDeviceManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Admin activation failed for user "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 3109
    :cond_a
    const-string/jumbo v15, "EnterpriseDeviceManagerService"

    const-string/jumbo v16, "Admin added to DPM!"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3114
    :try_start_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1
.end method

.method public activateDevicePermissions(Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3290
    .local p1, "devicePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3291
    .local v10, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v14, "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS"

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3292
    const-string/jumbo v14, "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3293
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3295
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3297
    .local v4, "callingUid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 3303
    .local v11, "proxyAdminUid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3304
    new-instance v14, Ljava/lang/SecurityException;

    const-string/jumbo v15, "Admin already present and active"

    invoke-direct {v14, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 3307
    :cond_0
    const/4 v2, 0x0

    .line 3308
    .local v2, "adminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "adminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .local v2, "adminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v2, :cond_7

    .line 3309
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 3310
    .local v5, "cn":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3313
    .local v6, "packageName":Ljava/lang/String;
    const-string/jumbo v14, "application_policy"

    .line 3312
    invoke-static {v14}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3314
    .local v3, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-virtual {v3, v6, v14}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3315
    const-string/jumbo v14, "EnterpriseDeviceManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed due to application is installed in device as user:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    const/4 v14, 0x0

    return v14

    .line 3320
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "permission$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3321
    .local v8, "permission":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isPermissionGranted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 3322
    const/4 v14, 0x0

    return v14

    .line 3325
    :cond_3
    sget-object v14, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 3326
    const-string/jumbo v14, "EnterpriseDeviceManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "This permission cannot be set on device level from the container: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3327
    const/4 v14, 0x0

    return v14

    .line 3331
    .end local v8    # "permission":Ljava/lang/String;
    :cond_4
    const-string/jumbo v14, "android.permission.sec.MDM_SECURITY"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3333
    const/4 v14, 0x7

    invoke-virtual {v2, v14}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 3334
    const-string/jumbo v14, "encrypted-storage"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3335
    const-string/jumbo v14, "EnterpriseDeviceManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "add device permission: encrypted-storage, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3336
    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v16

    .line 3335
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    :cond_5
    const/16 v14, 0x14

    invoke-virtual {v2, v14}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3339
    const-string/jumbo v14, "require-storagecard-encryption"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3340
    const-string/jumbo v14, "EnterpriseDeviceManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "add device permission: require-storagecard-encryption, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3341
    const/16 v16, 0x14

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v16

    .line 3340
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    :cond_6
    new-instance v7, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-direct {v7, v14, v0}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 3348
    .local v7, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3349
    .local v12, "token":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    .line 3350
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14, v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 3351
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3352
    const/4 v14, 0x1

    return v14

    .line 3356
    .end local v3    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v9    # "permission$iterator":Ljava/util/Iterator;
    .end local v12    # "token":J
    :cond_7
    new-instance v14, Ljava/lang/SecurityException;

    const-string/jumbo v15, "No active admin"

    invoke-direct {v14, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public addAuthorizedUid(II)Z
    .locals 3
    .param p1, "authorizedUid"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 3634
    const-string/jumbo v1, "EnterpriseDeviceManagerService"

    const-string/jumbo v2, "addAuthorizedUid"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3635
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3636
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    .line 3637
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3638
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3639
    const-string/jumbo v1, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3640
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "ADMIN_UID_AUTHORIZATION_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1

    .line 3642
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .locals 11
    .param p1, "proxyAdmin"    # Landroid/app/admin/ProxyDeviceAdminInfo;
    .param p2, "proxyUid"    # I
    .param p3, "adminComponentName"    # Landroid/content/ComponentName;
    .param p4, "adminUid"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2871
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/util/ArrayList;

    .line 2872
    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    aput-object v6, v5, v9

    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 2871
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 2873
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2874
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "adminUid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2875
    const-string/jumbo v3, "componentName"

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2876
    const-string/jumbo v3, "proxyUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2877
    const-string/jumbo v3, "proxyComponentName"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    const-string/jumbo v3, "proxyType"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2879
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2880
    .local v1, "serializedPerms":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2881
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2881
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2884
    :cond_0
    const-string/jumbo v3, "permissions"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    if-ne v3, v10, :cond_2

    .line 2887
    const-string/jumbo v3, "label"

    invoke-virtual {p1, v8}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    const-string/jumbo v3, "icon"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2889
    const-string/jumbo v3, "description"

    invoke-virtual {p1, v8}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "PROXY_ADMIN_INFO"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 2870
    return-void
.end method

.method public captureUmcLogs(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)[B
    .locals 26
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "deviceInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 3786
    .local p3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3787
    .local v12, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v23, "android.permission.sec.MDM_UMC_INTERNAL"

    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3788
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3790
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v23

    if-nez v23, :cond_0

    .line 3791
    const/16 v23, 0x0

    return-object v23

    .line 3793
    :cond_0
    const/4 v10, 0x0

    .line 3794
    .local v10, "logs":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 3796
    .local v20, "token":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3797
    .local v13, "pidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v23, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "activity"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 3803
    .local v3, "am":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v17

    .line 3804
    .local v17, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v17, :cond_1

    .line 3805
    const/16 v23, 0x0

    return-object v23

    .line 3807
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "runApi$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3808
    .local v15, "runApi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v15, :cond_2

    iget-object v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 3809
    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3810
    const-string/jumbo v24, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v25, " "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3813
    .end local v15    # "runApi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v16    # "runApi$iterator":Ljava/util/Iterator;
    .end local v17    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v6

    .line 3814
    .local v6, "e1":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 3817
    .end local v6    # "e1":Ljava/lang/Exception;
    :cond_3
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v23, "logcat"

    const/16 v24, 0x0

    aput-object v23, v2, v24

    const-string/jumbo v23, "-d"

    const/16 v24, 0x1

    aput-object v23, v2, v24

    const-string/jumbo v23, "-v"

    const/16 v24, 0x2

    aput-object v23, v2, v24

    const-string/jumbo v23, "threadtime"

    const/16 v24, 0x3

    aput-object v23, v2, v24

    .line 3820
    .local v2, "LOGCAT_CMD":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 3822
    .local v9, "logcatProc":Ljava/lang/Process;
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 3824
    .local v9, "logcatProc":Ljava/lang/Process;
    const/4 v14, 0x0

    .line 3825
    .local v14, "reader":Ljava/io/BufferedReader;
    const-string/jumbo v23, "line.separator"

    invoke-static/range {v23 .. v23}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3826
    .local v8, "lineSeparator":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 3829
    .local v18, "strOutput":Ljava/lang/StringBuilder;
    const/16 v22, 0x0

    .line 3830
    .local v22, "zos":Ljava/util/zip/ZipOutputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3831
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v22, Ljava/util/zip/ZipOutputStream;

    .end local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3832
    .local v22, "zos":Ljava/util/zip/ZipOutputStream;
    new-instance v19, Ljava/util/zip/ZipEntry;

    const-string/jumbo v23, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 3833
    .local v19, "ze":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 3834
    new-instance v14, Ljava/io/BufferedReader;

    .end local v14    # "reader":Ljava/io/BufferedReader;
    new-instance v23, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3836
    .local v14, "reader":Ljava/io/BufferedReader;
    const-string/jumbo v23, "---------------------------------------------------------------\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3837
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3838
    const-string/jumbo v23, "---------------------------------------------------------------\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3840
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 3841
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3842
    :cond_4
    :goto_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 3843
    const-string/jumbo v23, " +"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3845
    .local v11, "parts":[Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_4

    array-length v0, v11

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    const/16 v23, 0x2

    aget-object v23, v11, v23

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 3846
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3847
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3848
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 3849
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3858
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "lineSeparator":Ljava/lang/String;
    .end local v9    # "logcatProc":Ljava/lang/Process;
    .end local v10    # "logs":[B
    .end local v11    # "parts":[Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "strOutput":Ljava/lang/StringBuilder;
    .end local v19    # "ze":Ljava/util/zip/ZipEntry;
    .end local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v5

    .line 3859
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "EnterpriseDeviceManagerService"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3860
    const/4 v10, 0x0

    .line 3862
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3863
    return-object v10

    .line 3853
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "lineSeparator":Ljava/lang/String;
    .restart local v9    # "logcatProc":Ljava/lang/Process;
    .restart local v10    # "logs":[B
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "strOutput":Ljava/lang/StringBuilder;
    .restart local v19    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v22    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_5
    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 3854
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 3855
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 3856
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 3857
    .local v10, "logs":[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public checkServices()V
    .locals 2

    .prologue
    .line 2786
    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServicesAdded:Z

    if-nez v0, :cond_0

    .line 2787
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2788
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2800
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 2785
    :cond_0
    return-void
.end method

.method public configureContainerAdminForMigration(Z)Z
    .locals 3
    .param p1, "blockAdminConnection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3541
    const-string/jumbo v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Configure the MDM admin before and after migration on Device after FOTA update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3543
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->blockAdminToReceivePolicy(Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deactivateAdminForUser(Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3188
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    .line 3189
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 3188
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3189
    const/4 v3, 0x0

    .line 3188
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 3191
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3187
    :goto_0
    return-void

    .line 3192
    :catch_0
    move-exception v0

    .line 3193
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deactivateAdminForUser:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deactivateProxyAdminsForUser(I)V
    .locals 13
    .param p1, "userHandle"    # I

    .prologue
    .line 3159
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/util/ArrayList;

    .line 3160
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 3159
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3160
    const/4 v10, 0x0

    .line 3159
    invoke-static {v8, v9, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 3161
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3162
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const/16 v8, 0x9

    new-array v1, v8, [Ljava/lang/String;

    .line 3163
    const-string/jumbo v8, "adminUid"

    const/4 v9, 0x0

    aput-object v8, v1, v9

    const-string/jumbo v8, "proxyUid"

    const/4 v9, 0x1

    aput-object v8, v1, v9

    const-string/jumbo v8, "proxyType"

    const/4 v9, 0x2

    aput-object v8, v1, v9

    .line 3164
    const-string/jumbo v8, "componentName"

    const/4 v9, 0x3

    aput-object v8, v1, v9

    const-string/jumbo v8, "proxyComponentName"

    const/4 v9, 0x4

    aput-object v8, v1, v9

    .line 3165
    const-string/jumbo v8, "label"

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const-string/jumbo v8, "icon"

    const/4 v9, 0x6

    aput-object v8, v1, v9

    .line 3166
    const-string/jumbo v8, "description"

    const/4 v9, 0x7

    aput-object v8, v1, v9

    const-string/jumbo v8, "permissions"

    const/16 v9, 0x8

    aput-object v8, v1, v9

    .line 3168
    .local v1, "columns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3169
    const-string/jumbo v9, "PROXY_ADMIN_INFO"

    const/4 v10, 0x0

    .line 3168
    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 3172
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cv$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3173
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "proxyUid"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3174
    .local v6, "proxyUid":I
    const-string/jumbo v8, "proxyComponentName"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3175
    .local v0, "adminName":Ljava/lang/String;
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne v8, p1, :cond_0

    .line 3177
    :try_start_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {p0, v8, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3179
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeProxyAdmin(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3180
    :catch_0
    move-exception v4

    .line 3181
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "deactivateAdminForUser:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3158
    .end local v0    # "adminName":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "proxyUid":I
    :cond_1
    return-void
.end method

.method public disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 3580
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3890
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    .line 3891
    const-string/jumbo v1, "android.permission.DUMP"

    .line 3890
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3892
    const-string/jumbo v0, "Permission Denial: can\'t dump Enterprise Device Manager Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3893
    return-void

    .line 3895
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EnterpriseDeviceManagerService Knox Info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3896
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->showKnoxVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EnterpriseDeviceManagerService Error Info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SystemUIAdapter registed count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getRegistedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3899
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isKnoxStateMonitorRegisted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SystemUIAdapter is not registed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3889
    :cond_1
    return-void
.end method

.method public enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "TargetPkgName"    # Ljava/lang/String;
    .param p5, "TargetSignature"    # Ljava/lang/String;
    .param p6, "PolicyBitMask"    # I

    .prologue
    .line 3576
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public enforceActiveAdminPermission(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 669
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 668
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 667
    return-void
.end method

.method public enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 674
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 678
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 679
    .local v3, "versionInfo":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    const-string/jumbo v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 680
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 681
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 683
    .local v1, "pid":I
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 684
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 687
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2, p1, p2}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 689
    .local v0, "isAuthorized":I
    if-eqz v0, :cond_1

    .line 690
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 691
    const-string/jumbo v6, " is not authorized to be called!!!"

    .line 690
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 677
    .end local v0    # "isAuthorized":I
    .end local v1    # "pid":I
    .end local v2    # "uid":I
    :cond_1
    return-void
.end method

.method public enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 653
    if-eqz p2, :cond_0

    .line 654
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 655
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v2, v1, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 657
    .local v0, "callingCN":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 651
    .end local v0    # "callingCN":Landroid/content/ComponentName;
    .end local v1    # "uid":I
    :cond_0
    return-void

    .line 658
    .restart local v0    # "callingCN":Landroid/content/ComponentName;
    .restart local v1    # "uid":I
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Component name violation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 701
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 711
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceOwnerOnlyAndActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 706
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceOwnerOnlyAndActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlySupportedOperation()V
    .locals 4

    .prologue
    .line 2823
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2824
    .local v0, "userId":I
    if-eqz v0, :cond_0

    .line 2825
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Operation not supported on user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2826
    const-string/jumbo v3, ", only allowed on owner."

    .line 2825
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2822
    :cond_0
    return-void
.end method

.method public enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 697
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1136
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1137
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 1140
    :cond_0
    return-object v3
.end method

.method public getActiveAdminPackageName(I)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 4093
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 4094
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4095
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4097
    :cond_0
    return-object v3
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 9
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1666
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1667
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, " getActiveAdmins calls from Profile return default value"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    .line 1670
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/util/ArrayList;

    .line 1671
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1670
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1672
    monitor-enter p0

    .line 1673
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1674
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    monitor-exit p0

    .line 1675
    return-object v2

    .line 1676
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1677
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    const/16 v3, -0x2710

    if-eq v3, p1, :cond_4

    .line 1678
    const/4 v3, -0x1

    if-ne v3, p1, :cond_5

    .line 1680
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1672
    .end local v0    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1679
    .restart local v0    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v1    # "admin$iterator":Ljava/util/Iterator;
    .restart local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_5
    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_3

    goto :goto_1

    .end local v0    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_6
    monitor-exit p0

    .line 1683
    return-object v2
.end method

.method public getActiveAdminsInfo(I)Ljava/util/List;
    .locals 8
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1688
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/util/ArrayList;

    .line 1689
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1688
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1689
    const/4 v5, 0x0

    .line 1688
    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1690
    monitor-enter p0

    .line 1691
    const/16 v3, -0x2710

    if-ne p1, v3, :cond_0

    .line 1692
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1694
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1695
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "admin$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1696
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 1697
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1690
    .end local v0    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v1    # "admin$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "admin$iterator":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;>;"
    :cond_2
    monitor-exit p0

    .line 1700
    return-object v2
.end method

.method public getActiveSamsungAuthorizedAdmin(I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 2688
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 2689
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2690
    return-object v0

    .line 2692
    :cond_0
    return-object v3
.end method

.method public getAdminContextIfCallerInCertWhiteList(Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;
    .locals 23
    .param p1, "reqPermission"    # Ljava/lang/String;

    .prologue
    .line 897
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 898
    .local v3, "callingUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 900
    .local v18, "userId":I
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 901
    const-string/jumbo v20, "adminUid"

    const/16 v21, 0x0

    aput-object v20, v14, v21

    .line 902
    const-string/jumbo v20, "packageName"

    const/16 v21, 0x1

    aput-object v20, v14, v21

    .line 903
    const-string/jumbo v20, "signature"

    const/16 v21, 0x2

    aput-object v20, v14, v21

    .line 906
    .local v14, "returnColumns":[Ljava/lang/String;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 908
    .local v15, "selectionValues":Landroid/content/ContentValues;
    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v20

    .line 909
    const-string/jumbo v21, "#SelectClause#"

    .line 907
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    .line 913
    const-string/jumbo v21, "CertificateWhiteListTable"

    .line 912
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v19

    .line 918
    .local v19, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "cv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 919
    .local v4, "cv":Landroid/content/ContentValues;
    const-string/jumbo v20, "packageName"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 920
    .local v10, "packageName":Ljava/lang/String;
    const-string/jumbo v20, "signature"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 921
    .local v11, "packageSignature":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 923
    .local v8, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v17

    .line 925
    .local v17, "uid":I
    move/from16 v0, v17

    if-ne v0, v3, :cond_3

    .line 926
    const/16 v16, 0x0

    .line 928
    .local v16, "signatureMatch":Z
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 930
    .local v12, "packages":[Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 931
    const/16 v20, 0x0

    array-length v0, v12

    move/from16 v21, v0

    .end local v16    # "signatureMatch":Z
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v13, v12, v20

    .line 933
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    .line 932
    move-object/from16 v0, v22

    invoke-static {v0, v13, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 934
    .local v16, "signatureMatch":Z
    if-eqz v16, :cond_1

    .line 942
    .end local v12    # "packages":[Ljava/lang/String;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v16    # "signatureMatch":Z
    :cond_0
    :goto_2
    if-eqz v16, :cond_3

    .line 944
    const-string/jumbo v20, "adminUid"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 946
    .local v2, "adminUid":I
    if-eqz p1, :cond_3

    .line 948
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v20

    if-nez v20, :cond_3

    .line 950
    new-instance v20, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 961
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 950
    return-object v20

    .line 931
    .end local v2    # "adminUid":I
    .restart local v12    # "packages":[Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v16    # "signatureMatch":Z
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 939
    .end local v12    # "packages":[Ljava/lang/String;
    .end local v13    # "pkg":Ljava/lang/String;
    .local v16, "signatureMatch":Z
    :cond_2
    const/16 v16, 0x1

    goto :goto_2

    .line 952
    .end local v16    # "signatureMatch":Z
    .restart local v2    # "adminUid":I
    :catch_0
    move-exception v7

    .line 953
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    const-string/jumbo v21, "Could not check permission of the admin that has added caller to cert white list"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 961
    .end local v2    # "adminUid":I
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 958
    .end local v17    # "uid":I
    :catch_1
    move-exception v6

    .line 959
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string/jumbo v20, "EnterpriseDeviceManagerService"

    const-string/jumbo v21, "Package added to certificate whitelisted not installed"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 961
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 960
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v20

    .line 961
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 960
    throw v20

    .line 965
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v8    # "identity":J
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "packageSignature":Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    return-object v20
.end method

.method public getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1763
    const/4 v1, -0x1

    .line 1764
    .local v1, "callingUid":I
    if-nez p2, :cond_1

    .line 1765
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1792
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v8

    return v8

    .line 1768
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 1769
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v8

    invoke-virtual {v8, p2, v10, v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1771
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_4

    .line 1772
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1773
    .local v2, "callingIdentity":J
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v6

    .line 1774
    .local v6, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1775
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "pdai$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1776
    .local v4, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v4}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1777
    invoke-virtual {v4}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1778
    invoke-virtual {v4}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 1779
    return v10

    .line 1784
    .end local v4    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_3
    if-ne v1, v9, :cond_0

    .line 1785
    return v11

    .line 1788
    .end local v2    # "callingIdentity":J
    .end local v5    # "pdai$iterator":Ljava/util/Iterator;
    .end local v6    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_4
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0
.end method

.method public getAdminUidForAuthorizedUid(I)I
    .locals 5
    .param p1, "authorizedUid"    # I

    .prologue
    .line 3675
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "getAdminUidForAuthorizedUid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3676
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3677
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    .line 3678
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3679
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3680
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string/jumbo v4, "adminUid"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3681
    .local v0, "result":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 3682
    const-string/jumbo v2, "adminUid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 3685
    .end local v0    # "result":Landroid/content/ContentValues;
    .end local v1    # "selectionValues":Landroid/content/ContentValues;
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method public getAuthorizedUidForAdminUid(I)I
    .locals 5
    .param p1, "adminUid"    # I

    .prologue
    .line 3661
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "getAuthorizedUidForAdminUid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3662
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3663
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    .line 3664
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3665
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3666
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string/jumbo v4, "authorizedUid"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3667
    .local v0, "result":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 3668
    const-string/jumbo v2, "authorizedUid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 3671
    .end local v0    # "result":Landroid/content/ContentValues;
    .end local v1    # "selectionValues":Landroid/content/ContentValues;
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method public getConstrainedState()I
    .locals 1

    .prologue
    .line 3588
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedState()I

    move-result v0

    return v0
.end method

.method public getEnterpriseDeviceAdministrators()Ljava/util/List;
    .locals 20
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
    .line 593
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v4, "adminPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaIds()[I

    move-result-object v15

    .line 604
    .local v15, "personas":[I
    if-eqz v15, :cond_1

    .line 605
    const/16 v17, 0x0

    array-length v0, v15

    move/from16 v18, v0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget v14, v15, v17

    .line 606
    .local v14, "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v12

    .line 607
    .local v12, "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v12, :cond_0

    .line 608
    invoke-virtual {v12}, Lcom/samsung/android/knox/SemPersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 614
    .end local v12    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v14    # "personaId":I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v7

    .line 615
    .local v7, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v7, :cond_6

    .line 616
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "cmpName$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 618
    .local v5, "cmpName":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 619
    .local v3, "adminPkgName":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 622
    const/4 v9, 0x0

    .line 623
    .local v9, "isBBCApp":Z
    const/4 v10, 0x0

    .line 624
    .local v10, "isSystemApp":Z
    const/4 v11, 0x0

    .line 625
    .local v11, "metadata":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    const/16 v19, 0xc0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-interface {v0, v3, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 626
    .local v16, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v16, :cond_3

    .line 627
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 628
    .local v11, "metadata":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 629
    const/4 v10, 0x1

    .line 631
    .end local v11    # "metadata":Landroid/os/Bundle;
    :cond_3
    if-eqz v11, :cond_4

    const-string/jumbo v17, "com.samsung.android.knoxenabled"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_4

    .line 632
    const/4 v9, 0x1

    .line 635
    :cond_4
    invoke-static {v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 636
    .local v13, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_5

    .line 637
    :goto_2
    if-nez v9, :cond_2

    sget-object v17, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 638
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 640
    .end local v3    # "adminPkgName":Ljava/lang/String;
    .end local v9    # "isBBCApp":Z
    .end local v10    # "isSystemApp":Z
    .end local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v8

    .line 641
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v17, "EnterpriseDeviceManagerService"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 636
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "adminPkgName":Ljava/lang/String;
    .restart local v9    # "isBBCApp":Z
    .restart local v10    # "isSystemApp":Z
    .restart local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    if-eqz v10, :cond_2

    goto :goto_2

    .line 646
    .end local v3    # "adminPkgName":Ljava/lang/String;
    .end local v5    # "cmpName":Landroid/content/ComponentName;
    .end local v6    # "cmpName$iterator":Ljava/util/Iterator;
    .end local v9    # "isBBCApp":Z
    .end local v10    # "isSystemApp":Z
    .end local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    const-string/jumbo v17, "EnterpriseDeviceManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Enterprise Device Admins "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-object v4
.end method

.method public getMyKnoxAdmin(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 3630
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "MyKNOXAdmin"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAdmins(I)Ljava/util/List;
    .locals 31
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/ProxyDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2929
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v27, Ljava/util/ArrayList;

    .line 2930
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const-string/jumbo v29, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/16 v30, 0x0

    aput-object v29, v28, v30

    const-string/jumbo v29, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    const/16 v30, 0x1

    aput-object v29, v28, v30

    invoke-static/range {v28 .. v28}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    .line 2929
    invoke-direct/range {v27 .. v28}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2930
    const/16 v28, 0x0

    .line 2929
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v7, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 2931
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2932
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const/16 v7, 0x9

    new-array v12, v7, [Ljava/lang/String;

    .line 2933
    const-string/jumbo v7, "adminUid"

    const/16 v27, 0x0

    aput-object v7, v12, v27

    const-string/jumbo v7, "proxyUid"

    const/16 v27, 0x1

    aput-object v7, v12, v27

    const-string/jumbo v7, "proxyType"

    const/16 v27, 0x2

    aput-object v7, v12, v27

    .line 2934
    const-string/jumbo v7, "componentName"

    const/16 v27, 0x3

    aput-object v7, v12, v27

    const-string/jumbo v7, "proxyComponentName"

    const/16 v27, 0x4

    aput-object v7, v12, v27

    .line 2935
    const-string/jumbo v7, "label"

    const/16 v27, 0x5

    aput-object v7, v12, v27

    const-string/jumbo v7, "icon"

    const/16 v27, 0x6

    aput-object v7, v12, v27

    .line 2936
    const-string/jumbo v7, "description"

    const/16 v27, 0x7

    aput-object v7, v12, v27

    const-string/jumbo v7, "permissions"

    const/16 v27, 0x8

    aput-object v7, v12, v27

    .line 2939
    .local v12, "columns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2940
    const-string/jumbo v27, "PROXY_ADMIN_INFO"

    const/16 v28, 0x0

    .line 2939
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v7, v0, v12, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v26

    .line 2943
    .local v26, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "cv$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    .line 2944
    .local v14, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "proxyUid"

    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 2945
    .local v21, "proxyUid":I
    const/4 v7, -0x1

    move/from16 v0, p1

    if-eq v7, v0, :cond_1

    .line 2946
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move/from16 v0, p1

    if-ne v7, v0, :cond_0

    .line 2950
    :cond_1
    const-string/jumbo v7, "proxyType"

    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 2952
    .local v23, "type":I
    const/4 v2, 0x0

    .line 2953
    .local v2, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/4 v7, 0x2

    move/from16 v0, v23

    if-ne v0, v7, :cond_2

    .line 2954
    const-string/jumbo v7, "label"

    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2955
    .local v4, "label":Ljava/lang/String;
    const-string/jumbo v7, "icon"

    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 2956
    .local v6, "icon":[B
    const-string/jumbo v7, "description"

    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2957
    .local v5, "description":Ljava/lang/String;
    const-string/jumbo v7, "permissions"

    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2958
    .local v22, "serializedPerms":Ljava/lang/String;
    const-string/jumbo v7, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 2960
    .local v19, "perms":[Ljava/lang/String;
    const-string/jumbo v7, "proxyComponentName"

    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2962
    .local v20, "proxyComponentName":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 2963
    .local v11, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2964
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/pm/ActivityInfo;

    invoke-direct {v9}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 2965
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v10, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v10}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2966
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2967
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2968
    move/from16 v0, v21

    iput v0, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2969
    iput-object v10, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2970
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2971
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2972
    iput-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2974
    new-instance v2, Landroid/app/admin/ProxyDeviceAdminInfo;

    .end local v2    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V

    .line 3025
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "description":Ljava/lang/String;
    .end local v6    # "icon":[B
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v19    # "perms":[Ljava/lang/String;
    .end local v20    # "proxyComponentName":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    .line 3026
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2977
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "cn":Landroid/content/ComponentName;
    .end local v22    # "serializedPerms":Ljava/lang/String;
    .restart local v2    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_2
    const-string/jumbo v7, "adminUid"

    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2978
    .local v8, "adminUid":I
    const-string/jumbo v7, "componentName"

    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2979
    .local v13, "componentName":Ljava/lang/String;
    const-string/jumbo v7, "permissions"

    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2980
    .restart local v22    # "serializedPerms":Ljava/lang/String;
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 2982
    .restart local v11    # "cn":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 2983
    .local v24, "token":J
    const/4 v9, 0x0

    .line 2985
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 2988
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    .line 2986
    const v28, 0x48080

    .line 2985
    move/from16 v0, v28

    move/from16 v1, v27

    invoke-interface {v7, v11, v0, v1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2993
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3000
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_2
    if-eqz v9, :cond_0

    .line 3005
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 3007
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v10, v7}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 3008
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move/from16 v0, v21

    iput v0, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3009
    iput-object v10, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3010
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3011
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3012
    iput-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3015
    if-nez v22, :cond_3

    .line 3016
    :try_start_1
    new-instance v18, Landroid/app/admin/ProxyDeviceAdminInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v7}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .local v18, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    move-object/from16 v2, v18

    .end local v18    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .local v2, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto :goto_1

    .line 2989
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v16

    .line 2993
    .local v16, "e":Ljava/lang/Exception;
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 2992
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 2993
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2992
    throw v7

    .line 3018
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :try_start_2
    new-instance v18, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 3019
    const-string/jumbo v7, ";"

    .line 3018
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v7}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v18    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    move-object/from16 v2, v18

    .end local v18    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .local v2, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto/16 :goto_1

    .line 3021
    .local v2, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :catch_1
    move-exception v16

    .line 3022
    .restart local v16    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 3028
    .end local v2    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "adminUid":I
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "cn":Landroid/content/ComponentName;
    .end local v13    # "componentName":Ljava/lang/String;
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v21    # "proxyUid":I
    .end local v22    # "serializedPerms":Ljava/lang/String;
    .end local v23    # "type":I
    .end local v24    # "token":J
    :cond_4
    return-object v17
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 1705
    return-void
.end method

.method public hasAnyActiveAdmin()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2566
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2567
    return v1

    .line 2570
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2571
    return v1

    .line 2574
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1145
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1149
    const/16 v1, 0x1b

    if-ge p2, v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v1

    return v1

    .line 1153
    :cond_0
    monitor-enter p0

    .line 1154
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 1155
    .local v0, "info":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_1

    .line 1156
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " on user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    .end local v0    # "info":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1158
    .restart local v0    # "info":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 1660
    monitor-enter p0

    .line 1661
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 2621
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovableInternal(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2627
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAdminRemovableInternal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", userHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 2630
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_0

    .line 2631
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2633
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2634
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v1

    .line 2635
    .local v1, "ret":Z
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAdminRemovableInternal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    return v1
.end method

.method public isMdmAdminPresent()Z
    .locals 1

    .prologue
    .line 2782
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresentInternal()Z

    move-result v0

    return v0
.end method

.method public isMigrationStateNOK()Z
    .locals 5

    .prologue
    .line 3563
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "migrationState"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3564
    .local v1, "migrationState":Ljava/lang/String;
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current migration state is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3565
    if-eqz v1, :cond_0

    const-string/jumbo v2, "nok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 3566
    const/4 v2, 0x1

    return v2

    .line 3568
    .end local v1    # "migrationState":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3569
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "error occured during getting migration state"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3572
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isRestrictedByConstrainedState(I)Z
    .locals 1
    .param p1, "bitMask"    # I

    .prologue
    .line 3584
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isRestrictedByConstrainedState(I)Z

    move-result v0

    return v0
.end method

.method public isUMCAdmin(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3276
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v2

    .line 3277
    .local v2, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pdai$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 3278
    .local v0, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 3279
    invoke-virtual {v0}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3278
    if-eqz v3, :cond_0

    .line 3280
    const/4 v3, 0x1

    return v3

    .line 3284
    .end local v0    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public migrateApplicationDisablePolicy(I)Z
    .locals 2
    .param p1, "newContainerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3555
    const-string/jumbo v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "migrate ContainerApplicationPolicy after instalation of 3rd party apps"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrateApplicationDisablePolicy(I)Z

    move-result v0

    return v0
.end method

.method public migrateEnterpriseContainer(IZ)Z
    .locals 7
    .param p1, "newContainerId"    # I
    .param p2, "isB2B"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3508
    const-string/jumbo v4, "EnterpriseDeviceManagerService"

    const-string/jumbo v5, "Migrating Enterprise container data after FOTA update"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3509
    const/4 v1, 0x1

    .line 3511
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminNameForUserId(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 3512
    .local v0, "admin":Landroid/content/ComponentName;
    const-wide/16 v2, -0x1

    .line 3514
    .local v2, "adminUid":J
    const/16 v4, 0x64

    if-lt p1, v4, :cond_0

    if-nez v0, :cond_1

    .line 3515
    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "No proper Admin owned by Container"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3514
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3518
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateEnterpriseDatabase(IZ)J

    move-result-wide v2

    .line 3520
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    if-eqz p2, :cond_2

    .line 3521
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateEcppDatabse(Landroid/content/ComponentName;IJ)Z

    move-result v1

    .line 3523
    .end local v1    # "ret":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 3524
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getEnterpriseMigrationResult()Z

    move-result v1

    .line 3526
    :cond_3
    const-string/jumbo v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "migrateEnterpriseContainer() return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    return v1
.end method

.method public onContainerCreation(II)V
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2698
    const-string/jumbo v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EnterpriseDeviceManagerService.onContainerCreation("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2699
    const-string/jumbo v7, ")"

    .line 2698
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2700
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ps$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2701
    .local v2, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2702
    .local v0, "cb":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 2703
    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2705
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_0
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerCreation(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2706
    :catch_0
    move-exception v1

    .line 2707
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseDeviceManagerService"

    const-string/jumbo v6, "Handled Exception in onContainerCreation"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2697
    .end local v0    # "cb":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :cond_1
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2732
    const-string/jumbo v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EnterpriseDeviceManagerService.onContainerRemoved("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2733
    const-string/jumbo v7, ")"

    .line 2732
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ps$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2735
    .local v2, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2736
    .local v0, "cb":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 2737
    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2739
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_0
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerRemoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2740
    :catch_0
    move-exception v1

    .line 2741
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseDeviceManagerService"

    const-string/jumbo v6, "Handled Exception in onContainerRemoved"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2731
    .end local v0    # "cb":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :cond_1
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2715
    const-string/jumbo v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EnterpriseDeviceManagerService.onPreContainerRemoval("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2716
    const-string/jumbo v7, ")"

    .line 2715
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ps$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2718
    .local v2, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2719
    .local v0, "cb":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 2720
    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2722
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_0
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onPreContainerRemoval(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2723
    :catch_0
    move-exception v1

    .line 2724
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "EnterpriseDeviceManagerService"

    const-string/jumbo v6, "Handled Exception in onPreContainerRemoval"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2714
    .end local v0    # "cb":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :cond_1
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2580
    monitor-enter p0

    .line 2581
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2583
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2584
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2585
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 2583
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2588
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 2580
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    .prologue
    .line 2595
    monitor-enter p0

    .line 2596
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2598
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2599
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2600
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 2601
    const-string/jumbo v3, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " packageHasActiveAdminsAsUser "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " userID"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2603
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 2598
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2607
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 2595
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public readUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    const/4 v12, 0x0

    .line 3749
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3750
    .local v6, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v8, "android.permission.sec.MDM_UMC_INTERNAL"

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3751
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3753
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3754
    return-object v12

    .line 3756
    :cond_0
    const/4 v4, 0x0

    .line 3757
    .local v4, "io":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 3758
    .local v2, "inFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 3760
    .local v0, "buffer":[B
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v8, "/efs/umc"

    const-string/jumbo v9, "BulkEnrollmentProfile"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3761
    .end local v2    # "inFile":Ljava/io/File;
    .local v3, "inFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 3762
    :cond_1
    return-object v12

    .line 3764
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .line 3765
    .local v0, "buffer":[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3766
    .local v5, "io":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .end local v4    # "io":Ljava/io/FileInputStream;
    move-result v7

    .line 3767
    .local v7, "readLen":I
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3768
    const/4 v4, 0x0

    .line 3770
    .restart local v4    # "io":Ljava/io/FileInputStream;
    if-lez v7, :cond_3

    .line 3771
    .end local v5    # "io":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v8, Ljava/lang/String;

    array-length v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v0, v10, v9}, Ljava/lang/String;-><init>([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v8

    :cond_3
    move-object v2, v3

    .line 3782
    .end local v0    # "buffer":[B
    .end local v3    # "inFile":Ljava/io/File;
    .end local v4    # "io":Ljava/io/FileInputStream;
    .end local v7    # "readLen":I
    :cond_4
    :goto_0
    return-object v12

    .line 3772
    .local v0, "buffer":[B
    .restart local v2    # "inFile":Ljava/io/File;
    .restart local v4    # "io":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 3773
    .end local v0    # "buffer":[B
    .end local v2    # "inFile":Ljava/io/File;
    .end local v4    # "io":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3776
    if-eqz v4, :cond_4

    .line 3777
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 3778
    :catch_1
    move-exception v1

    .line 3779
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3774
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 3776
    :goto_2
    if-eqz v4, :cond_5

    .line 3777
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3774
    :cond_5
    :goto_3
    throw v8

    .line 3778
    :catch_2
    move-exception v1

    .line 3779
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 3774
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "inFile":Ljava/io/File;
    .restart local v4    # "io":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/File;
    .local v2, "inFile":Ljava/io/File;
    goto :goto_2

    .end local v2    # "inFile":Ljava/io/File;
    .end local v4    # "io":Ljava/io/FileInputStream;
    .local v0, "buffer":[B
    .restart local v3    # "inFile":Ljava/io/File;
    .restart local v5    # "io":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "io":Ljava/io/FileInputStream;
    .local v4, "io":Ljava/io/FileInputStream;
    goto :goto_2

    .line 3772
    .end local v0    # "buffer":[B
    .end local v2    # "inFile":Ljava/io/File;
    .restart local v3    # "inFile":Ljava/io/File;
    .local v4, "io":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "inFile":Ljava/io/File;
    .end local v4    # "io":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "inFile":Ljava/io/File;
    .restart local v5    # "io":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "io":Ljava/io/FileInputStream;
    .local v4, "io":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public reconcileAdmin(Landroid/content/ComponentName;I)V
    .locals 10
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1485
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    sget v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    if-eq v6, v7, :cond_0

    .line 1486
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Need to be System Process"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1490
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 1492
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_2

    .line 1493
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1494
    .local v5, "uid":I
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1496
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1499
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1498
    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v4

    .line 1501
    .local v4, "ret":Z
    if-nez v4, :cond_1

    .line 1502
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1503
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1504
    return-void

    .line 1510
    :cond_1
    :try_start_3
    sget-object v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ps$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1512
    .local v2, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v6, v5}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1494
    .end local v2    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v3    # "ps$iterator":Ljava/util/Iterator;
    .end local v4    # "ret":Z
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit p0

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1517
    .end local v0    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v5    # "uid":I
    :catch_0
    move-exception v1

    .line 1518
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed reconcileAdmin for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1519
    const-string/jumbo v8, "for user id "

    .line 1518
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1483
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void

    .restart local v0    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v5    # "uid":I
    :cond_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1268
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 1267
    return-void
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1285
    const-string/jumbo v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing admin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from DPM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1284
    return-void
.end method

.method public removeAuthorizedUid(II)Z
    .locals 6
    .param p1, "authorizedUid"    # I
    .param p2, "adminUid"    # I

    .prologue
    const/4 v5, 0x1

    .line 3646
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "removeAuthorizedUid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3647
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3648
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    .line 3649
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3650
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3651
    const-string/jumbo v2, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3652
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ADMIN_UID_AUTHORIZATION_INFO"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 3653
    .local v0, "rows":I
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAuthorizedUid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3654
    if-le v0, v5, :cond_0

    .line 3655
    return v5

    .line 3657
    .end local v0    # "rows":I
    .end local v1    # "selectionValues":Landroid/content/ContentValues;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public removeProxyAdmin(I)V
    .locals 6
    .param p1, "proxyUid"    # I

    .prologue
    .line 3032
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    .line 3033
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 3032
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3033
    const/4 v3, 0x0

    .line 3032
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 3034
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3035
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "proxyUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3036
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "PROXY_ADMIN_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 3031
    return-void
.end method

.method public restoreContainerAdminData(ILjava/lang/String;I)Z
    .locals 11
    .param p1, "creatorUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "containerId"    # I

    .prologue
    const/4 v7, 0x0

    .line 3414
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    sget v9, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    if-eq v8, v9, :cond_0

    .line 3415
    new-instance v7, Ljava/lang/SecurityException;

    const-string/jumbo v8, "Need to be System Process"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3418
    :cond_0
    const/4 v6, -0x2

    .line 3419
    .local v6, "ret":I
    const/4 v2, 0x0

    .line 3420
    .local v2, "dataFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 3423
    .local v1, "dataDesc":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/data/system/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3424
    .end local v2    # "dataFile":Ljava/io/File;
    .local v3, "dataFile":Ljava/io/File;
    const/high16 v8, 0x3c000000    # 0.0078125f

    :try_start_1
    invoke-static {v3, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3428
    .local v1, "dataDesc":Landroid/os/ParcelFileDescriptor;
    const-string/jumbo v8, "application_policy"

    .line 3427
    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3430
    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v8, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->backupApplicationData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v6

    .line 3431
    if-nez v6, :cond_1

    .line 3432
    const/high16 v8, 0x18000000

    invoke-static {v3, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3434
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, p1, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v0, v8, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->restoreApplicationData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 3440
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3441
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3444
    :cond_2
    if-eqz v1, :cond_3

    .line 3445
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v2, v3

    .line 3449
    .end local v0    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v1    # "dataDesc":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "dataFile":Ljava/io/File;
    :cond_4
    :goto_1
    if-nez v6, :cond_5

    const/4 v7, 0x1

    :cond_5
    return v7

    .line 3446
    .restart local v0    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .restart local v1    # "dataDesc":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "dataFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .local v5, "ignore":Ljava/lang/Exception;
    goto :goto_0

    .line 3437
    .end local v0    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v3    # "dataFile":Ljava/io/File;
    .end local v5    # "ignore":Ljava/lang/Exception;
    .local v1, "dataDesc":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "dataFile":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 3438
    .end local v1    # "dataDesc":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "dataFile":Ljava/io/File;
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restoreContainerAdminData:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3440
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3441
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3444
    :cond_6
    if-eqz v1, :cond_4

    .line 3445
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 3446
    :catch_2
    move-exception v5

    .restart local v5    # "ignore":Ljava/lang/Exception;
    goto :goto_1

    .line 3439
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 3440
    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3441
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3444
    :cond_7
    if-eqz v1, :cond_8

    .line 3445
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 3439
    :cond_8
    :goto_4
    throw v7

    .line 3446
    :catch_3
    move-exception v5

    .restart local v5    # "ignore":Ljava/lang/Exception;
    goto :goto_4

    .line 3439
    .end local v5    # "ignore":Ljava/lang/Exception;
    .restart local v3    # "dataFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "dataFile":Ljava/io/File;
    .local v2, "dataFile":Ljava/io/File;
    goto :goto_3

    .line 3437
    .end local v2    # "dataFile":Ljava/io/File;
    .restart local v3    # "dataFile":Ljava/io/File;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "dataFile":Ljava/io/File;
    .restart local v2    # "dataFile":Ljava/io/File;
    goto :goto_2
.end method

.method public declared-synchronized selfUpdateAdmin(Ljava/lang/String;)I
    .locals 22
    .param p1, "apkFilePath"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1913
    :try_start_0
    const-string/jumbo v18, "EnterpriseDeviceManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "apkFilePath : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    if-eqz v18, :cond_0

    .line 1917
    const/16 v18, -0x1

    monitor-exit p0

    return v18

    .line 1921
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminComponent()Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1922
    .local v4, "activeComponent":Landroid/content/ComponentName;
    if-nez v4, :cond_1

    .line 1923
    const/16 v18, -0x2

    monitor-exit p0

    return v18

    .line 1926
    :cond_1
    if-nez p1, :cond_4

    const/16 p1, 0x0

    .line 1931
    .end local p1    # "apkFilePath":Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1934
    .local v14, "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "user"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    .line 1935
    .local v16, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v17

    .line 1936
    .local v17, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "info$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 1937
    .local v10, "info":Landroid/content/pm/UserInfo;
    iget v0, v10, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1938
    sget-object v18, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 1939
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 1940
    iget v0, v10, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v0

    .line 1939
    const/16 v21, 0x80

    .line 1938
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v18

    if-eqz v18, :cond_3

    .line 1941
    const/16 v18, -0x1

    monitor-exit p0

    return v18

    .line 1926
    .end local v10    # "info":Landroid/content/pm/UserInfo;
    .end local v11    # "info$iterator":Ljava/util/Iterator;
    .end local v14    # "token":J
    .end local v16    # "userManager":Landroid/os/UserManager;
    .end local v17    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v18

    if-gtz v18, :cond_2

    .line 1927
    const/16 p1, 0x0

    .local p1, "apkFilePath":Ljava/lang/String;
    goto :goto_0

    .line 1945
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v11    # "info$iterator":Ljava/util/Iterator;
    .restart local v14    # "token":J
    .restart local v16    # "userManager":Landroid/os/UserManager;
    .restart local v17    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    :try_start_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1947
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1950
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1951
    .local v5, "apkFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1957
    sget-object v18, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    .line 1959
    .local v12, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v12, :cond_8

    .line 1960
    const/16 v18, -0x3

    monitor-exit p0

    return v18

    .line 1948
    .end local v5    # "apkFile":Ljava/io/File;
    .end local v12    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_6
    const/16 v18, -0x3

    monitor-exit p0

    return v18

    .line 1952
    .restart local v5    # "apkFile":Ljava/io/File;
    :cond_7
    :try_start_5
    const-string/jumbo v18, "EnterpriseDeviceManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Cannot read or is not a file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1953
    const/16 v18, -0x3

    monitor-exit p0

    return v18

    .line 1963
    .restart local v12    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_8
    :try_start_6
    iget-object v0, v12, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v18

    if-nez v18, :cond_9

    .line 1964
    const/16 v18, -0x4

    monitor-exit p0

    return v18

    .line 1969
    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v12, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 1970
    iget-object v0, v12, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkAdminExistsInELMDB(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1973
    :cond_a
    const-string/jumbo v18, "self_update_admin_component"

    .line 1974
    const-string/jumbo v19, "/data/system/selfUpdateAdmin.conf"

    .line 1973
    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1975
    .local v6, "cNames":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1977
    .local v13, "storeString":Ljava/lang/String;
    if-nez v6, :cond_e

    .line 1978
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    .line 1987
    .end local v13    # "storeString":Ljava/lang/String;
    :cond_b
    :goto_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "/data/app/selfUpdateApks/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1988
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 1987
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1988
    const-string/jumbo v19, ".apk"

    .line 1987
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1989
    .local v8, "destFilePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1991
    .local v7, "destFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v18

    if-eqz v18, :cond_c

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1996
    :cond_c
    :goto_2
    const-string/jumbo v18, "self_update_admin_component"

    .line 1997
    const-string/jumbo v19, "/data/system/selfUpdateAdmin.conf"

    .line 1996
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v13, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1997
    invoke-static {v5, v7}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 2000
    const/16 v18, 0x1a4

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v8, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2002
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2009
    const/16 v18, 0x0

    monitor-exit p0

    return v18

    .line 1971
    .end local v6    # "cNames":Ljava/lang/String;
    .end local v7    # "destFile":Ljava/io/File;
    .end local v8    # "destFilePath":Ljava/lang/String;
    :cond_d
    const/16 v18, -0x5

    monitor-exit p0

    return v18

    .line 1981
    .restart local v6    # "cNames":Ljava/lang/String;
    .restart local v13    # "storeString":Ljava/lang/String;
    :cond_e
    :try_start_8
    const-string/jumbo v18, "EnterpriseDeviceManagerService"

    const-string/jumbo v19, "Upgrade Admin Pending"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 1983
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1984
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    .line 1983
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .local v13, "storeString":Ljava/lang/String;
    goto/16 :goto_1

    .line 1992
    .end local v13    # "storeString":Ljava/lang/String;
    .restart local v7    # "destFile":Ljava/io/File;
    .restart local v8    # "destFilePath":Ljava/lang/String;
    :cond_f
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 1993
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1ed

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-static/range {v18 .. v21}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 2004
    .end local v5    # "apkFile":Ljava/io/File;
    .end local v6    # "cNames":Ljava/lang/String;
    .end local v7    # "destFile":Ljava/io/File;
    .end local v8    # "destFilePath":Ljava/lang/String;
    .end local v11    # "info$iterator":Ljava/util/Iterator;
    .end local v12    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v14    # "token":J
    .end local v16    # "userManager":Landroid/os/UserManager;
    .end local v17    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v9

    .line 2005
    .local v9, "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v18, "EnterpriseDeviceManagerService"

    const-string/jumbo v19, "Upgrade Admin Ex: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2006
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2007
    const/16 v18, -0x1

    monitor-exit p0

    return v18

    .line 1998
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "apkFile":Ljava/io/File;
    .restart local v6    # "cNames":Ljava/lang/String;
    .restart local v7    # "destFile":Ljava/io/File;
    .restart local v8    # "destFilePath":Ljava/lang/String;
    .restart local v11    # "info$iterator":Ljava/util/Iterator;
    .restart local v12    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v14    # "token":J
    .restart local v16    # "userManager":Landroid/os/UserManager;
    .restart local v17    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_10
    const/16 v18, -0x1

    monitor-exit p0

    return v18

    .end local v4    # "activeComponent":Landroid/content/ComponentName;
    .end local v5    # "apkFile":Ljava/io/File;
    .end local v6    # "cNames":Ljava/lang/String;
    .end local v7    # "destFile":Ljava/io/File;
    .end local v8    # "destFilePath":Ljava/lang/String;
    .end local v11    # "info$iterator":Ljava/util/Iterator;
    .end local v12    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v14    # "token":J
    .end local v16    # "userManager":Landroid/os/UserManager;
    .end local v17    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18
.end method

.method public sendIntent(I)V
    .locals 1
    .param p1, "restriction"    # I

    .prologue
    .line 3598
    const/4 v0, -0x1

    .line 3599
    .local v0, "msgResId":I
    packed-switch p1, :pswitch_data_0

    .line 3610
    return-void

    .line 3601
    :pswitch_0
    const v0, 0x10409f9

    .line 3612
    :goto_0
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3597
    return-void

    .line 3604
    :pswitch_1
    const v0, 0x10409fb

    .line 3605
    goto :goto_0

    .line 3607
    :pswitch_2
    const v0, 0x10409ea

    .line 3608
    goto :goto_0

    .line 3599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdmin(Landroid/content/ComponentName;Z)V

    .line 1164
    return-void
.end method

.method public setActiveAdminSilent(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    .line 2861
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    .line 2862
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

    aput-object v3, v2, v5

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_SILENT_ACTIVATION_INTERNAL"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2861
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2863
    const/4 v2, 0x0

    .line 2861
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 2864
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdmin(Landroid/content/ComponentName;Z)V

    .line 2860
    return-void
.end method

.method public setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "removable"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 1717
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1718
    .local v5, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v8, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1719
    const-string/jumbo v8, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1720
    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1721
    const/4 v1, -0x1

    .line 1722
    .local v1, "callingUid":I
    if-nez p3, :cond_1

    .line 1723
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1745
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1746
    const-string/jumbo v8, "EnterpriseDeviceManagerService"

    const-string/jumbo v9, "Admin is not active"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    return v10

    .line 1726
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 1727
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v8

    invoke-virtual {v8, p3, v10, v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1730
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_4

    .line 1731
    const-string/jumbo v8, "EnterpriseDeviceManagerService"

    const-string/jumbo v9, "Can\'t found packageName"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    invoke-virtual {p0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    .line 1733
    .local v4, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pdai$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1734
    .local v2, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1735
    invoke-virtual {v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1739
    .end local v2    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_3
    if-ne v1, v11, :cond_4

    .line 1740
    return v10

    .line 1742
    .end local v3    # "pdai$iterator":Ljava/util/Iterator;
    .end local v4    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_4
    if-eqz v0, :cond_0

    .line 1743
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    .line 1750
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "userId":I
    :cond_5
    const-string/jumbo v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setAdminRemovable : callingUid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "ADMIN_INFO"

    .line 1752
    const-string/jumbo v10, "canRemove"

    .line 1751
    invoke-virtual {v8, v1, v9, v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1753
    .local v6, "result":Z
    return v6
.end method

.method public setB2BMode(Z)I
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2819
    const/4 v0, 0x0

    return v0
.end method

.method public setMyKnoxAdmin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3620
    .local v0, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3621
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3622
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3623
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "MyKNOXAdmin"

    invoke-virtual {v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3624
    const/4 v1, 0x1

    return v1
.end method

.method public setPermissions(I[Ljava/lang/String;)V
    .locals 9
    .param p1, "adminUid"    # I
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 3198
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    .line 3199
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    aput-object v5, v4, v7

    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 3198
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 3200
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 3201
    :cond_0
    return-void

    .line 3203
    :cond_1
    aget-object v1, p2, v7

    .line 3204
    .local v1, "serializedPerms":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 3205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3207
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "PROXY_ADMIN_INFO"

    const-string/jumbo v4, "permissions"

    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3197
    return-void
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 1836
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "systemReady()"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "mConstrainedState move to system ready "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    .line 1840
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresentInternal()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkConstrainedState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1841
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V

    .line 1844
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->init(Landroid/content/Context;)V

    .line 1846
    new-instance v2, Lcom/android/server/enterprise/email/AccountsReceiver;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/email/AccountsReceiver;-><init>(Landroid/content/Context;)V

    .line 1848
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "InternalHandlerThread"

    .line 1849
    const/16 v3, 0xa

    .line 1848
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1850
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1851
    new-instance v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/os/Looper;)V

    sput-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    .line 1854
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 1855
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1867
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->loadActiveAdmins()V

    .line 1870
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->initServices(Z)V

    .line 1873
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->startRemoteDesktopService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    :goto_0
    return-void

    .line 1874
    :catch_0
    move-exception v0

    .line 1875
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "Failed to start remote desktop service."

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final updateAdminPermissions()V
    .locals 3

    .prologue
    .line 1881
    const-string/jumbo v1, "EnterpriseDeviceManagerService"

    const-string/jumbo v2, "updateAdminPermissions"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    :goto_0
    return-void

    .line 1885
    :catch_0
    move-exception v0

    .line 1886
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .locals 9
    .param p1, "proxyAdmin"    # Landroid/app/admin/ProxyDeviceAdminInfo;
    .param p2, "proxyUid"    # I
    .param p3, "adminComponentName"    # Landroid/content/ComponentName;
    .param p4, "adminUid"    # I

    .prologue
    .line 2900
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/util/ArrayList;

    .line 2901
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 2900
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2901
    const/4 v6, 0x0

    .line 2900
    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 2903
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2904
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "proxyUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2906
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2907
    .local v3, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "adminUid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2908
    const-string/jumbo v4, "componentName"

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2909
    const-string/jumbo v4, "proxyComponentName"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    const-string/jumbo v4, "proxyType"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2911
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2912
    .local v2, "serializedPerms":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2913
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 2914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2913
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2916
    :cond_0
    const-string/jumbo v4, "permissions"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 2919
    const-string/jumbo v4, "label"

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    const-string/jumbo v4, "icon"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2921
    const-string/jumbo v4, "description"

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "PROXY_ADMIN_INFO"

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 2899
    return-void
.end method

.method public writeUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 3702
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3703
    .local v6, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v7, "android.permission.sec.MDM_UMC_INTERNAL"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3704
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3706
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3707
    return v12

    .line 3709
    :cond_0
    const/4 v2, 0x0

    .line 3710
    .local v2, "os":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 3712
    .local v4, "outFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3714
    .local v8, "token":J
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "/efs/umc"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3715
    .local v0, "dataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3716
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3719
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "/efs/umc"

    const-string/jumbo v10, "BulkEnrollmentProfile"

    invoke-direct {v5, v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3720
    .local v5, "outFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .end local v4    # "outFile":Ljava/io/File;
    move-result v7

    if-eqz v7, :cond_2

    .line 3721
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3724
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_5

    .line 3732
    :cond_3
    :goto_0
    const/4 v7, 0x1

    .line 3737
    if-eqz v11, :cond_4

    .line 3738
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3743
    :cond_4
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3732
    return v7

    .line 3725
    :cond_5
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3726
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .end local v2    # "os":Ljava/io/FileOutputStream;
    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 3727
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 3728
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3729
    const/4 v2, 0x0

    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 3739
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 3740
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3733
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 3734
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "outFile":Ljava/io/File;
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3737
    if-eqz v2, :cond_6

    .line 3738
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3743
    :cond_6
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3745
    return v12

    .line 3739
    :catch_2
    move-exception v1

    .line 3740
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 3735
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 3737
    :goto_4
    if-eqz v2, :cond_7

    .line 3738
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 3743
    :cond_7
    :goto_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3735
    throw v7

    .line 3739
    :catch_3
    move-exception v1

    .line 3740
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 3735
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataDir":Ljava/io/File;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "outFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "outFile":Ljava/io/File;
    .local v4, "outFile":Ljava/io/File;
    goto :goto_4

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "outFile":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "outFile":Ljava/io/File;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3733
    .end local v4    # "outFile":Ljava/io/File;
    .local v2, "os":Ljava/io/FileOutputStream;
    .restart local v5    # "outFile":Ljava/io/File;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "outFile":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "outFile":Ljava/io/File;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
