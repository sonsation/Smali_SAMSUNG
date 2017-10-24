.class public Lcom/samsung/android/camera/iris/SemIrisManager;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/SemIrisManager$1;,
        Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;,
        Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;,
        Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;,
        Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;,
        Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;,
        Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;,
        Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;
    }
.end annotation


# static fields
.field public static final CLIENTSPEC_KEY_ALLOW_INDEXES:Ljava/lang/String; = "request_template_index_list"

.field public static final CLIENT_KEY_PRIVILEGED_ATTR:Ljava/lang/String; = "privileged_attr"

.field public static final IRIS_ACQUIRED_CAPTURE_COMPLETED:I = 0x2713

.field public static final IRIS_ACQUIRED_CAPTURE_FAILED:I = 0x2716

.field public static final IRIS_ACQUIRED_CAPTURE_IRIS_LEAVE:I = 0x2714

.field public static final IRIS_ACQUIRED_CAPTURE_IRIS_LEAVE_TIMEOUT:I = 0x2717

.field public static final IRIS_ACQUIRED_CAPTURE_READY:I = 0x2711

.field public static final IRIS_ACQUIRED_CAPTURE_STARTED:I = 0x2712

.field public static final IRIS_ACQUIRED_CAPTURE_SUCCESS:I = 0x2715

.field public static final IRIS_ACQUIRED_CHANGE_YOUR_POSITION:I = 0xc

.field public static final IRIS_ACQUIRED_DUPLICATED_SCANNED_IMAGE:I = 0x3ea

.field public static final IRIS_ACQUIRED_EYE_NOT_PRESENT:I = 0xa

.field public static final IRIS_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_END:I = 0x2719

.field public static final IRIS_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_START:I = 0x2718

.field public static final IRIS_ACQUIRED_GOOD:I = 0x0

.field public static final IRIS_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final IRIS_ACQUIRED_MOVE_CLOSER:I = 0x3

.field public static final IRIS_ACQUIRED_MOVE_DOWN:I = 0x8

.field public static final IRIS_ACQUIRED_MOVE_FARTHER:I = 0x4

.field public static final IRIS_ACQUIRED_MOVE_LEFT:I = 0x5

.field public static final IRIS_ACQUIRED_MOVE_RIGHT:I = 0x6

.field public static final IRIS_ACQUIRED_MOVE_SOMEWHERE_DARKER:I = 0xb

.field public static final IRIS_ACQUIRED_MOVE_UP:I = 0x7

.field public static final IRIS_ACQUIRED_OPEN_EYES_WIDER:I = 0x9

.field public static final IRIS_ACQUIRED_PARTIAL:I = 0x1

.field public static final IRIS_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final IRIS_ACQUIRED_VENDOR_EVENT_BASE:I = 0x2710

.field public static final IRIS_AUTH_TYPE_NONE:I = 0x0

.field public static final IRIS_AUTH_TYPE_PREVIEW_CALLBACK:I = 0x1

.field public static final IRIS_AUTH_TYPE_UI_NO_PREVIEW:I = 0x3

.field public static final IRIS_AUTH_TYPE_UI_WITH_PREVIEW:I = 0x2

.field public static final IRIS_DISABLE_PREVIEW_CALLBACK:I = 0x7

.field public static final IRIS_ENABLE_PREVIEW_CALLBACK:I = 0x6

.field public static final IRIS_ERROR_AUTH_VIEW_SIZE:I = 0xa

.field public static final IRIS_ERROR_AUTH_WINDOW_TOKEN:I = 0xb

.field public static final IRIS_ERROR_CANCELED:I = 0x4

.field public static final IRIS_ERROR_DEVICE_NEED_RECAL:I = 0x3e9

.field public static final IRIS_ERROR_EVICTED:I = 0xd

.field public static final IRIS_ERROR_EYE_SAFETY_TIMEOUT:I = 0x9

.field public static final IRIS_ERROR_HW_UNAVAILABLE:I = 0x0

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_SENSOR_CHANGED:I = 0x3ed

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_SERVICE_FAILURE:I = 0x3eb

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_SYSTEM_FAILURE:I = 0x3ea

.field public static final IRIS_ERROR_LOCKOUT:I = 0x6

.field public static final IRIS_ERROR_NEED_TO_RETRY:I = 0x1388

.field public static final IRIS_ERROR_NO_SPACE:I = 0x3

.field public static final IRIS_ERROR_OPEN_IR_CAMERA_FAIL:I = 0x8

.field public static final IRIS_ERROR_PROXIMITY_TIMEOUT:I = 0xc

