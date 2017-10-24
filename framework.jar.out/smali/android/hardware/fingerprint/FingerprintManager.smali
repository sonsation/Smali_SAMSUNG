.class public Landroid/hardware/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintManager$1;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;,
        Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$MyHandler;,
        Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$RequestCallback;
    }
.end annotation


# static fields
.field public static final CLIENTSPEC_KEY_ALLOW_INDEXES:Ljava/lang/String; = "request_template_index_list"

.field public static final CLIENTSPEC_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final CLIENT_KEY_PRIVILEGED_ATTR:Ljava/lang/String; = "privileged_attr"

.field private static final DEBUG:Z

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_COMPLETED:I = 0x2713

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_FAILED:I = 0x2716

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_FINGER_LEAVE:I = 0x2714

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_FINGER_LEAVE_TIMEOUT:I = 0x2717

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_READY:I = 0x2711

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_STARTED:I = 0x2712

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_SUCCESS:I = 0x2715

.field public static final FINGERPRINT_ACQUIRED_DUPLICATED_SCANNED_IMAGE:I = 0x3ea

.field public static final FINGERPRINT_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_END:I = 0x2719

.field public static final FINGERPRINT_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_START:I = 0x2718

.field public static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FINGERPRINT_ACQUIRED_NAVIGATION_DTAP:I = 0x4e23

.field public static final FINGERPRINT_ACQUIRED_NAVIGATION_EVENT_BASE:I = 0x4e20

.field public static final FINGERPRINT_ACQUIRED_NAVIGATION_LPRESS:I = 0x4e24

.field public static final FINGERPRINT_ACQUIRED_NAVIGATION_SWIPE_DOWN:I = 0x4e22

.field public static final FINGERPRINT_ACQUIRED_NAVIGATION_SWIPE_UP:I = 0x4e21

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final FINGERPRINT_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final FINGERPRINT_ACQUIRED_VENDOR_EVENT_BASE:I = 0x2710

.field public static final FINGERPRINT_ACQUIRED_WET_FINGER:I = 0x3e9

.field public static final FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final FINGERPRINT_ERROR_DEVICE_NEED_RECAL:I = 0x3e9

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FINGERPRINT_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final FINGERPRINT_ERROR_IDENTIFY_FAILURE_SENSOR_CHANGED:I = 0x3ed

.field public static final FINGERPRINT_ERROR_IDENTIFY_FAILURE_SERVICE_FAILURE:I = 0x3eb

.field public static final FINGERPRINT_ERROR_IDENTIFY_FAILURE_SYSTEM_FAILURE:I = 0x3ea

.field public static final FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final FINGERPRINT_ERROR_NEED_TO_RETRY:I = 0x1388

.field public static final FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FINGERPRINT_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final FINGERPRINT_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final FINGERPRINT_REQUEST_ENROLL_SESSION:I = 0x3ea

.field public static final FINGERPRINT_REQUEST_ENUMERATE:I = 0xb

.field public static final FINGERPRINT_REQUEST_GET_FP_IDS:I = 0x3eb

.field public static final FINGERPRINT_REQUEST_GET_MAX_TEMPLATE_NUMBER:I = 0x3ec

.field public static final FINGERPRINT_REQUEST_GET_SENSOR_INFO:I = 0x5

.field public static final FINGERPRINT_REQUEST_GET_SENSOR_STATUS:I = 0x6

.field public static final FINGERPRINT_REQUEST_GET_UNIQUE_ID:I = 0x7

.field public static final FINGERPRINT_REQUEST_GET_USERIDS:I = 0xc

.field public static final FINGERPRINT_REQUEST_GET_VERSION:I = 0x4

.field public static final FINGERPRINT_REQUEST_HAS_FEATURE:I = 0x3ee

.field public static final FINGERPRINT_REQUEST_LOCKOUT:I = 0x3e9

.field public static final FINGERPRINT_REQUEST_NAVIGATION_LCD_ONOFF:I = 0x11

.field public static final FINGERPRINT_REQUEST_NAVIGATION_MODE_END:I = 0x10

.field public static final FINGERPRINT_REQUEST_NAVIGATION_MODE_START:I = 0xf

.field public static final FINGERPRINT_REQUEST_PAUSE:I = 0x0

.field public static final FINGERPRINT_REQUEST_PROCESS_FIDO:I = 0x9

.field public static final FINGERPRINT_REQUEST_REMOVE_FINGER:I = 0x3e8

.field public static final FINGERPRINT_REQUEST_RESUME:I = 0x1

.field public static final FINGERPRINT_REQUEST_SENSOR_TEST_NORMALSCAN:I = 0x3

.field public static final FINGERPRINT_REQUEST_SESSION_OPEN:I = 0x2

.field public static final FINGERPRINT_REQUEST_SET_ACTIVE_GROUP:I = 0x8

