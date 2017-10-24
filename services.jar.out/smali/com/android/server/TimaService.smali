.class public Lcom/android/server/TimaService;
.super Landroid/service/tima/ITimaService$Stub;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TimaService$1;,
        Lcom/android/server/TimaService$TimaServiceHandler;,
        Lcom/android/server/TimaService$TuiReceiver;
    }
.end annotation


# static fields
.field private static final ATTESTATION_BLOCK_PACKAGE_DIGESTS:B = 0x41t

.field private static final ATTESTATION_BLOCK_PACKAGE_DIGEST_COUNT:B = 0x40t

.field private static final ATTESTATION_BLOCK_PACKAGE_NAMES:B = 0x42t

.field private static final ATTESTATION_BLOCK_PACKAGE_VERSIONS:B = 0x43t

.field private static final ATTESTATION_BLOCK_SIGNATURE_DIGESTS:B = 0x45t

.field private static final ATTESTATION_BLOCK_SIGNATURE_DIGEST_COUNT:B = 0x44t

.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final DEBUG:Z = true

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final EVENT_MSG_KERNEL_METADATA_MODIFIED:I = 0x4

.field private static final EVENT_MSG_KERNEL_MODIFIED:I = 0x3

.field private static final EVENT_MSG_LKM_MODIFIED:I = 0x1

.field private static final EVENT_MSG_SELINUX_OFF:I = 0x2

.field public static final INTENT_KLMS_KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

.field public static final KAP_ID_FIRST_LICENSE_ACTIVATION:I = 0x1

.field public static final KAP_ID_LAST_LICENSE_DEACTIVATION:I = 0x2

.field public static final KAP_ID_LICENSE_STATUS_RESPONSE:I = 0x3

.field private static final KAP_KAP_MODE_PERSIST_STATUS:Ljava/lang/String; = "persist.sys.kap.status"

.field public static final KAP_LICENSE_STATUS_REQUEST:Ljava/lang/String; = "KAP_LICENSE_STATUS_REQUEST"

.field public static final KAP_MODE_STATUS:Ljava/lang/String; = "KAP_RP_MODE_STATUS"

.field public static final KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.kap.KAP_NOTIFICATION"

.field private static final KAP_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.kap.date"

.field private static final PACKAGE_SECURITY_LOGUPLOAD_AGENT:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final TAG:Ljava/lang/String; = "TimaService"

.field private static final TIMA_ALERT_TITLE:Ljava/lang/String; = "TIMA security measurement"

.field private static final TIMA_CCM_CSR_PROFILES_DIR:Ljava/lang/String; = "/data/misc/tz_ccm/csr_profiles"

.field private static final TIMA_CCM_DB_FILE:Ljava/lang/String; = "/data/misc/tz_ccm/key_db"

.field private static final TIMA_CCM_DIR:Ljava/lang/String; = "/data/misc/tz_ccm"

.field private static final TIMA_DUMP_LOG_EXEC:Ljava/lang/String; = "/system/bin/tima_dump_log -s 20 -d 40 -o "

.field private static final TIMA_ERROR_KEYSTORE_NO_PERMISSON:I = 0x64

.field private static final TIMA_EVENT_ID:I = 0x2

.field private static final TIMA_EVENT_MSG:Ljava/lang/String; = "MSG="

.field private static final TIMA_EVENT_STATUS:Ljava/lang/String; = "TIMA_STATUS="

.field private static final TIMA_INTENT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field private static final TIMA_ISV_APK_DIGEST_MAX:I = 0xa

.field private static final TIMA_ISV_CERT_DIGEST_MAX:I = 0xa

.field private static final TIMA_ISV_PACKAGE_NAME_MAX:I = 0x32

.field private static final TIMA_KEYSTORE_20_MAX_KEY_LENGTH:I = 0x20

.field private static final TIMA_LOG_DIR:Ljava/lang/String; = "/data/misc/tima"

.field private static final TIMA_LOG_STEM:Ljava/lang/String; = "/tima.log."

.field public static TIMA_MAX_EVENTS:I = 0x0

.field private static final TIMA_NOTIFICATION_ID:I = 0x1b58

.field public static final TIMA_OPCODE_HISTORY:I = 0xc351

.field public static final TIMA_OPCODE_MEASUREMENT:I = 0xc350

.field private static final TIMA_SERVICE_NAME:Ljava/lang/String; = "tima"

.field private static final TIMA_START_ID:I = 0x1

.field public static final TIMA_SUBCODE_LKM:I = 0x2711

.field public static final TIMA_SUBCODE_PKM:I = 0x2710

.field private static final TIMA_TIMER_CHECK_INTERVAL:J = 0x493e0L

.field private static final TIMA_TIMER_START_DELAY:J = 0x1388L

.field private static final TIMA_TIMER_START_DELAY_FIRST_TIME:J = 0x493e0L

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field public static iBootCompleted:Z

.field private static final mEventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsBuildUpdate:Z

.field private mIsLicenseActive:Z

.field private mNotifMgr:Landroid/app/NotificationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timaISLClbk:Landroid/service/tima/ITimaISLCallback;