.field public static final IRIS_ERROR_START_IR_CAMERA_PREVIEW_FAIL:I = 0x7

.field public static final IRIS_ERROR_TIMEOUT:I = 0x2

.field public static final IRIS_ERROR_UNABLE_TO_PROCESS:I = 0x1

.field public static final IRIS_ERROR_UNABLE_TO_REMOVE:I = 0x5

.field public static final IRIS_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final IRIS_INVISIBLE_PREVIEW:I = 0x4

.field public static final IRIS_ONE_EYE:I = 0x9c40

.field public static final IRIS_REQUEST_DVFS_FREQUENCY:I = 0x3ec

.field public static final IRIS_REQUEST_ENROLL_SESSION:I = 0x3ea

.field public static final IRIS_REQUEST_ENUMERATE:I = 0xb

.field public static final IRIS_REQUEST_FACTORY_TEST_ALWAYS_LED_ON:I = 0x7d1

.field public static final IRIS_REQUEST_FACTORY_TEST_CAMERA_VERSION:I = 0x7d4

.field public static final IRIS_REQUEST_FACTORY_TEST_CAPTURE:I = 0x7d2

.field public static final IRIS_REQUEST_FACTORY_TEST_FULL_PREVIEW:I = 0x7d0

.field public static final IRIS_REQUEST_FACTORY_TEST_PREVIEW_MODE:I = 0x7d3

.field public static final IRIS_REQUEST_GET_IR_IDS:I = 0x3eb

.field public static final IRIS_REQUEST_GET_SENSOR_INFO:I = 0x5

.field public static final IRIS_REQUEST_GET_SENSOR_STATUS:I = 0x6

.field public static final IRIS_REQUEST_GET_UNIQUE_ID:I = 0x7

.field public static final IRIS_REQUEST_GET_USERIDS:I = 0xc

.field public static final IRIS_REQUEST_GET_VERSION:I = 0x4

.field public static final IRIS_REQUEST_IR_PREVIEW_ENABLE:I = 0x7d5

.field public static final IRIS_REQUEST_LOCKOUT:I = 0x3e9

.field public static final IRIS_REQUEST_PAUSE:I = 0x0

.field public static final IRIS_REQUEST_PROCESS_FIDO:I = 0x9

.field public static final IRIS_REQUEST_REMOVE_IRIS:I = 0x3e8

.field public static final IRIS_REQUEST_RESUME:I = 0x1

.field public static final IRIS_REQUEST_SENSOR_TEST_NORMALSCAN:I = 0x3

.field public static final IRIS_REQUEST_SESSION_OPEN:I = 0x2

.field public static final IRIS_REQUEST_SET_ACTIVE_GROUP:I = 0x8

.field public static final IRIS_REQUEST_UPDATE_SID:I = 0xa

.field public static final IRIS_TWO_EYES:I = 0x9c41

.field public static final IRIS_VISIBLE_PREVIEW:I = 0x5

.field private static final MANAGE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris.permission.MANAGE_IRIS"

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_AUTHENTICATION_SUCCEEDED_FIDO_RESULT_DATA:I = 0x6b

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_IR_IMAGE:I = 0x6a

.field private static final MSG_REMOVED:I = 0x69

.field public static final PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY:I = 0x4

.field public static final PRIVILEGED_ATTR_EXTRA_EVENT:I = 0x10

.field public static final PRIVILEGED_ATTR_IRIS_DETECTION:I = 0x8

.field public static final PRIVILEGED_ATTR_NO_LOCKOUT:I = 0x2

.field public static final PRIVILEGED_ATTR_NO_VIBRATION:I = 0x1

.field public static final PRIVILEGED_TYPE_KEYGUARD:I = -0x80000000

.field public static final SENSOR_STATUS_ERROR:I = 0x186ca

.field public static final SENSOR_STATUS_LED_OFF:I = 0x7531

.field public static final SENSOR_STATUS_LED_ON:I = 0x7530

.field public static final SENSOR_STATUS_OK:I = 0x186c8

.field public static final SENSOR_STATUS_SECURE_DISABLE:I = 0x4e21

.field public static final SENSOR_STATUS_SECURE_ENALBE:I = 0x4e20

.field public static final SENSOR_STATUS_WORKING:I = 0x186c9

.field private static final SYSTEM_FEATURE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris"

.field private static final TAG:Ljava/lang/String; = "SemIrisManager"

.field private static final USE_IRIS:Ljava/lang/String; = "com.samsung.android.camera.iris.permission.USE_IRIS"

.field private static mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;


# instance fields
.field private mAuthBegin:J