.field public static final FINGERPRINT_REQUEST_START_FPMS:I = 0x3ed

.field public static final FINGERPRINT_REQUEST_UPDATE_SID:I = 0xa

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field public static final PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY:I = 0x4

.field public static final PRIVILEGED_ATTR_EXTRA_EVENT:I = 0x10

.field public static final PRIVILEGED_ATTR_FINGER_DETECTION:I = 0x8

.field public static final PRIVILEGED_ATTR_NO_LOCKOUT:I = 0x2

.field public static final PRIVILEGED_ATTR_NO_VIBRATION:I = 0x1

.field public static final PRIVILEGED_TYPE_KEYGUARD:I = -0x80000000

.field public static final PRIVILEGED_TYPE_TEST:I = 0x8000000

.field public static final SEM_FEATURE_NAVIGATION:I = 0x1

.field public static final SENSOR_STATUS_ERROR:I = 0x186ca

.field public static final SENSOR_STATUS_OK:I = 0x186c8

.field public static final SENSOR_STATUS_WORKING:I = 0x186c9

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mRequestCallback:Landroid/hardware/fingerprint/FingerprintManager$RequestCallback;

.field private mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static synthetic -get6(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RequestCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRequestCallback:Landroid/hardware/fingerprint/FingerprintManager$RequestCallback;

    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-object p1
.end method

.method static synthetic -set1(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "acquireInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "errMsg"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 0
    .param p1, "cryptoObject"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->cancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->cancelEnrollment()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/hardware/fingerprint/FingerprintManager;->DEBUG:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/fingerprint/IFingerprintService;

    .prologue
    const/4 v2, 0x0

    .line 1240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    .line 1376
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1241
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1242
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 1243
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 1244
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "FingerprintManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    invoke-direct {v0, p0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 1240
    return-void
.end method

.method private static bytesToString([BI)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [B
    .param p1, "len"    # I

    .prologue
    const/4 v5, 0x0

    .line 1006
    array-length v2, p0

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1007
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 1009
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1010
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 1011
    const-string/jumbo v2, "%c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private cancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 4
    .param p1, "cryptoObject"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .prologue
    .line 1268
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 1269
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :cond_0
    return-void

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private cancelEnrollment()V
    .locals 3

    .prologue
    .line 1258
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 1260
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :cond_0
    return-void

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 9
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v8, 0x0

    .line 1310
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1311
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 1314
    .local v2, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v5, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1320
    .end local v2    # "mRes":Landroid/content/res/Resources;
    :goto_0
    if-nez v2, :cond_0

    .line 1321
    const-string/jumbo v5, "FingerprintManager"

    const-string/jumbo v6, "mRes is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1364
    :cond_1
    const/16 v5, 0x3e8

    if-lt p1, v5, :cond_6

    .line 1365
    add-int/lit16 v4, p1, -0x3e8

    .line 1366
    .local v4, "msgNumber":I
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1367
    const v6, 0x1070099

    .line 1366
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1368
    .local v3, "msgArray":[Ljava/lang/String;
    array-length v5, v3

    if-ge v4, v5, :cond_6

    .line 1369
    aget-object v5, v3, v4

    return-object v5

    .line 1315
    .end local v3    # "msgArray":[Ljava/lang/String;
    .end local v4    # "msgNumber":I
    .restart local v2    # "mRes":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "FingerprintManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getImageQualityFeedbackString, Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v2, 0x0

    goto :goto_0

    .line 1326
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mRes":Landroid/content/res/Resources;
    :sswitch_0
    return-object v8

    .line 1328
    :sswitch_1
    if-nez v2, :cond_2

    .line 1329
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1330
    const v6, 0x10401ef

    .line 1329
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1333
    :cond_2
    const-string/jumbo v5, "touch_image_quality_finger_offset_too_far_left"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1332
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1335
    :sswitch_2
    if-nez v2, :cond_3

    .line 1336
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1337
    const v6, 0x10401f0

    .line 1336
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1340
    :cond_3
    const-string/jumbo v5, "touch_image_quality_finger_offset_too_far_left"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1339
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1342
    :sswitch_3
    if-nez v2, :cond_4

    .line 1343
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1344
    const v6, 0x10401f1

    .line 1343
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1347
    :cond_4
    const-string/jumbo v5, "spass_something_on_sensor"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1346
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1349
    :sswitch_4
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1350
    const v6, 0x10401f3

    .line 1349
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1352
    :sswitch_5
    if-nez v2, :cond_5

    .line 1353
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1354
    const v6, 0x10401f2

    .line 1353
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1357
    :cond_5
    const-string/jumbo v5, "spass_status_too_fast"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1356
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1359
    :sswitch_6
    if-eqz v2, :cond_1

    .line 1361
    const-string/jumbo v5, "spass_image_quality_wet_finger"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1360
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1372
    :cond_6
    return-object v8

    .line 1324
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x3e9 -> :sswitch_6
    .end sparse-switch
.end method

.method private getCurrentUserId()I
    .locals 2

    .prologue
    .line 1251
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 2
    .param p1, "errMsg"    # I

    .prologue
    const v1, 0x10401f9

    .line 1276
    packed-switch p1, :pswitch_data_0

    .line 1303
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1278
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1281
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1282
    const v1, 0x10401f4

    .line 1281
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1284
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1285
    const v1, 0x10401f5

    .line 1284
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1287
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x10401f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1289
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x10401f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1291
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x10401f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 595
    if-eqz p1, :cond_1

    .line 596
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 598
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .prologue
    .line 1077
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    .line 1079
    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1080
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 1081
    new-instance v3, Landroid/hardware/fingerprint/FingerprintManager$2;

    invoke-direct {v3, p0, v1, p1}, Landroid/hardware/fingerprint/FingerprintManager$2;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    .line 1080
    invoke-interface {v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->addLockoutResetCallback(Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1104
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v2, "FingerprintManager"

    const-string/jumbo v3, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 587
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 586
    return-void
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .locals 8
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I

    .prologue
    .line 609
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 608
    return-void
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;

    .prologue
    .line 618
    if-nez p4, :cond_0

    .line 619
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    if-eqz p2, :cond_2

    .line 623
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void

    .line 627
    :cond_1
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;

    invoke-direct {v0, p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 631
    :cond_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_3

    .line 632
    :try_start_0
    invoke-direct {p0, p5}, Landroid/hardware/fingerprint/FingerprintManager;->useHandler(Landroid/os/Handler;)V

    .line 633
    iput-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 634
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 635
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getOpId()J

    move-result-wide v2

    .line 636
    .local v2, "sessionId":J
    :goto_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 637
    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    move/from16 v4, p6

    move v6, p3

    move-object/from16 v8, p7

    .line 636
    invoke-interface/range {v0 .. v8}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .end local v2    # "sessionId":J
    :cond_3
    :goto_1
    return-void

    .line 635
    :cond_4
    const-wide/16 v2, 0x0

    .restart local v2    # "sessionId":J
    goto :goto_0

    .line 638
    .end local v2    # "sessionId":J
    :catch_0
    move-exception v9

    .line 639
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception while authenticating: "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    if-eqz p4, :cond_3

    .line 644
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    const/4 v1, 0x1

    invoke-virtual {p4, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V
    .locals 7
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .prologue
    .line 668
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;Landroid/os/Bundle;)V

    .line 667
    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;

    .prologue
    .line 675
    const/4 v0, -0x2

    if-ne p4, v0, :cond_0

    .line 676
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result p4

    .line 678
    :cond_0
    if-nez p5, :cond_1

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_1
    if-eqz p2, :cond_3

    .line 683
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "enrollment already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void

    .line 687
    :cond_2
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 691
    :cond_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_4

    .line 692
    :try_start_0
    iput-object p5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 693
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move v3, p4

    move v5, p3

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :cond_4
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v8

    .line 695
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception in enroll: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    if-eqz p5, :cond_4

    .line 700
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 699
    const/4 v1, 0x1

    invoke-virtual {p5, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getAuthenticatorId()J
    .locals 4

    .prologue
    .line 1042
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 1044
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1049
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, "FingerprintManager"

    const-string/jumbo v2, "getAuthenticatorId(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getEnrolledFingerprints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 821
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 805
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 806
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 810
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public hasEnrolledFingerprints()Z
    .locals 4

    .prologue
    .line 831
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 832
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 833
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 832
    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 837
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 847
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 848
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 852
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isEnrollSession()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 909
    const/16 v1, 0x3ea

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v6

    .line 910
    .local v6, "ret":I
    if-lez v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isHardwareDetected()Z
    .locals 5

    .prologue
    .line 862
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v3, :cond_0

    .line 864
    const-wide/16 v0, 0x0

    .line 865
    .local v0, "deviceId":J
    :try_start_0
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v1, v4}, Landroid/hardware/fingerprint/IFingerprintService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 866
    :catch_0
    move-exception v2

    .line 867
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 870
    .end local v0    # "deviceId":J
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v3, "FingerprintManager"

    const-string/jumbo v4, "isFingerprintHardwareDetected(): Service not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v3, 0x0

    return v3
.end method

.method public postEnroll()I
    .locals 4

    .prologue
    .line 727
    const/4 v1, 0x0

    .line 728
    .local v1, "result":I
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    .line 729
    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->postEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 733
    :cond_0
    return v1

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public preEnroll()J
    .locals 5

    .prologue
    .line 712
    const-wide/16 v2, 0x0

    .line 713
    .local v2, "result":J
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 714
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Landroid/hardware/fingerprint/IFingerprintService;->preEnroll(Landroid/os/IBinder;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 718
    :cond_0
    return-wide v2

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .locals 8
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .prologue
    const/4 v7, 0x1

    .line 762
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 763
    :try_start_0
    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 764
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 765
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v3

    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v6

    .line 767
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception in remove: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    if-eqz p3, :cond_0

    .line 770
    invoke-direct {p0, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-virtual {p3, p1, v7, v0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3
    .param p1, "fpId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 786
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 788
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 793
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, "FingerprintManager"

    const-string/jumbo v2, "rename(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I
    .locals 9
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .param p5, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$RequestCallback;

    .prologue
    .line 877
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_2

    .line 879
    if-nez p2, :cond_0

    .line 880
    const/4 v0, 0x0

    :try_start_0
    new-array p2, v0, [B

    .line 882
    :cond_0
    if-nez p3, :cond_1

    .line 883
    const/4 v0, 0x0

    new-array p3, v0, [B

    .line 885
    :cond_1
    iput-object p5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRequestCallback:Landroid/hardware/fingerprint/FingerprintManager$RequestCallback;

    .line 886
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iget-object v7, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->request(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 887
    :catch_0
    move-exception v8

    .line 888
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception in request(): "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 893
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x2

    return v0

    .line 891
    :cond_2
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "request(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestEnumerate()[I
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 993
    const/16 v0, 0xa

    new-array v3, v0, [B

    .line 994
    .local v3, "outBuf":[B
    const/16 v1, 0xb

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v8

    .line 995
    .local v8, "size":I
    if-gtz v8, :cond_0

    .line 996
    return-object v2

    .line 998
    :cond_0
    new-array v7, v8, [I

    .line 999
    .local v7, "result":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 1000
    aget-byte v0, v3, v6

    aput v0, v7, v6

    .line 999
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1002
    :cond_1
    return-object v7
.end method

.method public requestGetSensorInfo()[B
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 949
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 950
    .local v3, "outBuf":[B
    const/4 v1, 0x5

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v6

    .line 951
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 952
    return-object v2

    .line 954
    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public requestGetSensorStatus()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 960
    const/4 v1, 0x6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    return v0
.end method

.method public requestGetUniqueID(ILjava/lang/String;)[B
    .locals 7
    .param p1, "fingerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 965
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 966
    .local v3, "outBuf":[B
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v1, 0x7

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v6

    .line 967
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 968
    return-object v5

    .line 970
    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public requestGetUserIDs()[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1018
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1019
    .local v3, "outBuf":[B
    const/16 v1, 0xc

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v10

    .line 1020
    .local v10, "size":I
    if-gtz v10, :cond_0

    .line 1021
    return-object v2

    .line 1023
    :cond_0
    invoke-static {v3, v10}, Landroid/hardware/fingerprint/FingerprintManager;->bytesToString([BI)Ljava/lang/String;

    move-result-object v11

    .line 1025
    .local v11, "src":Ljava/lang/String;
    new-instance v12, Ljava/util/StringTokenizer;

    const-string/jumbo v0, ":"

    invoke-direct {v12, v11, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    .local v12, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 1027
    .local v6, "count":I
    new-array v9, v6, [Ljava/lang/String;

    .line 1028
    .local v9, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1029
    .local v7, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_0

    .line 1032
    :cond_1
    return-object v9
.end method

.method public requestGetVersion()[B
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 939
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 940
    .local v3, "outBuf":[B
    const/4 v1, 0x4

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v6

    .line 941
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 942
    return-object v2

    .line 944
    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public requestPause()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, v2

    move v4, v1

    move-object v5, v2

    .line 915
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 916
    return v1

    .line 918
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestProcessFIDO([B)[B
    .locals 7
    .param p1, "inBuf"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 975
    const/16 v0, 0x2800

    new-array v3, v0, [B

    .line 976
    .local v3, "outBuf":[B
    const/16 v1, 0x9

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v6

    .line 977
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 978
    return-object v5

    .line 980
    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public requestResume()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    .line 923
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 924
    return v4

    .line 926
    :cond_0
    return v1
.end method

.method public requestSessionOpen()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 931
    const/4 v1, 0x2

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 932
    return v4

    .line 934
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestUpdateSID([B)Z
    .locals 6
    .param p1, "sId"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 985
    const/16 v1, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 986
    return v4

    .line 988
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 1062
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 1064
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1069
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, "FingerprintManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public semHasFeature(I)Z
    .locals 8
    .param p1, "feature"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 903
    const/16 v1, 0x3ee

    move-object v0, p0

    move-object v3, v2

    move v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v6

    .line 904
    .local v6, "ret":I
    if-lez v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public setActiveUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 744
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 745
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintService;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :cond_0
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