.field private timaThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/server/TimaService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/TimaService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/TimaService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/TimaService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/TimaService;->getCCMVersionBoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/TimaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TimaService;->notifyKapEnabled()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/TimaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TimaService;->setKapBuildProp()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/TimaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TimaService;->startAttestationBoot()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x64

    sput v0, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    .line 153
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 252
    invoke-direct {p0}, Landroid/service/tima/ITimaService$Stub;-><init>()V

    .line 182
    iput-boolean v2, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    .line 183
    iput-boolean v2, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 192
    iput-object v3, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    .line 2327
    new-instance v2, Lcom/android/server/TimaService$1;

    invoke-direct {v2, p0}, Lcom/android/server/TimaService$1;-><init>(Lcom/android/server/TimaService;)V

    iput-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 253
    iput-object p1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    .line 254
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ro.config.tima"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 255
    .local v0, "timaEnabled":Z
    if-eqz v0, :cond_5

    .line 257
    invoke-direct {p0}, Lcom/android/server/TimaService;->registerTuiReceiver()V

    .line 259
    iget-object v2, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    .line 260
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "TimaService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    .line 261
    iget-object v2, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 262
    iget-object v2, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 263
    .local v1, "timaLooper":Landroid/os/Looper;
    if-eqz v1, :cond_4

    .line 264
    new-instance v2, Lcom/android/server/TimaService$TimaServiceHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/TimaService$TimaServiceHandler;-><init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/TimaService;->mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

    .line 270
    const-string/jumbo v2, "CCM"

    invoke-virtual {p0, v2}, Lcom/android/server/TimaService;->loadTlcServer(Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/android/server/TimaService;->isDCMsupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const-string/jumbo v2, "DCM"

    invoke-virtual {p0, v2}, Lcom/android/server/TimaService;->loadTlcServer(Ljava/lang/String;)I

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/android/server/TimaService;->isESECOMMSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    const-string/jumbo v2, "ESECOMM"

    invoke-virtual {p0, v2}, Lcom/android/server/TimaService;->loadTlcServer(Ljava/lang/String;)I

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/android/server/TimaService;->initCCMDatabase()Z

    .line 281
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    invoke-direct {p0}, Lcom/android/server/TimaService;->isLicenseActive()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 284
    const-string/jumbo v2, "ro.crypto.state"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unencrypted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 285
    const-string/jumbo v2, "vold.decrypt"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "trigger_restart_framework"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "vold.decrypt"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "trigger_reset_main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 284
    if-eqz v2, :cond_3

    .line 286
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TimaService;->handleBuildUpdate()V

    .line 289
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TimaService;->registerBroadcastReceiver()V

    .line 290
    const-string/jumbo v2, "TimaService"

    const-string/jumbo v3, "TIMA: Start TimaService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v1    # "timaLooper":Landroid/os/Looper;
    :goto_0
    return-void

    .line 266
    .restart local v1    # "timaLooper":Landroid/os/Looper;
    :cond_4
    const-string/jumbo v2, "TimaService"

    const-string/jumbo v3, "Failed getting looper for TimaServiceHandler"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 294
    .end local v1    # "timaLooper":Landroid/os/Looper;
    :cond_5
    const-string/jumbo v2, "TimaService"

    const-string/jumbo v3, "TIMA: Start TimaService, only available gettimaversion"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static native ccm_register_for_default_cert(II)J
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 485
    const-string/jumbo v1, "TimaService"

    .line 486
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/TimaService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 487
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

    .line 488
    const-string/jumbo v3, "] trying to access methodName ["

    .line 487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 488
    const-string/jumbo v3, "] in ["

    .line 487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 488
    const-string/jumbo v3, "] service"

    .line 487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 490
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 492
    throw v0

    .line 494
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    return v5
.end method

.method private static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 1189
    if-eqz p0, :cond_0

    .line 1190
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1192
    :catch_0
    move-exception v0

    .local v0, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method private enforcePermission()Z
    .locals 2

    .prologue
    .line 902
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 904
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 905
    const/4 v1, 0x1

    return v1

    .line 908
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private declared-synchronized getCCMVersionBoot()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 987
    :try_start_0
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.config.tima"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 990
    .local v0, "timaEnabled":Z
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "in getCCMVersionBoot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    if-eqz v0, :cond_1

    .line 993
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 998
    invoke-static {}, Lcom/android/server/TimaService;->get_ccm_version()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 1003
    :cond_0
    :try_start_1
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "getCCMVersionBoot - TIMA version does not include CCM"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1004
    return-object v4

    .line 1008
    :cond_1
    :try_start_2
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "getCCMVersionBoot - ro.config.tima is not ture"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1009
    return-object v4

    .end local v0    # "timaEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCollectorApkDigest(Ljava/lang/String;)[B
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 2002
    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "calculate APK Digest for package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2006
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    .line 2005
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2008
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2009
    .local v2, "baseApkPath":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/TimaService;->getDigestOfFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 2010
    .local v0, "apkDigest":[B
    if-eqz v0, :cond_0

    .line 2011
    const-string/jumbo v5, "TimaService"

    .line 2012
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "APK file MessageDigest: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2013
    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 2012
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2011
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const-string/jumbo v5, "TimaService"

    .line 2015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ISV apkDigest size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2014
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :goto_0
    return-object v0

    .line 2017
    :cond_0
    const-string/jumbo v5, "TimaService"

    .line 2018
    const-string/jumbo v6, "ISV apkDigest is null"

    .line 2017
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2021
    .end local v0    # "apkDigest":[B
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "baseApkPath":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 2022
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2024
    return-object v8
.end method

.method private getCollectorBlob(I)[B
    .locals 19
    .param p1, "callerUid"    # I

    .prologue
    .line 2029
    const/4 v5, 0x0

    .line 2031
    .local v5, "digestCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .line 2033
    .local v10, "packageNames":[Ljava/lang/String;
    array-length v14, v10

    const/16 v15, 0xa

    if-le v14, v15, :cond_0

    const/16 v5, 0xa

    .line 2034
    :goto_0
    const/16 v14, 0x3e8

    move/from16 v0, p1

    if-ne v0, v14, :cond_1

    .line 2035
    const-string/jumbo v14, "TimaService"

    const-string/jumbo v15, "This call was from System UID app."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    const/16 v14, 0x16

    new-array v12, v14, [B

    .local v12, "systemUidBlob":[B
    fill-array-data v12, :array_0

    .line 2042
    return-object v12

    .line 2033
    .end local v12    # "systemUidBlob":[B
    :cond_0
    array-length v5, v10

    goto :goto_0

    .line 2047
    :cond_1
    mul-int/lit8 v14, v5, 0x20

    add-int/lit8 v4, v14, 0x8

    .line 2048
    .local v4, "blobSize":I
    new-array v3, v4, [B

    .line 2049
    .local v3, "blob":[B
    const/4 v14, 0x0

    .line 2052
    const/4 v8, 0x1

    .local v8, "idx":I
    const/16 v15, 0x40

    aput-byte v15, v3, v14

    .line 2053
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .local v9, "idx":I
    const/4 v14, 0x0

    aput-byte v14, v3, v8

    .line 2054
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    const/4 v14, 0x2

    aput-byte v14, v3, v9

    .line 2055
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    ushr-int/lit8 v14, v5, 0x8

    int-to-byte v14, v14

    aput-byte v14, v3, v8

    .line 2056
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    int-to-byte v14, v5

    aput-byte v14, v3, v9

    .line 2059
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    const/16 v14, 0x41

    aput-byte v14, v3, v8

    .line 2060
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    mul-int/lit8 v14, v5, 0x20

    ushr-int/lit8 v14, v14, 0x8

    int-to-byte v14, v14

    aput-byte v14, v3, v9

    .line 2061
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    mul-int/lit8 v14, v5, 0x20

    int-to-byte v14, v14

    aput-byte v14, v3, v8

    .line 2064
    const/4 v7, 0x0

    .local v7, "i":I
    move v8, v9

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    :goto_1
    if-ge v7, v5, :cond_3

    .line 2065
    aget-object v14, v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/TimaService;->getCollectorApkDigest(Ljava/lang/String;)[B

    move-result-object v1

    .line 2066
    .local v1, "apkDigest":[B
    if-eqz v1, :cond_2

    .line 2067
    array-length v14, v1

    const/4 v15, 0x0

    invoke-static {v1, v15, v3, v8, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2068
    array-length v14, v1

    add-int/2addr v8, v14

    .line 2069
    const-string/jumbo v14, "TimaService"

    .line 2070
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ISV blob has been filled with "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " bytes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2069
    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2072
    :cond_2
    const-string/jumbo v14, "TimaService"

    .line 2073
    const-string/jumbo v15, "ISV apkDigest is null"

    .line 2072
    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2076
    .end local v1    # "apkDigest":[B
    :cond_3
    const-string/jumbo v14, "TimaService"

    .line 2077
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ISV blob total size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v3

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2076
    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    const/4 v14, 0x0

    array-length v15, v3

    :goto_3
    if-ge v14, v15, :cond_4

    aget-byte v13, v3, v14

    .line 2079
    .local v13, "value":B
    const-string/jumbo v16, "TimaService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "blob"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 2082
    .end local v13    # "value":B
    :cond_4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2085
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2089
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v5}, Lcom/android/server/TimaService;->writePackageNames(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V

    .line 2091
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v5}, Lcom/android/server/TimaService;->writePackageVersions(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V

    .line 2093
    const/4 v14, 0x0

    aget-object v14, v10, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v5}, Lcom/android/server/TimaService;->writeCertificateDigests(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 2097
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 2098
    .local v11, "returnBytes":[B
    const-string/jumbo v14, "TimaService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TimaService.getCollectorBlob() returnBytes.length "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v11

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2103
    if-eqz v2, :cond_5

    .line 2105
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2100
    :cond_5
    :goto_5
    return-object v11

    .line 2086
    .end local v11    # "returnBytes":[B
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    goto :goto_4

    .line 2106
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v11    # "returnBytes":[B
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 2102
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "returnBytes":[B
    :catchall_0
    move-exception v14

    .line 2103
    if-eqz v2, :cond_6

    .line 2105
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2102
    :cond_6
    :goto_6
    throw v14

    .line 2106
    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 2036
    :array_0
    .array-data 1
        0x40t
        0x0t
        0x2t
        0x0t
        0x0t
        0x41t
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x43t
        0x0t
        0x0t
        0x44t
        0x0t
        0x2t
        0x0t
        0x0t
        0x45t
        0x0t
        0x0t
    .end array-data
.end method

.method private getDigestOfBytes([B)[B
    .locals 14
    .param p1, "inBytes"    # [B

    .prologue
    const/4 v13, 0x0

    .line 2226
    const/4 v5, 0x0

    .line 2227
    .local v5, "dis":Ljava/security/DigestInputStream;
    const/4 v3, 0x0

    .line 2228
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 2230
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    const-string/jumbo v12, "SHA256"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 2231
    .local v11, "md":Ljava/security/MessageDigest;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2232
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

    .line 2233
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

    .line 2235
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "bis":Ljava/io/BufferedInputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 2236
    .local v0, "b":I
    const/4 v12, -0x1

    if-ne v0, v12, :cond_0

    .line 2239
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v12

    .line 2250
    if-eqz v6, :cond_1

    .line 2251
    :try_start_4
    invoke-virtual {v6}, Ljava/security/DigestInputStream;->close()V

    .line 2252
    :cond_1
    if-eqz v4, :cond_2

    .line 2253
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 2254
    :cond_2
    if-eqz v2, :cond_3

    .line 2255
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2239
    :cond_3
    :goto_0
    return-object v12

    .line 2256
    :catch_0
    move-exception v8

    .line 2257
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2246
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

    .line 2247
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .local v9, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2250
    if-eqz v5, :cond_4

    .line 2251
    :try_start_6
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2252
    :cond_4
    if-eqz v3, :cond_5

    .line 2253
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2254
    :cond_5
    if-eqz v1, :cond_6

    .line 2255
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2260
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    return-object v13

    .line 2256
    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 2257
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2244
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :catch_3
    move-exception v8

    .line 2245
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .restart local v8    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2250
    if-eqz v5, :cond_7

    .line 2251
    :try_start_8
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2252
    :cond_7
    if-eqz v3, :cond_8

    .line 2253
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2254
    :cond_8
    if-eqz v1, :cond_6

    .line 2255
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 2256
    :catch_4
    move-exception v8

    .line 2257
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2242
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :catch_5
    move-exception v7

    .line 2243
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2250
    if-eqz v5, :cond_9

    .line 2251
    :try_start_a
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2252
    :cond_9
    if-eqz v3, :cond_a

    .line 2253
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2254
    :cond_a
    if-eqz v1, :cond_6

    .line 2255
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    .line 2256
    :catch_6
    move-exception v8

    .line 2257
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2240
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "dis":Ljava/security/DigestInputStream;
    :catch_7
    move-exception v10

    .line 2241
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dis":Ljava/security/DigestInputStream;
    .local v10, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_5
    :try_start_b
    invoke-virtual {v10}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2250
    if-eqz v5, :cond_b

    .line 2251
    :try_start_c
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2252
    :cond_b
    if-eqz v3, :cond_c

    .line 2253
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2254
    :cond_c
    if-eqz v1, :cond_6

    .line 2255
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_2

    .line 2256
    :catch_8
    move-exception v8

    .line 2257
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2248
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v12

    .line 2250
    :goto_6
    if-eqz v5, :cond_d

    .line 2251
    :try_start_d
    invoke-virtual {v5}, Ljava/security/DigestInputStream;->close()V

    .line 2252
    :cond_d
    if-eqz v3, :cond_e

    .line 2253
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 2254
    :cond_e
    if-eqz v1, :cond_f

    .line 2255
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 2248
    :cond_f
    :goto_7
    throw v12

    .line 2256
    :catch_9
    move-exception v8

    .line 2257
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 2248
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

    .line 2240
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

    .line 2242
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

    .line 2244
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

    .line 2246
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

.method private getDigestOfFile(Ljava/lang/String;)[B
    .locals 14
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 2266
    const/4 v3, 0x0

    .line 2267
    .local v3, "dis":Ljava/security/DigestInputStream;
    const/4 v1, 0x0

    .line 2268
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .line 2270
    .local v9, "fileStream":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v12, "SHA256"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 2271
    .local v11, "md":Ljava/security/MessageDigest;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2272
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .local v10, "fileStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/security/DigestInputStream;

    invoke-direct {v4, v10, v11}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2273
    .local v4, "dis":Ljava/security/DigestInputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2275
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 2276
    .local v0, "b":I
    const/4 v12, -0x1

    if-ne v0, v12, :cond_0

    .line 2279
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v12

    .line 2290
    if-eqz v4, :cond_1

    .line 2291
    :try_start_4
    invoke-virtual {v4}, Ljava/security/DigestInputStream;->close()V

    .line 2292
    :cond_1
    if-eqz v2, :cond_2

    .line 2293
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 2294
    :cond_2
    if-eqz v10, :cond_3

    .line 2295
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2279
    :cond_3
    :goto_0
    return-object v12

    .line 2296
    :catch_0
    move-exception v6

    .line 2297
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2286
    .end local v0    # "b":I
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "fileStream":Ljava/io/InputStream;
    .end local v11    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    .line 2287
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2290
    if-eqz v3, :cond_4

    .line 2291
    :try_start_6
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2292
    :cond_4
    if-eqz v1, :cond_5

    .line 2293
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2294
    :cond_5
    if-eqz v9, :cond_6

    .line 2295
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2300
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    return-object v13

    .line 2296
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 2297
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2284
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    :catch_3
    move-exception v6

    .line 2285
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2290
    if-eqz v3, :cond_7

    .line 2291
    :try_start_8
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2292
    :cond_7
    if-eqz v1, :cond_8

    .line 2293
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2294
    :cond_8
    if-eqz v9, :cond_6

    .line 2295
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 2296
    :catch_4
    move-exception v6

    .line 2297
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2282
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    :catch_5
    move-exception v5

    .line 2283
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2290
    if-eqz v3, :cond_9

    .line 2291
    :try_start_a
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2292
    :cond_9
    if-eqz v1, :cond_a

    .line 2293
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2294
    :cond_a
    if-eqz v9, :cond_6

    .line 2295
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    .line 2296
    :catch_6
    move-exception v6

    .line 2297
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2280
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    :catch_7
    move-exception v8

    .line 2281
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_5
    :try_start_b
    invoke-virtual {v8}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2290
    if-eqz v3, :cond_b

    .line 2291
    :try_start_c
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2292
    :cond_b
    if-eqz v1, :cond_c

    .line 2293
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2294
    :cond_c
    if-eqz v9, :cond_6

    .line 2295
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_2

    .line 2296
    :catch_8
    move-exception v6

    .line 2297
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2288
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v12

    .line 2290
    :goto_6
    if-eqz v3, :cond_d

    .line 2291
    :try_start_d
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 2292
    :cond_d
    if-eqz v1, :cond_e

    .line 2293
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2294
    :cond_e
    if-eqz v9, :cond_f

    .line 2295
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 2288
    :cond_f
    :goto_7
    throw v12

    .line 2296
    :catch_9
    move-exception v6

    .line 2297
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 2288
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v11    # "md":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .local v9, "fileStream":Ljava/io/InputStream;
    goto :goto_6

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v12

    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .local v3, "dis":Ljava/security/DigestInputStream;
    goto :goto_6

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v12

    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_6

    .line 2280
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    .local v3, "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catch_a
    move-exception v8

    .restart local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    goto :goto_5

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catch_b
    move-exception v8

    .restart local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .local v3, "dis":Ljava/security/DigestInputStream;
    goto :goto_5

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catch_c
    move-exception v8

    .restart local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_5

    .line 2282
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    .local v3, "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catch_d
    move-exception v5

    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    goto :goto_4

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catch_e
    move-exception v5

    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .local v3, "dis":Ljava/security/DigestInputStream;
    goto :goto_4

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catch_f
    move-exception v5

    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto :goto_4

    .line 2284
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    .local v3, "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catch_10
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_3

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catch_11
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .local v3, "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_3

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catch_12
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_3

    .line 2286
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    .local v3, "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catch_13
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    goto/16 :goto_1

    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catch_14
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .local v3, "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "dis":Ljava/security/DigestInputStream;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "fileStream":Ljava/io/InputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v10    # "fileStream":Ljava/io/InputStream;
    :catch_15
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "fileStream":Ljava/io/InputStream;
    .restart local v9    # "fileStream":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    .restart local v3    # "dis":Ljava/security/DigestInputStream;
    goto/16 :goto_1
.end method

.method private getImei()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2304
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2305
    const-string/jumbo v0, "INVALID IMEI"

    .line 2306
    .local v0, "imei":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 2307
    iget-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 2308
    if-nez v0, :cond_0

    .line 2309
    iget-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2310
    if-nez v0, :cond_0

    .line 2311
    const-string/jumbo v0, "INVALID IMEI"

    .line 2316
    :cond_0
    return-object v0
.end method

.method private getKapState()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1719
    const/4 v6, 0x0

    .line 1721
    .local v6, "ret":Z
    const/4 v7, 0x1

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    .line 1722
    const-string/jumbo v7, "kapstate"

    const/4 v8, 0x0

    aput-object v7, v0, v8

    .line 1725
    .local v0, "columns":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1727
    .local v3, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string/jumbo v7, "knox_active_protection"

    const/4 v8, 0x0

    .line 1726
    invoke-virtual {v3, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1729
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 1744
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const-string/jumbo v7, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getKapState ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    return v6

    .line 1730
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1731
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 1732
    const-string/jumbo v7, "kapstate"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1733
    .local v4, "iret":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 1734
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-ne v7, v9, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1738
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "iret":Ljava/lang/Integer;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 1740
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getKapState failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTimaStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 923
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA: in getTimaStatus"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-static {}, Lcom/android/server/TimaService;->get_tima_Version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native get_ccm_version()Ljava/lang/String;
.end method

.method static native get_tima_Version()Ljava/lang/String;
.end method

.method private handleBuildUpdate()V
    .locals 6

    .prologue
    .line 1887
    :try_start_0
    const-string/jumbo v3, "ro.build.date"

    const-string/jumbo v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1889
    .local v0, "currentBuild":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.kap.date"

    .line 1890
    const-string/jumbo v4, "NONE"

    .line 1889
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1893
    .local v2, "oldBuild":Ljava/lang/String;
    const-string/jumbo v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleBuildUpdate - currentBuild: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", oldBuild: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1894
    const-string/jumbo v5, ", license: "

    .line 1893
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1894
    iget-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1893
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1898
    const-string/jumbo v3, "TimaService"

    const-string/jumbo v4, "handleBuildUpdate - updated"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    .line 1901
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1902
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 1903
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1905
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    if-eqz v3, :cond_1

    .line 1907
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1908
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 1909
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1885
    .end local v0    # "currentBuild":Ljava/lang/String;
    .end local v2    # "oldBuild":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1912
    :catch_0
    move-exception v1

    .line 1913
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initCCMDatabase()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 953
    const-string/jumbo v4, "TimaService"

    const-string/jumbo v5, "TIMA: in initCCMDatabase"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/data/misc/tz_ccm"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 957
    .local v1, "dbDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 958
    const-string/jumbo v4, "TimaService"

    const-string/jumbo v5, "TIMA: in initCCMDatabase - creating CCM directory"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 960
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 961
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 964
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/data/misc/tz_ccm/csr_profiles"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 965
    .local v0, "csrProfileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 966
    const-string/jumbo v4, "TimaService"

    const-string/jumbo v5, "TIMA: in initCCMDatabase - creating CCM CSR profile directory"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 968
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 969
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 973
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/data/misc/tz_ccm/key_db"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 974
    .local v2, "dbFile":Ljava/io/File;
    const-string/jumbo v4, "TimaService"

    const-string/jumbo v5, "TIMA: in initCCMDatabase - creating CCM DB file"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 977
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    .end local v0    # "csrProfileDir":Ljava/io/File;
    .end local v1    # "dbDir":Ljava/io/File;
    .end local v2    # "dbFile":Ljava/io/File;
    :goto_0
    return v6

    .line 978
    :catch_0
    move-exception v3

    .line 979
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v4, "TimaService"

    const-string/jumbo v5, "Exception in initCCMDatabase"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private isDCMsupported()Z
    .locals 4

    .prologue
    .line 1962
    const/4 v1, 0x0

    .line 1963
    .local v1, "support":Z
    const-string/jumbo v2, "ro.product.name"

    const-string/jumbo v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1964
    .local v0, "modelName":Ljava/lang/String;
    const-string/jumbo v2, "noble"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1965
    const-string/jumbo v2, "zen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1964
    if-nez v2, :cond_0

    .line 1966
    const-string/jumbo v2, "zero"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1964
    if-eqz v2, :cond_1

    .line 1967
    :cond_0
    const-string/jumbo v2, "TimaService"

    const-string/jumbo v3, "DCM is supported"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const/4 v1, 0x1

    .line 1971
    :cond_1
    return v1
.end method

.method private isESECOMMSupported()Z
    .locals 4

    .prologue
    .line 1975
    const/4 v1, 0x0

    .line 1976
    .local v1, "support":Z
    const-string/jumbo v2, "ro.product.name"

    const-string/jumbo v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1977
    .local v0, "modelName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1978
    const-string/jumbo v2, "noble"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1979
    const-string/jumbo v2, "zen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1978
    if-nez v2, :cond_0

    .line 1980
    const-string/jumbo v2, "zero"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1978
    if-nez v2, :cond_0

    .line 1981
    const-string/jumbo v2, "hero"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1978
    if-nez v2, :cond_0

    .line 1982
    const-string/jumbo v2, "grace"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1978
    if-nez v2, :cond_0

    .line 1983
    const-string/jumbo v2, "dream"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1978
    if-eqz v2, :cond_1

    .line 1985
    :cond_0
    const-string/jumbo v2, "TimaService"

    const-string/jumbo v3, "ESECOMM is supported"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const/4 v1, 0x1

    .line 1988
    :cond_1
    return v1
.end method

.method private declared-synchronized isKapOnInternal()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 2320
    :try_start_0
    invoke-static {}, Lcom/android/server/TimaService;->is_kap_on()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isKapSupported()Z
    .locals 4

    .prologue
    .line 1953
    const/4 v1, 0x0

    .line 1954
    .local v1, "mIsKapSupported":Z
    const-string/jumbo v2, "ro.config.kap"

    const-string/jumbo v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1955
    .local v0, "kapSupported":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1956
    const/4 v1, 0x1

    .line 1958
    :cond_0
    return v1
.end method

.method private isLicenseActive()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1615
    const/4 v6, 0x0

    .line 1617
    .local v6, "ret":Z
    const/4 v7, 0x1

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    .line 1618
    const-string/jumbo v7, "licensestate"

    const/4 v8, 0x0

    aput-object v7, v0, v8

    .line 1621
    .local v0, "columns":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1623
    .local v3, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string/jumbo v7, "knox_active_protection"

    const/4 v8, 0x0

    .line 1622
    invoke-virtual {v3, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1625
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 1640
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const-string/jumbo v7, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isLicenseActive ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    return v6

    .line 1626
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1627
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 1628
    const-string/jumbo v7, "licensestate"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1629
    .local v4, "licenseState":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 1630
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-ne v7, v9, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1634
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "licenseState":Ljava/lang/Integer;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 1636
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isLicenseActive failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 885
    const/4 v1, 0x0

    .line 886
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 888
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 889
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 890
    const/4 v3, 0x1

    return v3

    .line 892
    :cond_0
    return v4

    .line 894
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v4
.end method

.method private isZeroModel()Z
    .locals 4

    .prologue
    .line 1993
    const/4 v1, 0x0

    .line 1994
    .local v1, "isZeroModel":Z
    const-string/jumbo v2, "ro.config.kap_default_on"

    const-string/jumbo v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1995
    .local v0, "isKapDefaultOn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1996
    const/4 v1, 0x1

    .line 1998
    :cond_0
    return v1
.end method

.method static native is_kap_on()Z
.end method

.method private notifyKapEnabled()V
    .locals 6

    .prologue
    .line 1921
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string/jumbo v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1922
    .local v2, "kapStatus":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1923
    .local v1, "kapIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.action.knox.kap.KAP_NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1924
    const-string/jumbo v3, "com.samsung.klmsagent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1927
    const-string/jumbo v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - kapStatus:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1930
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v0

    .line 1932
    .local v0, "isKapOn":Z
    const-string/jumbo v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - isKapOn:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    if-eqz v0, :cond_0

    .line 1935
    const-string/jumbo v3, "KAP_RP_MODE_STATUS"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1936
    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v5, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1938
    :cond_0
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string/jumbo v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    .end local v0    # "isKapOn":Z
    :cond_1
    :goto_0
    return-void

    .line 1939
    :cond_2
    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1940
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v0

    .line 1942
    .restart local v0    # "isKapOn":Z
    const-string/jumbo v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - isKapOn:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    if-nez v0, :cond_3

    .line 1945
    const-string/jumbo v3, "KAP_RP_MODE_STATUS"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1946
    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v5, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1948
    :cond_3
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string/jumbo v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyTLCServiceStart(Ljava/lang/String;)I
    .locals 9
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "Status":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 425
    .local v2, "startTime":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 427
    :cond_0
    invoke-static {p1, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 426
    :cond_1
    if-nez v0, :cond_0

    .line 429
    return v0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v1, "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    return-void
.end method

.method private registerTuiReceiver()V
    .locals 3

    .prologue
    .line 300
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/android/server/TimaService$TuiReceiver;

    invoke-direct {v1}, Lcom/android/server/TimaService$TuiReceiver;-><init>()V

    .line 304
    .local v1, "tuiReceiver":Lcom/android/server/TimaService$TuiReceiver;
    iget-object v2, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    return-void
.end method

.method private restartTLCService(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.security.tlc.restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.security.tlc.restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TimaService;->notifyTLCServiceStart(Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method private declared-synchronized setKapBuildProp()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 1039
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "in setKapBuildProp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string/jumbo v0, "0"

    const-string/jumbo v1, "persist.sys.kap.date"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    const-string/jumbo v0, "persist.sys.kap.date"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "KAP_SAVED_BUILD_FINGERPRINT is set to 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1037
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startAttestationBoot()V
    .locals 9

    .prologue
    const/16 v8, 0x20

    monitor-enter p0

    .line 1014
    :try_start_0
    const-string/jumbo v5, "1"

    const-string/jumbo v6, "ro.config.tima"

    const-string/jumbo v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1016
    .local v3, "timaEnabled":Z
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "in startAttestationBoot"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    if-eqz v3, :cond_2

    .line 1018
    const/16 v5, 0x20

    new-array v2, v5, [B

    .line 1019
    .local v2, "nonce":[B
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1020
    .local v4, "uid":I
    const/4 v0, 0x0

    .line 1022
    .local v0, "blobByteArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 1023
    int-to-byte v5, v1

    aput-byte v5, v2, v1

    .line 1022
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1026
    :cond_0
    invoke-virtual {p0, v2, v4}, Lcom/android/server/TimaService;->attestation([BI)[B

    move-result-object v0

    .line 1028
    .local v0, "blobByteArray":[B
    if-nez v0, :cond_1

    .line 1029
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "Blob from TIMA is invalid"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "blobByteArray":[B
    .end local v1    # "i":I
    .end local v2    # "nonce":[B
    .end local v4    # "uid":I
    :cond_1
    :goto_1
    monitor-exit p0

    .line 1013
    return-void

    .line 1033
    :cond_2
    :try_start_1
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "startAttestationBoot - disabled attestation"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v3    # "timaEnabled":Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method static native timaAttestation([B[B[B)[B
.end method

.method static native timaCheckEvent(II)Ljava/lang/String;
.end method

.method static native timaCheckHistory(II)Ljava/lang/String;
.end method

.method static native timaDumpLog()[B
.end method

.method static native timaGetDeviceID()[B
.end method

.method static native timaKeystoreInit()I
.end method

.method static native timaKeystoreInstallKey(I[B)I
.end method

.method static native timaKeystoreRetrieveKey(I)[B
.end method

.method static native timaKeystoreShutdown()I
.end method

.method static native timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
.end method

.method static native timaLoadTui()I
.end method

.method static native timaSetLicenseStatus(Z)Z
.end method

.method private declared-synchronized timaSetLicenseStatusInternal(Z)Z
    .locals 1
    .param p1, "status"    # Z

    .prologue
    monitor-enter p0

    .line 2324
    :try_start_0
    invoke-static {p1}, Lcom/android/server/TimaService;->timaSetLicenseStatus(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static native timaTuiDecryptPinHash(Ljava/lang/String;[B)[B
.end method

.method static native timaTuiGetCerts()[B
.end method

.method static native timaTuiGetSecretDimension()[I
.end method

.method static native timaTuiInitSecret([BIILjava/lang/String;)I
.end method

.method static native timaTuiRegAppImage(Ljava/lang/String;[B)[I
.end method

.method static native timaUnloadTui()I
.end method

.method static native tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_Fips_KeyStore3_init(Z)I
.end method

.method static native tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method static native tima_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_KeyStore3_init()I
.end method

.method static native tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method private updateKapState(ZZ)V
    .locals 12
    .param p1, "isEnabled"    # Z
    .param p2, "isUserSet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1649
    const/4 v5, 0x0

    .line 1650
    .local v5, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 1653
    .local v0, "buffReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v9, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1662
    .local v4, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v7, 0x0

    .line 1663
    .local v7, "isKapOn":Z
    if-eqz p2, :cond_2

    .line 1664
    move v7, p1

    .line 1687
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "isKapOn":Z
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1690
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "TimaService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateKapState - isKapOn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isUserSet: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    if-eqz v7, :cond_4

    .line 1693
    const-string/jumbo v9, "kapstate"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1698
    :goto_1
    const-string/jumbo v9, "knox_active_protection"

    .line 1697
    invoke-virtual {v4, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1705
    if-eqz v0, :cond_0

    .line 1706
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1709
    :cond_0
    if-eqz v5, :cond_1

    .line 1710
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 1648
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_1
    :goto_2
    return-void

    .line 1666
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "isKapOn":Z
    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    const-string/jumbo v9, "/dev/knox_kap"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1667
    .local v6, "fileReader":Ljava/io/FileReader;
    if-eqz v6, :cond_9

    .line 1669
    .end local v5    # "fileReader":Ljava/io/FileReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1671
    .local v1, "buffReader":Ljava/io/BufferedReader;
    if-eqz v1, :cond_8

    .line 1672
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 1673
    .local v8, "outPut":Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 1674
    const-string/jumbo v9, "11"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "01"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v9

    if-eqz v9, :cond_8

    .line 1675
    :cond_3
    const/4 v7, 0x1

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .local v5, "fileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 1695
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "isKapOn":Z
    .end local v8    # "outPut":Ljava/lang/String;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    :cond_4
    :try_start_4
    const-string/jumbo v9, "kapstate"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1699
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :catch_0
    move-exception v3

    .line 1701
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string/jumbo v9, "TimaService"

    .line 1702
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateKapState failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1703
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 1702
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1701
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1705
    if-eqz v0, :cond_5

    .line 1706
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1709
    :cond_5
    if-eqz v5, :cond_1

    .line 1710
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    goto :goto_2

    .line 1704
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 1705
    :goto_4
    if-eqz v0, :cond_6

    .line 1706
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1709
    :cond_6
    if-eqz v5, :cond_7

    .line 1710
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 1704
    :cond_7
    throw v9

    .local v0, "buffReader":Ljava/io/BufferedReader;
    .restart local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "isKapOn":Z
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 1699
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :cond_8
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v0, "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :cond_9
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_0
.end method

.method private updateLicenseState(Z)V
    .locals 6
    .param p1, "isLicenseActive"    # Z

    .prologue
    .line 1587
    :try_start_0
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1594
    .local v2, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1596
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 1597
    const-string/jumbo v3, "licensestate"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1602
    :goto_0
    const-string/jumbo v3, "knox_active_protection"

    .line 1601
    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1585
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :goto_1
    return-void

    .line 1599
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_0
    const-string/jumbo v3, "licensestate"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1603
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :catch_0
    move-exception v1

    .line 1605
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TimaService"

    .line 1606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLicenseState failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1607
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 1606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1605
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private validateRequest(II)Z
    .locals 2
    .param p1, "opCode"    # I
    .param p2, "subCode"    # I

    .prologue
    .line 332
    const/4 v0, 0x1

    .line 333
    .local v0, "ret":Z
    const v1, 0xc350

    if-eq p1, v1, :cond_1

    .line 334
    const v1, 0xc351

    if-eq p1, v1, :cond_1

    .line 337
    :goto_0
    const/4 v0, 0x0

    .line 339
    :cond_0
    return v0

    .line 335
    :cond_1
    const/16 v1, 0x2710

    if-eq p2, v1, :cond_0

    .line 336
    const/16 v1, 0x2711

    if-eq p2, v1, :cond_0

    goto :goto_0
.end method

.method private writeCertificateDigests(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V
    .locals 12
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "digestCount"    # I

    .prologue
    .line 2181
    const-string/jumbo v8, "TimaService"

    const-string/jumbo v9, "TimaService.writeCertificateDigests()"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const/16 v8, 0x44

    :try_start_0
    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2184
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2185
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2186
    iget-object v8, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, p2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2187
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2188
    .local v6, "signatures":[Landroid/content/pm/Signature;
    if-nez v6, :cond_0

    .line 2189
    const-string/jumbo v8, "TimaService"

    const-string/jumbo v9, "failed to get signatures"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    return-void

    .line 2193
    :cond_0
    array-length v8, v6

    const/16 v9, 0xa

    if-le v8, v9, :cond_3

    const/16 v0, 0xa

    .line 2194
    .local v0, "certificateCount":I
    :goto_0
    if-nez p3, :cond_1

    .line 2196
    const/4 v0, 0x0

    .line 2199
    :cond_1
    ushr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2200
    int-to-byte v8, v0

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2202
    mul-int/lit8 v1, v0, 0x20

    .line 2203
    .local v1, "certificateDigestBlockSize":I
    const/16 v8, 0x45

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2204
    ushr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2205
    int-to-byte v8, v1

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2207
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 2208
    aget-object v8, v6, v3

    if-nez v8, :cond_4

    .line 2209
    const-string/jumbo v8, "TimaService"

    const-string/jumbo v9, "signature is null"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2193
    .end local v0    # "certificateCount":I
    .end local v1    # "certificateDigestBlockSize":I
    .end local v3    # "i":I
    :cond_3
    array-length v0, v6

    .restart local v0    # "certificateCount":I
    goto :goto_0

    .line 2212
    .restart local v1    # "certificateDigestBlockSize":I
    .restart local v3    # "i":I
    :cond_4
    const-string/jumbo v8, "TimaService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "TimaService.writeCertificateDigests() signature "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    aget-object v11, v6, v3

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    aget-object v8, v6, v3

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/TimaService;->getDigestOfBytes([B)[B

    move-result-object v7

    .line 2214
    .local v7, "tempDigest":[B
    if-eqz v7, :cond_2

    .line 2215
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 2217
    .end local v0    # "certificateCount":I
    .end local v1    # "certificateDigestBlockSize":I
    .end local v3    # "i":I
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "signatures":[Landroid/content/pm/Signature;
    .end local v7    # "tempDigest":[B
    :catch_0
    move-exception v2

    .line 2180
    :cond_5
    :goto_3
    return-void

    .line 2219
    :catch_1
    move-exception v4

    .local v4, "ioe":Ljava/io/IOException;
    goto :goto_3
.end method

.method private writePackageNames(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V
    .locals 8
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "digestCount"    # I

    .prologue
    const/16 v7, 0x32

    .line 2115
    :try_start_0
    const-string/jumbo v4, "TimaService"

    const-string/jumbo v5, "TimaService.writePackageNames()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    const/16 v4, 0x42

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2119
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2121
    .local v2, "tempBaos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 2122
    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-le v4, v7, :cond_1

    .line 2123
    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x32

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2127
    :goto_1
    add-int/lit8 v4, p3, -0x1

    if-ge v0, v4, :cond_0

    .line 2128
    const/16 v4, 0x7c

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2125
    :cond_1
    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 2144
    .end local v0    # "i":I
    .end local v2    # "tempBaos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 2113
    :goto_2
    return-void

    .line 2132
    .restart local v0    # "i":I
    .restart local v2    # "tempBaos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2133
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v3, v4

    .line 2134
    .local v3, "totalLengthOfPackages":I
    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2135
    int-to-byte v4, v3

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2137
    const-string/jumbo v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TimaService.writePackageNames() wrote \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    const-string/jumbo v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TimaService.writePackageNames() totalLengthOfPackages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    const-string/jumbo v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TimaService.writePackageNames() tempBaos.toByteArray().length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2142
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2
.end method

.method private writePackageVersions(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V
    .locals 8
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "digestCount"    # I

    .prologue
    .line 2151
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "TimaService.writePackageVersions()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const/16 v5, 0x43

    :try_start_0
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2159
    mul-int/lit8 v3, p3, 0x4

    .line 2160
    .local v3, "packageVersionsBlockSize":I
    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2161
    int-to-byte v5, v3

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2164
    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    aget-object v6, p2, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2165
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 2166
    .local v4, "versionCode":I
    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TimaService.writePackageVersions() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " versionCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    ushr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2168
    ushr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2169
    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2170
    int-to-byte v5, v4

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2175
    .end local v1    # "i":I
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageVersionsBlockSize":I
    .end local v4    # "versionCode":I
    :catch_0
    move-exception v0

    .line 2149
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized DCMSelfCheck()V
    .locals 7

    .prologue
    monitor-enter p0

    .line 438
    :try_start_0
    const-string/jumbo v0, "Device_Default"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    .local v0, "dcm_default_alias":Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/efs/prov_data/dcm/dcm.dat"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .local v4, "src":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/data/misc/tz_dcm/dcm.dat"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 443
    const-string/jumbo v5, "DCM"

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->restartTLCService(Ljava/lang/String;)V

    .line 444
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "/data/misc/tz_dcm/dcm.dat"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    .local v2, "dest2":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 446
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "DCM certificate regeneration success!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "dest":Ljava/io/File;
    .end local v2    # "dest2":Ljava/io/File;
    .end local v4    # "src":Ljava/io/File;
    :goto_0
    monitor-exit p0

    .line 437
    return-void

    .line 448
    .restart local v1    # "dest":Ljava/io/File;
    .restart local v2    # "dest2":Ljava/io/File;
    .restart local v4    # "src":Ljava/io/File;
    :cond_0
    :try_start_2
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "DCM certificate regeneration failed!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 453
    .end local v1    # "dest":Ljava/io/File;
    .end local v2    # "dest2":Ljava/io/File;
    .end local v4    # "src":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 454
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "Could not get DCM certificate"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "dcm_default_alias":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 451
    .restart local v0    # "dcm_default_alias":Ljava/lang/String;
    .restart local v1    # "dest":Ljava/io/File;
    .restart local v4    # "src":Ljava/io/File;
    :cond_1
    :try_start_4
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "DCM certificate exists!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized FipsKeyStore3_del(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 707
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_del"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    if-nez p1, :cond_0

    .line 710
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_del, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 711
    return v2

    .line 714
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_1
    monitor-exit p0

    .line 718
    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_exist(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 661
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_exist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    if-nez p1, :cond_0

    .line 665
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_exist, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 666
    return v2

    .line 669
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_1
    monitor-exit p0

    .line 673
    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_get(Ljava/lang/String;[C)[B
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 677
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_get"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 680
    :cond_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_get, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 681
    return-object v2

    .line 684
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_2
    monitor-exit p0

    .line 688
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_getmtime(Ljava/lang/String;)J
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    monitor-enter p0

    .line 692
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_getmtime"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    if-nez p1, :cond_0

    .line 695
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_getmtime, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 696
    return-wide v2

    .line 699
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :cond_1
    monitor-exit p0

    .line 703
    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_init(Z)I
    .locals 2
    .param p1, "selfTestOnly"    # Z

    .prologue
    monitor-enter p0

    .line 637
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_init(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 643
    :cond_0
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_put(Ljava/lang/String;[BI[C)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "password"    # [C

    .prologue
    const/4 v2, -0x1

    monitor-enter p0

    .line 647
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_put"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 650
    :cond_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: FipsKeyStore3_put, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 651
    return v2

    .line 649
    :cond_1
    if-eqz p4, :cond_0

    .line 654
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_2
    monitor-exit p0

    .line 657
    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 722
    :try_start_0
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "TIMA3: FipsKeyStore3_saw"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    if-nez p1, :cond_0

    .line 725
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "TIMA3: FipsKeyStore3_saw, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 726
    return-object v3

    .line 729
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    .line 731
    .local v0, "tmp":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 732
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .end local v0    # "tmp":[Ljava/lang/Object;
    :cond_1
    monitor-exit p0

    .line 735
    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized KeyStore3_del(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 604
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_del"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    if-nez p1, :cond_0

    .line 607
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 608
    return v2

    .line 611
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_del(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_1
    monitor-exit p0

    .line 615
    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_exist(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 558
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_exist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    if-nez p1, :cond_0

    .line 562
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_exist, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 563
    return v2

    .line 566
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_exist(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_1
    monitor-exit p0

    .line 570
    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_get(Ljava/lang/String;[C)[B
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 574
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_get"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 577
    :cond_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_get, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 578
    return-object v2

    .line 581
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_get(Ljava/lang/String;[C)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_2
    monitor-exit p0

    .line 585
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_getmtime(Ljava/lang/String;)J
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    monitor-enter p0

    .line 589
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_getmtime"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-nez p1, :cond_0

    .line 592
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_getmtime, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 593
    return-wide v2

    .line 596
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_KeyStore3_getmtime(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :cond_1
    monitor-exit p0

    .line 600
    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_init()I
    .locals 2

    .prologue
    monitor-enter p0

    .line 534
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    invoke-static {}, Lcom/android/server/TimaService;->tima_KeyStore3_init()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 540
    :cond_0
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_put(Ljava/lang/String;[BI[C)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "password"    # [C

    .prologue
    const/4 v2, -0x1

    monitor-enter p0

    .line 544
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_put"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 547
    :cond_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA3: KeyStore3_put, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 548
    return v2

    .line 546
    :cond_1
    if-eqz p4, :cond_0

    .line 551
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_2
    monitor-exit p0

    .line 554
    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 619
    :try_start_0
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "TIMA3: KeyStore3_saw"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    if-nez p1, :cond_0

    .line 622
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 623
    return-object v3

    .line 626
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 627
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    .line 628
    .local v0, "tmp":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 629
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .end local v0    # "tmp":[Ljava/lang/Object;
    :cond_1
    monitor-exit p0

    .line 632
    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized attestation([BI)[B
    .locals 8
    .param p1, "nonce"    # [B
    .param p2, "callerUid"    # I

    .prologue
    monitor-enter p0

    .line 498
    :try_start_0
    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TIMA: attestation for callerUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eq v5, p2, :cond_0

    .line 500
    const-string/jumbo v5, "attestation"

    invoke-static {v5}, Lcom/android/server/TimaService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 504
    :goto_0
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "TimaService.attestation()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string/jumbo v5, "1"

    const-string/jumbo v6, "ro.config.tima"

    const-string/jumbo v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 506
    .local v4, "timaEnabled":Z
    if-eqz v4, :cond_1

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 510
    .local v2, "id":J
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/TimaService;->getCollectorBlob(I)[B

    move-result-object v0

    .line 511
    .local v0, "blob":[B
    invoke-direct {p0}, Lcom/android/server/TimaService;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 512
    .local v1, "imei":[B
    invoke-static {p1, v0, v1}, Lcom/android/server/TimaService;->timaAttestation([B[B[B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 514
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 512
    return-object v5

    .line 502
    .end local v0    # "blob":[B
    .end local v1    # "imei":[B
    .end local v2    # "id":J
    .end local v4    # "timaEnabled":Z
    :cond_0
    :try_start_3
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "OneSDK Attestation Call"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 513
    .restart local v2    # "id":J
    .restart local v4    # "timaEnabled":Z
    :catchall_1
    move-exception v5

    .line 514
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    throw v5

    .line 519
    .end local v2    # "id":J
    :cond_1
    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TIMA: attestation is not support "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 520
    const/4 v5, 0x0

    monitor-exit p0

    return-object v5
.end method

.method public declared-synchronized ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 7
    .param p1, "uid"    # I
    .param p2, "regPassword"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "isTrustedBootRequired"    # Z

    .prologue
    monitor-enter p0

    .line 1053
    :try_start_0
    const-string/jumbo v2, "TimaService"

    const-string/jumbo v3, "TIMA3: in ccmRegisterForDefaultCertificate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ro.config.tima"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1055
    .local v1, "timaEnabled":Z
    if-eqz v1, :cond_2

    .line 1057
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1059
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1060
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 1062
    :cond_0
    iget-object v2, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1063
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v5, "tima"

    .line 1064
    const-string/jumbo v6, "ccmRegisterForDefaultCertificate"

    .line 1062
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1065
    new-instance v0, Ljava/lang/SecurityException;

    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1067
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1066
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1067
    const-string/jumbo v3, "] with uid["

    .line 1066
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1068
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1066
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1069
    const-string/jumbo v3, "] trying to access methodName ["

    .line 1066
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1070
    const-string/jumbo v3, "ccmRegisterForDefaultCertificate"

    .line 1066
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1070
    const-string/jumbo v3, "] in ["

    .line 1066
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1071
    const-string/jumbo v3, "tima"

    .line 1066
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1071
    const-string/jumbo v3, "] service"

    .line 1066
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1065
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "timaEnabled":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1075
    .restart local v1    # "timaEnabled":Z
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 1077
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1076
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/android/server/TimaService;->ccm_register_for_default_cert(II)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    long-to-int v2, v2

    monitor-exit p0

    return v2

    .line 1080
    :cond_2
    const/4 v2, -0x1

    monitor-exit p0

    return v2
.end method

.method public declared-synchronized checkEvent(II)Ljava/lang/String;
    .locals 2
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    .prologue
    monitor-enter p0

    .line 358
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA: checkEvent, operation is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkHistory(II)Ljava/lang/String;
    .locals 2
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    .prologue
    monitor-enter p0

    .line 373
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA: checkHistory, operation is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public displayEvent(Ljava/lang/String;)V
    .locals 22
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 745
    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "TIMA MEASUREMENT Result: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    if-nez p1, :cond_0

    return-void

    .line 749
    :cond_0
    sget-object v19, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v19

    sget v20, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 750
    sget-object v19, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 754
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/service/tima/ITimaISLCallback;->onTimaViolation(Ljava/lang/String;)V

    .line 756
    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "Reporting violation to ISL"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :cond_2
    :goto_0
    const-string/jumbo v18, " "

    .line 765
    .local v18, "time":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 769
    :goto_1
    sget-object v19, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 772
    const-string/jumbo v19, "TIMA_STATUS="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 773
    .local v15, "statusIdx":I
    const/16 v19, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 774
    .local v13, "sepIdx":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_3

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_4

    .line 775
    :cond_3
    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "TIMA MEASUREMENT invalid status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-void

    .line 758
    .end local v13    # "sepIdx":I
    .end local v15    # "statusIdx":I
    .end local v18    # "time":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 759
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "Exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 766
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v18    # "time":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 767
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "toLocalString() exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 780
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "sepIdx":I
    .restart local v15    # "statusIdx":I
    :cond_4
    const-string/jumbo v19, "0"

    const-string/jumbo v20, "TIMA_STATUS="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 781
    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "TIMA MEASUREMENT success status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return-void

    .line 783
    :cond_5
    const-string/jumbo v19, "1"

    const-string/jumbo v20, "TIMA_STATUS="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 784
    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "TIMA Internal Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void

    .line 789
    :cond_6
    const-string/jumbo v19, "MSG="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 790
    .local v12, "msgIdx":I
    const/16 v19, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 791
    const-string/jumbo v11, ""

    .line 792
    .local v11, "msg":Ljava/lang/String;
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_7

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_8

    .line 793
    :cond_7
    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "TIMA MEASUREMENT invalid result: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void

    .line 797
    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v19, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    .local v2, "TimaEventIntent":Landroid/content/Intent;
    const-string/jumbo v19, "MSG="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v12

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 802
    const-string/jumbo v19, "lkm_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 803
    const-string/jumbo v19, "TIMA_STATUS="

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 815
    :goto_2
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v19, "yyyyMMddHHmmss"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 816
    .local v5, "dateFormat":Ljava/text/DateFormat;
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 819
    .local v4, "date":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    const-string/jumbo v20, "mkdir -p /data/misc/tima"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 825
    :goto_3
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    const-string/jumbo v20, "chmod 701 /data/misc/tima"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 831
    :goto_4
    :try_start_4
    new-instance v6, Ljava/io/File;

    const-string/jumbo v19, "/data/misc/tima"

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 832
    .local v6, "delAllTimaLogFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 833
    .local v10, "files":[Ljava/io/File;
    if-eqz v10, :cond_d

    .line 834
    const/16 v19, 0x0

    array-length v0, v10

    move/from16 v20, v0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    aget-object v17, v10, v19

    .line 835
    .local v17, "timafile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 834
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 804
    .end local v4    # "date":Ljava/lang/String;
    .end local v5    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "delAllTimaLogFile":Ljava/io/File;
    .end local v10    # "files":[Ljava/io/File;
    .end local v17    # "timafile":Ljava/io/File;
    :cond_9
    const-string/jumbo v19, "seandroid_off"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 805
    const-string/jumbo v19, "TIMA_STATUS="

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 806
    :cond_a
    const-string/jumbo v19, "kern_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 807
    const-string/jumbo v19, "TIMA_STATUS="

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 808
    :cond_b
    const-string/jumbo v19, "kern_metadata_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 809
    const-string/jumbo v19, "TIMA_STATUS="

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 811
    :cond_c
    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "TIMA: Unknown message from TIMA APPs. Not notifying the user"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void

    .line 820
    .restart local v4    # "date":Ljava/lang/String;
    .restart local v5    # "dateFormat":Ljava/text/DateFormat;
    :catch_2
    move-exception v8

    .line 821
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "Failed to create /data/misc/tima"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 826
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 827
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "Failed to change permissions of /data/misc/tima"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 838
    .end local v8    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 839
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 842
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "/data/misc/tima/tima.log."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 845
    .local v16, "tima_log_file":Ljava/lang/String;
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "/system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 851
    :goto_6
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "chmod 640 "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 856
    :goto_7
    sget-boolean v19, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v19, :cond_e

    .line 857
    const-string/jumbo v19, "TimaService"

    const-string/jumbo v20, "displayEvent(): iBootCompleted==false"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return-void

    .line 846
    :catch_5
    move-exception v8

    .line 847
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Failed to execute: /system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 852
    .end local v8    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 853
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Failed to change permissions of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 860
    .end local v8    # "e":Ljava/io/IOException;
    :cond_e
    const-string/jumbo v19, "com.samsung.android.securitylogagent"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    const-string/jumbo v19, "TIMA_LOG_FILE"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 864
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v19

    .line 865
    const-string/jumbo v20, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v21, "com.samsung.android.sm"

    .line 864
    invoke-virtual/range {v19 .. v21}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 866
    .local v14, "smartmanagerPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14}, Lcom/android/server/TimaService;->isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 867
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v19, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    .local v3, "TimaSmartManagerIntent":Landroid/content/Intent;
    invoke-virtual {v3, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 744
    :goto_8
    return-void

    .line 871
    .end local v3    # "TimaSmartManagerIntent":Landroid/content/Intent;
    :cond_f
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v19, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    .restart local v3    # "TimaSmartManagerIntent":Landroid/content/Intent;
    const-string/jumbo v19, "com.android.settings"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public declared-synchronized dumpLog()[B
    .locals 2

    .prologue
    monitor-enter p0

    .line 1131
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA: timaDumpLog is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceID()[B
    .locals 4

    .prologue
    monitor-enter p0

    .line 525
    :try_start_0
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "TIMA: getDeviceID"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.config.tima"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 527
    .local v0, "timaEnabled":Z
    if-eqz v0, :cond_0

    .line 528
    invoke-static {}, Lcom/android/server/TimaService;->timaGetDeviceID()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 530
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .end local v0    # "timaEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEventList(I)Ljava/util/List;
    .locals 1
    .param p1, "subject"    # I
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
    .line 741
    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized getTimaVersion()Ljava/lang/String;
    .locals 3

    .prologue
    monitor-enter p0

    .line 928
    :try_start_0
    const-string/jumbo v0, "0"

    .line 929
    .local v0, "TimaVer":Ljava/lang/String;
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "TIMA: in getTimaVersion"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-direct {p0}, Lcom/android/server/TimaService;->getTimaStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 933
    invoke-direct {p0}, Lcom/android/server/TimaService;->getTimaStatus()Ljava/lang/String;

    move-result-object v0

    .line 936
    :cond_0
    const-string/jumbo v1, "F0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 938
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "Fake Tima enabled, -T option is disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string/jumbo v0, "3.0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 946
    return-object v0

    .line 941
    :cond_2
    :try_start_1
    const-string/jumbo v1, "F3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 943
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v2, "Fake Tima enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string/jumbo v0, "3.0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "TimaVer":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTuiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1475
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleLicenseStatus(IZ)V
    .locals 10
    .param p1, "notiTrigger"    # I
    .param p2, "licenseStatus"    # Z

    .prologue
    .line 1754
    const-string/jumbo v5, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleLicenseStatus - notiTrigger: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", licenseStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1758
    .local v6, "token":J
    const/4 v2, 0x0

    .line 1759
    .local v2, "kapState":Z
    packed-switch p1, :pswitch_data_0

    .line 1816
    .end local v2    # "kapState":Z
    :cond_0
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1752
    .end local v6    # "token":J
    :goto_1
    return-void

    .line 1761
    .restart local v2    # "kapState":Z
    .restart local v6    # "token":J
    :pswitch_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1762
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1763
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1765
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1766
    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/android/server/TimaService;->setKapMode(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1817
    .end local v2    # "kapState":Z
    .end local v6    # "token":J
    :catch_0
    move-exception v1

    .line 1819
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TimaService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleLicenseStatus exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1770
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "kapState":Z
    .restart local v6    # "token":J
    :pswitch_1
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1771
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1772
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    .line 1773
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1775
    invoke-direct {p0}, Lcom/android/server/TimaService;->getKapState()Z

    move-result v2

    .line 1776
    .local v2, "kapState":Z
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    goto :goto_0

    .line 1780
    .local v2, "kapState":Z
    :pswitch_2
    const-string/jumbo v5, "ro.build.date"

    const-string/jumbo v8, "NONE"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1781
    .local v0, "currentBuild":Ljava/lang/String;
    const-string/jumbo v5, "persist.sys.kap.date"

    const-string/jumbo v8, "NONE"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1783
    .local v4, "oldBuild":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1784
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1785
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1788
    iget-boolean v5, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v5, :cond_3

    .line 1790
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1791
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1792
    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 1794
    :cond_1
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    .line 1812
    .end local v2    # "kapState":Z
    :cond_2
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1813
    const-string/jumbo v5, "persist.sys.kap.date"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1796
    .restart local v2    # "kapState":Z
    :cond_3
    const-string/jumbo v5, "security.knox_kap_mode"

    const-string/jumbo v8, "NONE"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1797
    .local v3, "kapStatus":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1798
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    goto :goto_2

    .line 1802
    .end local v3    # "kapStatus":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1803
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1804
    iget-boolean v5, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v5, :cond_5

    .line 1805
    invoke-direct {p0}, Lcom/android/server/TimaService;->getKapState()Z

    move-result v2

    .line 1806
    .local v2, "kapState":Z
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1807
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 1810
    .end local v2    # "kapState":Z
    :cond_5
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isKapEnforced()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1828
    const-string/jumbo v0, "TimaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKapEnforced - mIsLicenseActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1829
    iget-boolean v2, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1828
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1829
    const-string/jumbo v2, ", iBootCompleted: "

    .line 1828
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1829
    sget-boolean v2, Lcom/android/server/TimaService;->iBootCompleted:Z

    .line 1828
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1830
    const-string/jumbo v2, ", mIsBuildUpdate: "

    .line 1828
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1830
    iget-boolean v2, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    .line 1828
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    iget-boolean v0, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    if-eqz v0, :cond_0

    .line 1833
    return v3

    .line 1834
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-eqz v0, :cond_2

    .line 1838
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1835
    :cond_2
    return v3
.end method

.method public declared-synchronized keystoreInit()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 388
    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized keystoreInstallKey(I[B)I
    .locals 1
    .param p1, "ID"    # I
    .param p2, "key"    # [B

    .prologue
    monitor-enter p0

    .line 419
    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized keystoreRetrieveKey(I)[B
    .locals 1
    .param p1, "ID"    # I

    .prologue
    monitor-enter p0

    .line 468
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized keystoreShutdown()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 481
    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized launchTui(Ljava/lang/String;[BZI)[B
    .locals 1
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "nonce"    # [B
    .param p3, "verify"    # Z
    .param p4, "min_pin_length"    # I

    .prologue
    monitor-enter p0

    .line 1167
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized launchTuiWithSecretId(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    .locals 1
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "secret_id"    # Ljava/lang/String;
    .param p3, "nonce"    # [B
    .param p4, "verify"    # Z
    .param p5, "min_pin_length"    # I

    .prologue
    monitor-enter p0

    .line 1182
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized loadTlcServer(Ljava/lang/String;)I
    .locals 9
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    monitor-enter p0

    .line 1084
    const/4 v0, 0x0

    .line 1085
    .local v0, "START_IN_HERE":Z
    :try_start_0
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "TIMA3: in loadTlcServer"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const-string/jumbo v5, "1"

    const-string/jumbo v6, "ro.config.tima"

    const-string/jumbo v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1087
    .local v2, "timaEnabled":Z
    if-eqz v2, :cond_2

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1091
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1092
    .local v3, "tlcBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1093
    const-string/jumbo v5, "TimaService"

    const-string/jumbo v6, "TIMA3: tlc_server already loaded"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1094
    return v8

    .line 1098
    :cond_0
    if-eqz v0, :cond_1

    .line 1101
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/system/bin/tlc_server "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 1102
    .local v4, "tlcProcess":Ljava/lang/Process;
    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Start tlc_server for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "tlcProcess":Ljava/lang/Process;
    :goto_0
    monitor-exit p0

    .line 1110
    return v8

    .line 1103
    :catch_0
    move-exception v1

    .line 1104
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "timaEnabled":Z
    .end local v3    # "tlcBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1107
    .restart local v2    # "timaEnabled":Z
    .restart local v3    # "tlcBinder":Landroid/os/IBinder;
    :cond_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persist.security.tlc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const-string/jumbo v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Start tlc_server for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " done : setprop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1113
    .end local v3    # "tlcBinder":Landroid/os/IBinder;
    :cond_2
    const/4 v5, -0x1

    monitor-exit p0

    return v5
.end method

.method public declared-synchronized loadTui()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 1142
    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized setISLCallback(Landroid/service/tima/ITimaISLCallback;)V
    .locals 2
    .param p1, "timaISLClbk"    # Landroid/service/tima/ITimaISLCallback;

    .prologue
    monitor-enter p0

    .line 915
    :try_start_0
    const-string/jumbo v0, "TimaService"

    const-string/jumbo v1, "TIMA: setISLCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iput-object p1, p0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 919
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setKapMode(ZZ)V
    .locals 6
    .param p1, "isEnabled"    # Z
    .param p2, "notifyKapState"    # Z

    .prologue
    .line 1842
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1845
    :try_start_0
    const-string/jumbo v1, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKapMode - isEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", notifyKapState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1850
    .local v2, "token":J
    if-eqz p1, :cond_2

    .line 1851
    const-string/jumbo v1, "security.knox_kap_mode"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    :goto_0
    if-nez p2, :cond_0

    .line 1864
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "NONE"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    :cond_0
    if-eqz p2, :cond_1

    .line 1869
    invoke-direct {p0, p1, p2}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1872
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1841
    .end local v2    # "token":J
    :goto_1
    return-void

    .line 1854
    .restart local v2    # "token":J
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1855
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    :goto_2
    const-string/jumbo v1, "security.knox_kap_mode"

    const-string/jumbo v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1873
    .end local v2    # "token":J
    :catch_0
    move-exception v0

    .line 1875
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKapMode exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1858
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "token":J
    :cond_3
    :try_start_1
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "NONE"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1878
    .end local v2    # "token":J
    :cond_4
    const-string/jumbo v1, "TimaService"

    const-string/jumbo v4, "No Permission : setKapMode"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized tuiDecryptPinHash(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "buffer"    # [B

    .prologue
    monitor-enter p0

    .line 1579
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized tuiGetCerts()[B
    .locals 1

    .prologue
    monitor-enter p0

    .line 1539
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized tuiGetSecretDimension()[I
    .locals 1

    .prologue
    monitor-enter p0

    .line 1563
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized tuiInitSecret([BIILjava/lang/String;)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "secret_id"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1210
    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized tuiInitSecretFile(Ljava/lang/String;IILjava/lang/String;)I
    .locals 1
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "secret_id"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1247
    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized tuiInitSecretMemoryFile(Landroid/os/ParcelFileDescriptor;IIILjava/lang/String;)I
    .locals 1
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "secret_id"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1291
    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized tuiRegAppImage(Ljava/lang/String;[B)[I
    .locals 1
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "png_buffer"    # [B

    .prologue
    monitor-enter p0

    .line 1489
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized tuiRegAppImageFile(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "png_file"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1528
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized unloadTui()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 1152
    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized verifyCertChain([B)[B
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    monitor-enter p0

    .line 1419
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method