.field private mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

.field private mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

.field private mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

.field private mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

.field private mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

.field private mService:Lcom/samsung/android/camera/iris/IIrisService;

.field private mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field private mToken:Landroid/os/IBinder;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "acquireInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "errMsg"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V
    .locals 0
    .param p1, "cryptoObject"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->cancelAuthentication(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/camera/iris/SemIrisManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->cancelEnrollment()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 1
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;
    .param p9, "sessionId"    # J
    .param p11, "fidoRequestData"    # [B

    .prologue
    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/camera/iris/SemIrisManager;[BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "irisView"    # Landroid/view/View;

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    .line 499
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    .line 500
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 2012
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$1;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .line 2067
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    .line 2069
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 2071
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    .line 2066
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/camera/iris/IIrisService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/camera/iris/IIrisService;

    .prologue
    const/4 v2, 0x0

    .line 1863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    .line 499
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    .line 500
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 2012
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$1;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .line 1864
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    .line 1865
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    .line 1866
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-nez v0, :cond_0

    .line 1867
    const-string/jumbo v0, "SemIrisManager"

    const-string/jumbo v1, "SemIrisManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_0
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 1863
    return-void
.end method

.method private static byteArrayToHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "byteArray"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2122
    if-nez p0, :cond_0

    .line 2123
    return-object v2

    .line 2126
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2127
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-byte v0, p0, v2

    .line 2128
    .local v0, "b":B
    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2130
    .end local v0    # "b":B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static bytesToString([BI)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [B
    .param p1, "len"    # I

    .prologue
    const/4 v5, 0x0

    .line 1556
    array-length v2, p0

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1557
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 1559
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1560
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 1561
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

    .line 1560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1563
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private cancelAuthentication(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V
    .locals 4
    .param p1, "cryptoObject"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .prologue
    .line 1896
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "cancelAuthentication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1898
    return-void

    .line 1900
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1902
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1895
    :cond_1
    :goto_0
    return-void

    .line 1903
    :catch_0
    move-exception v0

    .line 1904
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Remote exception while canceling authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelEnrollment()V
    .locals 3

    .prologue
    .line 1882
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "cancelEnrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1884
    return-void

    .line 1886
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1888
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1881
    :cond_1
    :goto_0
    return-void

    .line 1889
    :catch_0
    move-exception v0

    .line 1890
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Remote exception while canceling enrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 21
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;
    .param p9, "sessionId"    # J
    .param p11, "fidoRequestData"    # [B

    .prologue
    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    if-nez v2, :cond_0

    .line 943
    new-instance v2, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 945
    :cond_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_2

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0xbb8

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    .line 947
    const-string/jumbo v2, "SemIrisManager"

    const-string/jumbo v3, "checkAuthViewWindowToken is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 952
    return-void

    .line 954
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    new-instance v2, Lcom/samsung/android/camera/iris/SemIrisManager$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-direct/range {v2 .. v14}, Lcom/samsung/android/camera/iris/SemIrisManager$2;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    invoke-virtual {v15, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 959
    return-void

    .line 961
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 963
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 965
    .local v5, "mWindowToken":Landroid/os/IBinder;
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 966
    .local v20, "position":[I
    move-object/from16 v0, p8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    if-nez v2, :cond_3

    .line 968
    const-string/jumbo v2, "SemIrisManager"

    const-string/jumbo v3, "mToken null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getMinimumIrisViewSize()Landroid/util/Size;

    move-result-object v19

    .line 972
    .local v19, "mAuthViewSize":Landroid/util/Size;
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_4

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 973
    :cond_4
    if-eqz p4, :cond_5

    .line 974
    const-string/jumbo v2, "SemIrisManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid irisView size. IrisView\'s proper size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", but app\'s size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    aget v6, v20, v2

    const/4 v2, 0x1

    aget v7, v20, v2

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v10, p9

    move/from16 v12, p6

    move/from16 v14, p3

    move-object/from16 v16, p7

    move-object/from16 v17, p11

    .line 979
    invoke-interface/range {v3 .. v17}, Lcom/samsung/android/camera/iris/IIrisService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    .end local v5    # "mWindowToken":Landroid/os/IBinder;
    .end local v19    # "mAuthViewSize":Landroid/util/Size;
    .end local v20    # "position":[I
    :cond_6
    :goto_0
    return-void

    .line 981
    :catch_0
    move-exception v18

    .line 982
    .local v18, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemIrisManager"

    const-string/jumbo v3, "Remote exception while authenticating"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    if-eqz p4, :cond_6

    .line 986
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 16
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "irisView"    # Landroid/view/View;

    .prologue
    .line 1091
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    if-nez v1, :cond_0

    .line 1092
    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    .line 1094
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1095
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$3;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/camera/iris/SemIrisManager$3;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;[BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    invoke-virtual {v10, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 1100
    return-void

    .line 1102
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 1104
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1106
    .local v3, "mWindowToken":Landroid/os/IBinder;
    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 1107
    .local v15, "position":[I
    move-object/from16 v0, p7

    invoke-virtual {v0, v15}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_2

    .line 1109
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "mToken null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    aget v4, v15, v4

    const/4 v5, 0x1

    aget v5, v15, v5

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v11, p3

    move-object/from16 v13, p6

    invoke-interface/range {v1 .. v13}, Lcom/samsung/android/camera/iris/IIrisService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    .end local v3    # "mWindowToken":Landroid/os/IBinder;
    .end local v15    # "position":[I
    :cond_3
    :goto_0
    return-void

    .line 1111
    :catch_0
    move-exception v14

    .line 1112
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Remote exception in enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    if-eqz p5, :cond_3

    .line 1116
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private declared-synchronized ensureServiceConnected()Z
    .locals 5

    .prologue
    monitor-enter p0

    .line 2075
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2078
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2086
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-nez v1, :cond_1

    .line 2087
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->startIrisService()V

    .line 2088
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->waitForService()V

    .line 2091
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 2079
    :catch_0
    move-exception v0

    .line 2080
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 2081
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2091
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 8
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v7, 0x0

    .line 1968
    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1969
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1972
    .local v3, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1978
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :goto_0
    if-nez v3, :cond_0

    .line 1979
    const-string/jumbo v4, "SemIrisManager"

    const-string/jumbo v5, "mRes is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    return-object v7

    .line 1973
    .restart local v3    # "mRes":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 1974
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SemIrisManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAcquiredString, Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    const/4 v3, 0x0

    goto :goto_0

    .line 1984
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2004
    :pswitch_0
    return-object v7

    .line 1986
    :pswitch_1
    :try_start_1
    const-string/jumbo v4, "iris_acquired_move_closer"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1988
    :pswitch_2
    const-string/jumbo v4, "iris_acquired_move_farther"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1990
    :pswitch_3
    const-string/jumbo v4, "iris_acquired_open_wider"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1992
    :pswitch_4
    const-string/jumbo v4, "iris_acquired_move_somewhere_darker"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1994
    :pswitch_5
    const-string/jumbo v4, "iris_acquired_change_your_position"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    .line 2006
    :catch_1
    move-exception v0

    .line 2007
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "SemIrisManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAcquiredString, NotFoundException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    return-object v7

    .line 1984
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 1874
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1875
    :catch_0
    move-exception v0

    .line 1876
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    const/16 v1, -0x2710

    return v1
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 9
    .param p1, "errMsg"    # I

    .prologue
    const/4 v8, 0x0

    .line 1909
    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1910
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1912
    .local v3, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.server.iris"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1917
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :goto_0
    if-nez v3, :cond_0

    .line 1918
    const-string/jumbo v4, "SemIrisManager"

    const-string/jumbo v5, "mRes is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    return-object v8

    .line 1913
    .restart local v3    # "mRes":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 1914
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SemIrisManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getErrorString, Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    const/4 v3, 0x0

    goto :goto_0

    .line 1923
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1958
    :pswitch_0
    :try_start_1
    const-string/jumbo v4, "iris_error_unable_to_process"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1925
    :pswitch_1
    const-string/jumbo v4, "iris_error_unable_to_process"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1927
    :pswitch_2
    const-string/jumbo v4, "iris_error_sensor_no_response"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1929
    :pswitch_3
    const-string/jumbo v4, "iris_error_no_space"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1931
    :pswitch_4
    const-string/jumbo v4, "iris_error_timeout"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1933
    :pswitch_5
    const-string/jumbo v4, "iris_error_canceled"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1935
    :pswitch_6
    const-string/jumbo v4, "iris_error_lockout"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1937
    :pswitch_7
    const-string/jumbo v4, "iris_error_unable_to_remove"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1939
    :pswitch_8
    const-string/jumbo v4, ""

    return-object v4

    .line 1941
    :pswitch_9
    const-string/jumbo v4, ""

    return-object v4

    .line 1943
    :pswitch_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "iris_error_eye_safety_timeout"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.server.iris"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1944
    const-string/jumbo v5, "\n\n"

    .line 1943
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1944
    const-string/jumbo v5, "iris_error_eye_safety_timeout_2nd"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.server.iris"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1943
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1946
    :pswitch_b
    const-string/jumbo v4, "iris_error_auth_view_size"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1948
    :pswitch_c
    const-string/jumbo v4, "VZW"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1949
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "iris_error_proximity_timeout_vzw"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.server.iris"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1950
    const-string/jumbo v5, "\n\n"

    .line 1949
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1950
    const-string/jumbo v5, "iris_error_proximity_timeout_2nd_vzw"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.server.iris"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1949
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1952
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "iris_error_proximity_timeout"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.server.iris"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1953
    const-string/jumbo v5, "\n\n"

    .line 1952
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1953
    const-string/jumbo v5, "iris_error_proximity_timeout_2nd"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.samsung.android.server.iris"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1952
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1956
    :pswitch_d
    const-string/jumbo v4, "iris_error_evicted"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.server.iris"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    .line 1960
    :catch_1
    move-exception v0

    .line 1961
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "SemIrisManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getErrorString, NotFoundException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    return-object v8

    .line 1923
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static declared-synchronized getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/samsung/android/camera/iris/SemIrisManager;

    monitor-enter v1

    .line 2055
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.camera.iris"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2056
    sget-object v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_0

    .line 2057
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 2059
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mSemIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    .line 2061
    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestGetUniqueID(ILjava/lang/String;)[B
    .locals 11
    .param p1, "irisId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1504
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1505
    return-object v10

    .line 1507
    :cond_0
    const/16 v0, 0x100

    new-array v4, v0, [B

    .line 1508
    .local v4, "outBuf":[B
    const/4 v9, 0x0

    .line 1510
    .local v9, "size":I
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 1512
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    const/4 v2, 0x7

    move v5, p1

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/camera/iris/IIrisService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1517
    :cond_1
    :goto_0
    if-gtz v9, :cond_2

    .line 1518
    return-object v10

    .line 1513
    :catch_0
    move-exception v8

    .line 1514
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SemIrisManager"

    const-string/jumbo v1, "Remote exception in request()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1520
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private startIrisService()V
    .locals 5

    .prologue
    .line 2096
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2097
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.server.iris"

    const-string/jumbo v4, "com.samsung.android.server.iris.IrisService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2098
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2094
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2099
    :catch_0
    move-exception v0

    .line 2100
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SemIrisManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting startIrisService failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 873
    if-eqz p1, :cond_1

    .line 874
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 876
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private waitForService()V
    .locals 4

    .prologue
    .line 2106
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    const/16 v2, 0x14

    if-gt v0, v2, :cond_1

    .line 2107
    const-string/jumbo v2, "samsung.iris"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    .line 2109
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_0

    .line 2110
    const-string/jumbo v2, "SemIrisManager"

    const-string/jumbo v3, "Service connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    return-void

    .line 2114
    :cond_0
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2106
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2116
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 2104
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method


# virtual methods
.method public addLockoutResetCallback(Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;

    .prologue
    .line 1691
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1692
    return-void

    .line 1694
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    .line 1696
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1697
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    new-instance v3, Lcom/samsung/android/camera/iris/SemIrisManager$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$4;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/PowerManager;Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->addLockoutResetCallback(Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 1715
    :catch_0
    move-exception v0

    .line 1716
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemIrisManager"

    const-string/jumbo v3, "Remote exception in addLockoutResetCallback()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1719
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v2, "SemIrisManager"

    const-string/jumbo v3, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 31
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;

    .prologue
    .line 896
    if-nez p4, :cond_0

    .line 897
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Must supply an authentication callback"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 900
    :cond_0
    if-eqz p2, :cond_2

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 902
    const-string/jumbo v3, "SemIrisManager"

    const-string/jumbo v4, "authentication already canceled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void

    .line 905
    :cond_1
    new-instance v3, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 909
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 910
    return-void

    .line 912
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v3, :cond_4

    .line 914
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->useHandler(Landroid/os/Handler;)V

    .line 915
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    .line 916
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    .line 917
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .line 918
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->getOpId()J

    move-result-wide v10

    .line 919
    .local v10, "sessionId":J
    :goto_0
    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v17

    .line 920
    :goto_1
    if-nez p8, :cond_7

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v12, p6

    move/from16 v14, p3

    move-object/from16 v16, p7

    invoke-interface/range {v3 .. v17}, Lcom/samsung/android/camera/iris/IIrisService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    .line 895
    .end local v10    # "sessionId":J
    :cond_4
    :goto_2
    return-void

    .line 918
    :cond_5
    const-wide/16 v10, 0x0

    .restart local v10    # "sessionId":J
    goto :goto_0

    .line 919
    :cond_6
    const/16 v17, 0x0

    .local v17, "fidoRequestData":[B
    goto :goto_1

    .line 923
    .end local v17    # "fidoRequestData":[B
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthBegin:J

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move/from16 v22, p3

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    move/from16 v25, p6

    move-object/from16 v26, p7

    move-object/from16 v27, p8

    move-wide/from16 v28, v10

    move-object/from16 v30, v17

    .line 924
    invoke-direct/range {v19 .. v30}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkAuthViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 926
    .end local v10    # "sessionId":J
    :catch_0
    move-exception v2

    .line 927
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemIrisManager"

    const-string/jumbo v4, "Remote exception while authenticating"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 8
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "irisView"    # Landroid/view/View;

    .prologue
    .line 865
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;I)V

    .line 864
    return-void
.end method

.method public authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;I)V
    .locals 9
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "irisView"    # Landroid/view/View;
    .param p7, "userId"    # I

    .prologue
    .line 887
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    .line 886
    return-void
.end method

.method public enableIRImageCallback(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1376
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1377
    return-void

    .line 1378
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1380
    if-eqz p1, :cond_2

    .line 1381
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->enableIRImageCallback(ILjava/lang/String;I)V

    .line 1375
    :cond_1
    :goto_0
    return-void

    .line 1383
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->enableIRImageCallback(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1384
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Remote exception in enableIRImageCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 15
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "irisView"    # Landroid/view/View;

    .prologue
    .line 1046
    const/4 v1, -0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_0

    .line 1047
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result p4

    .line 1050
    :cond_0
    if-nez p5, :cond_1

    .line 1051
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Must supply an enrollment callback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1054
    :cond_1
    if-eqz p2, :cond_3

    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1056
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "enrollment already canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void

    .line 1059
    :cond_2
    new-instance v1, Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1063
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1064
    return-void

    .line 1066
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_5

    .line 1068
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    .line 1069
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    .line 1070
    if-nez p7, :cond_6

    .line 1071
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v11, p3

    move-object/from16 v13, p6

    invoke-interface/range {v1 .. v13}, Lcom/samsung/android/camera/iris/IIrisService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1045
    :cond_5
    :goto_0
    return-void

    .line 1073
    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1075
    :catch_0
    move-exception v14

    .line 1076
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Remote exception in enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/view/View;)V
    .locals 8
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "irisView"    # Landroid/view/View;

    .prologue
    .line 1040
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    .line 1039
    return-void
.end method

.method public getAuthenticatorId()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1650
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1651
    return-wide v4

    .line 1653
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1655
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1656
    :catch_0
    move-exception v0

    .line 1657
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Remote exception in getAuthenticatorId()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-wide v4

    .line 1660
    :cond_1
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "getAuthenticatorId(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledIrisUniqueID()Landroid/util/SparseArray;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1395
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1396
    return-object v7

    .line 1398
    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 1399
    .local v5, "localSparseArray":Landroid/util/SparseArray;
    const/4 v4, 0x0

    .line 1400
    .local v4, "irisList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    const/4 v1, 0x1

    .line 1402
    .local v1, "index":I
    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v6, :cond_1

    .line 1404
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/samsung/android/camera/iris/IIrisService;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1410
    .end local v4    # "irisList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    if-nez v6, :cond_4

    .line 1411
    :cond_2
    const/4 v5, 0x0

    .line 1418
    .end local v5    # "localSparseArray":Landroid/util/SparseArray;
    :cond_3
    return-object v5

    .line 1405
    .restart local v4    # "irisList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    .restart local v5    # "localSparseArray":Landroid/util/SparseArray;
    :catch_0
    move-exception v0

    .line 1406
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "SemIrisManager"

    const-string/jumbo v7, "Remote exception in getEnrolledIrises"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1413
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "irisList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ir$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/iris/Iris;

    .line 1414
    .local v2, "ir":Lcom/samsung/android/camera/iris/Iris;
    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->requestGetUniqueID(ILjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1415
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getEnrolledIrises()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1268
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledIrises(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1249
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1250
    return-object v3

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1253
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Remote exception in getEnrolledIrises"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v3
.end method

.method public getMinimumIrisViewSize()Landroid/util/Size;
    .locals 7

    .prologue
    const v6, 0x3fe38e39

    .line 1330
    const/4 v3, 0x0

    .line 1331
    .local v3, "width":I
    const/4 v1, 0x0

    .line 1332
    .local v1, "height":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1333
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1335
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1337
    .local v2, "roundDensity":I
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_0

    .line 1338
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v3, v4, v2

    .line 1339
    int-to-float v4, v3

    div-float/2addr v4, v6

    float-to-int v1, v4

    .line 1345
    :goto_0
    new-instance v4, Landroid/util/Size;

    mul-int v5, v3, v2

    mul-int v6, v1, v2

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    return-object v4

    .line 1341
    :cond_0
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int v3, v4, v2

    .line 1342
    int-to-float v4, v3

    div-float/2addr v4, v6

    float-to-int v1, v4

    goto :goto_0
.end method

.method public hasEnrolledIrises()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1278
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1279
    return v4

    .line 1280
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1282
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->hasEnrolledIrises(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Remote exception in getEnrolledIrises"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v4
.end method

.method public hasEnrolledIrises(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    .line 1295
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->hasEnrolledIrises(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception in getEnrolledIrises, userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
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

    .line 1449
    const/16 v1, 0x3ea

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1450
    .local v6, "ret":I
    if-lez v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isHardwareDetected()Z
    .locals 5

    .prologue
    .line 1309
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v3, :cond_0

    .line 1311
    const-wide/16 v0, 0x0

    .line 1312
    .local v0, "deviceId":J
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v1, v4}, Lcom/samsung/android/camera/iris/IIrisService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1313
    :catch_0
    move-exception v2

    .line 1314
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemIrisManager"

    const-string/jumbo v4, "Remote exception in isIrisHardwareDetected()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.camera.iris"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 1318
    .end local v0    # "deviceId":J
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v3, "SemIrisManager"

    const-string/jumbo v4, "isIrisHardwareDetected(): Service not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.camera.iris"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public postEnroll()I
    .locals 4

    .prologue
    .line 1148
    const/4 v1, 0x0

    .line 1149
    .local v1, "result":I
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1150
    const/4 v2, 0x0

    return v2

    .line 1152
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    .line 1154
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->postEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1158
    :cond_1
    :goto_0
    return v1

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemIrisManager"

    const-string/jumbo v3, "Remote exception in post enroll"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preEnroll()J
    .locals 6

    .prologue
    .line 1129
    const-wide/16 v2, 0x0

    .line 1130
    .local v2, "result":J
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1131
    const-wide/16 v4, 0x0

    return-wide v4

    .line 1133
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1135
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Lcom/samsung/android/camera/iris/IIrisService;->preEnroll(Landroid/os/IBinder;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1139
    :cond_1
    :goto_0
    return-wide v2

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v4, "Remote exception in enroll"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    .locals 8
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .prologue
    const/4 v7, 0x1

    .line 1186
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    return-void

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 1190
    :try_start_0
    iput-object p3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .line 1191
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    .line 1192
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getGroupId()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/camera/iris/IIrisService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :cond_1
    :goto_0
    return-void

    .line 1193
    :catch_0
    move-exception v6

    .line 1194
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SemIrisManager"

    const-string/jumbo v1, "Remote exception in remove"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    if-eqz p3, :cond_1

    .line 1196
    invoke-direct {p0, v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v7, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public remove(Lcom/samsung/android/camera/iris/Iris;Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    .locals 8
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .prologue
    const/4 v7, 0x1

    .line 1203
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    .line 1207
    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .line 1208
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    .line 1209
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getGroupId()I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/camera/iris/IIrisService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    :cond_1
    :goto_0
    return-void

    .line 1210
    :catch_0
    move-exception v6

    .line 1211
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SemIrisManager"

    const-string/jumbo v1, "Remote exception in remove"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    if-eqz p2, :cond_1

    .line 1213
    invoke-direct {p0, v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v7, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3
    .param p1, "irId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 1228
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1229
    return-void

    .line 1230
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1232
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/camera/iris/IIrisService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    :goto_0
    return-void

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Remote exception in rename()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1237
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "rename(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I
    .locals 9
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .param p5, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    .prologue
    const/4 v1, 0x0

    .line 1424
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    return v1

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_3

    .line 1429
    if-nez p2, :cond_1

    .line 1430
    const/4 v0, 0x0

    :try_start_0
    new-array p2, v0, [B

    .line 1432
    :cond_1
    if-nez p3, :cond_2

    .line 1433
    const/4 v0, 0x0

    new-array p3, v0, [B

    .line 1435
    :cond_2
    iput-object p5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    .line 1436
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/camera/iris/IIrisService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1437
    :catch_0
    move-exception v8

    .line 1438
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SemIrisManager"

    const-string/jumbo v1, "Remote exception in request()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x2

    return v0

    .line 1441
    :cond_3
    const-string/jumbo v0, "SemIrisManager"

    const-string/jumbo v1, "request(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestCameraVersion()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1637
    const/16 v1, 0x7d4

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1638
    return v4

    .line 1640
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestCapture()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1629
    const/16 v1, 0x7d2

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1630
    return v4

    .line 1632
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestEnumerate()[I
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1591
    const/16 v0, 0xa

    new-array v3, v0, [B

    .line 1592
    .local v3, "outBuf":[B
    const/16 v1, 0xb

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v8

    .line 1593
    .local v8, "size":I
    if-gtz v8, :cond_0

    .line 1594
    return-object v2

    .line 1596
    :cond_0
    new-array v7, v8, [I

    .line 1597
    .local v7, "result":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 1598
    aget-byte v0, v3, v6

    aput v0, v7, v6

    .line 1597
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1600
    :cond_1
    return-object v7
.end method

.method public requestFullPreview()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1613
    const/16 v1, 0x7d0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1614
    return v4

    .line 1616
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestGetSensorInfo()[B
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1489
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1490
    .local v3, "outBuf":[B
    const/4 v1, 0x5

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1491
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 1492
    return-object v2

    .line 1494
    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public requestGetSensorStatus()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1500
    const/4 v1, 0x6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    return v0
.end method

.method public requestGetUserIDs()[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1568
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1569
    .local v3, "outBuf":[B
    const/16 v1, 0xc

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v10

    .line 1570
    .local v10, "size":I
    if-gtz v10, :cond_0

    .line 1571
    return-object v2

    .line 1573
    :cond_0
    invoke-static {v3, v10}, Lcom/samsung/android/camera/iris/SemIrisManager;->bytesToString([BI)Ljava/lang/String;

    move-result-object v11

    .line 1574
    .local v11, "src":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 1575
    new-instance v12, Ljava/util/StringTokenizer;

    const-string/jumbo v0, ":"

    invoke-direct {v12, v11, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    .local v12, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 1577
    .local v6, "count":I
    new-array v9, v6, [Ljava/lang/String;

    .line 1578
    .local v9, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1579
    .local v7, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1580
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

    .line 1582
    :cond_1
    return-object v9

    .line 1584
    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v9    # "result":[Ljava/lang/String;
    .end local v12    # "st":Ljava/util/StringTokenizer;
    :cond_2
    return-object v2
.end method

.method public requestGetVersion()[B
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1479
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 1480
    .local v3, "outBuf":[B
    const/4 v1, 0x4

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1481
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 1482
    return-object v2

    .line 1484
    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public requestLedOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1605
    const/16 v1, 0x7d1

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1606
    return v4

    .line 1608
    :cond_0
    const/4 v0, 0x1

    return v0
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

    .line 1455
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1456
    return v1

    .line 1458
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestPreviewMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1621
    const/16 v1, 0x7d3

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1622
    return v4

    .line 1624
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

    .line 1539
    const/16 v0, 0x2800

    new-array v3, v0, [B

    .line 1540
    .local v3, "outBuf":[B
    const/16 v1, 0x9

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .line 1541
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 1542
    return-object v5

    .line 1544
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

    .line 1463
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1464
    return v4

    .line 1466
    :cond_0
    return v1
.end method

.method public requestSessionOpen()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1471
    const/4 v1, 0x2

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1472
    return v4

    .line 1474
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestSetActiveGroup(Ljava/lang/String;)Z
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1525
    if-nez p1, :cond_0

    .line 1526
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v4

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1527
    return v9

    .line 1530
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v7

    move-object v3, p0

    move v4, v1

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1531
    return v9

    .line 1534
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public requestUpdateSID([B)Z
    .locals 6
    .param p1, "sId"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1549
    const/16 v1, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1550
    return v4

    .line 1552
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 1673
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1674
    return-void

    .line 1676
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1678
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-interface {v1, p1}, Lcom/samsung/android/camera/iris/IIrisService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    :goto_0
    return-void

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Remote exception in resetTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1683
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActiveUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-interface {v1, p1}, Lcom/samsung/android/camera/iris/IIrisService;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1171
    :catch_0
    move-exception v0

    .line 1172
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Remote exception in setActiveUser"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIrisViewType(I)V
    .locals 4
    .param p1, "irisViewType"    # I

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1360
    return-void

    .line 1361
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 1363
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/camera/iris/IIrisService;->setIrisViewType(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :cond_1
    :goto_0
    return-void

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemIrisManager"

    const-string/jumbo v2, "Remote exception in setIrisViewType"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
