.class public Lcom/samsung/android/bio/face/SemBioFaceManager;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/SemBioFaceManager$1;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final FACE_ACQUIRED_BIG_FACE:I = 0x5

.field public static final FACE_ACQUIRED_CAPTURE_COMPLETED:I = 0x2713

.field public static final FACE_ACQUIRED_CAPTURE_FACE_LEAVE:I = 0x2714

.field public static final FACE_ACQUIRED_CAPTURE_FACE_LEAVE_TIMEOUT:I = 0x2717

.field public static final FACE_ACQUIRED_CAPTURE_FAILED:I = 0x2716

.field public static final FACE_ACQUIRED_CAPTURE_READY:I = 0x2711

.field public static final FACE_ACQUIRED_CAPTURE_STARTED:I = 0x2712

.field public static final FACE_ACQUIRED_CAPTURE_SUCCESS:I = 0x2715

.field public static final FACE_ACQUIRED_CHANGE_YOUR_POSITION:I = 0xc

.field public static final FACE_ACQUIRED_DUPLICATED_SCANNED_IMAGE:I = 0x3ea

.field public static final FACE_ACQUIRED_FACE_NOT_PRESENT:I = 0xa

.field public static final FACE_ACQUIRED_FAKE_FACE:I = 0x4

.field public static final FACE_ACQUIRED_GOOD:I = 0x0

.field public static final FACE_ACQUIRED_LOW_QUALITY:I = 0x3

.field public static final FACE_ACQUIRED_MISALIGNED_FACE:I = 0x7

.field public static final FACE_ACQUIRED_MOVE_DOWN:I = 0x8

.field public static final FACE_ACQUIRED_MOVE_SOMEWHERE_DARKER:I = 0xb

.field public static final FACE_ACQUIRED_NON_FACE:I = 0x2

.field public static final FACE_ACQUIRED_OPEN_FACES_WIDER:I = 0x9

.field public static final FACE_ACQUIRED_PROCESS_FAIL:I = 0x1

.field public static final FACE_ACQUIRED_SMALL_FACE:I = 0x6

.field public static final FACE_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final FACE_ACQUIRED_VENDOR_EVENT_BASE:I = 0x2710

.field public static final FACE_ERROR_AUTH_WINDOW_TOKEN:I = 0xb

.field public static final FACE_ERROR_CANCELED:I = 0x4

.field public static final FACE_ERROR_DEVICE_NEED_RECAL:I = 0x3e9

.field public static final FACE_ERROR_EVICTED:I = 0xd

.field public static final FACE_ERROR_FACE_SAFETY_TIMEOUT:I = 0x9

.field public static final FACE_ERROR_HW_UNAVAILABLE:I = 0x0

.field public static final FACE_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final FACE_ERROR_IDENTIFY_FAILURE_SENSOR_CHANGED:I = 0x3ed

.field public static final FACE_ERROR_IDENTIFY_FAILURE_SERVICE_FAILURE:I = 0x3eb

.field public static final FACE_ERROR_IDENTIFY_FAILURE_SYSTEM_FAILURE:I = 0x3ea

.field public static final FACE_ERROR_LOCKOUT:I = 0x6

.field public static final FACE_ERROR_NEED_TO_RETRY:I = 0x1388

.field public static final FACE_ERROR_NO_SPACE:I = 0x3

.field public static final FACE_ERROR_OPEN_FRONT_CAMERA_FAIL:I = 0x8

.field public static final FACE_ERROR_PROXIMITY_TIMEOUT:I = 0xc

.field public static final FACE_ERROR_START_FRONT_CAMERA_PREVIEW_FAIL:I = 0x7

.field public static final FACE_ERROR_TIMEOUT:I = 0x2

.field public static final FACE_ERROR_UNABLE_TO_PROCESS:I = 0x1

.field public static final FACE_ERROR_UNABLE_TO_REMOVE:I = 0x5

.field public static final FACE_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final FACE_INVISIBLE_PREVIEW:I = 0x4

.field public static final FACE_REQUEST_ENROLL_SESSION:I = 0x3ea

.field public static final FACE_REQUEST_ENUMERATE:I = 0xb

.field public static final FACE_VISIBLE_PREVIEW:I = 0x5

.field private static final MANAGE_FACE:Ljava/lang/String; = "com.samsung.android.bio.face.permission.MANAGE_FACE"

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_AUTHENTICATION_SUCCEEDED_FIDO_RESULT_DATA:I = 0x6b

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field public static final PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY:I = 0x4

.field public static final PRIVILEGED_ATTR_FACE_DETECTION:I = 0x8

.field public static final PRIVILEGED_ATTR_NO_LOCKOUT:I = 0x2

.field public static final PRIVILEGED_ATTR_NO_VIBRATION:I = 0x1

.field public static final PRIVILEGED_TYPE_KEYGUARD:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "SemBioFaceManager"

.field private static final USE_FACE:Ljava/lang/String; = "com.samsung.android.bio.face.permission.USE_FACE"

.field private static mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;


# instance fields
.field private mAuthBegin:J

.field private mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field private mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

.field private mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field private mRemovalFace:Lcom/samsung/android/bio/face/Face;

.field private mRequestCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;

.field private mService:Lcom/samsung/android/bio/face/IFaceService;

.field private mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/Face;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/Face;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRequestCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/bio/face/SemBioFaceManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "acquireInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/bio/face/SemBioFaceManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "errMsg"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V
    .locals 0
    .param p1, "cryptoObject"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->cancelAuthentication(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->cancelEnrollment()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 1
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "faceView"    # Landroid/view/View;
    .param p9, "sessionId"    # J
    .param p11, "fidoRequestData"    # [B

    .prologue
    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/bio/face/SemBioFaceManager;->checkAuthViewWindowToken(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/bio/face/SemBioFaceManager;[BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "faceView"    # Landroid/view/View;

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    .line 339
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mSemBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    .line 351
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthBegin:J

    .line 352
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-direct {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    .line 1503
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    .line 1552
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    .line 1553
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 1554
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    .line 1551
    return-void
.end method

.method private cancelAuthentication(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V
    .locals 4
    .param p1, "cryptoObject"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .prologue
    .line 1416
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1417
    return-void

    .line 1419
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1421
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1415
    :cond_1
    :goto_0
    return-void

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception while canceling authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelEnrollment()V
    .locals 3

    .prologue
    .line 1403
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1404
    return-void

    .line 1406
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1408
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/bio/face/IFaceService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1402
    :cond_1
    :goto_0
    return-void

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception while canceling enrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkAuthViewWindowToken(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 21
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "faceView"    # Landroid/view/View;
    .param p9, "sessionId"    # J
    .param p11, "fidoRequestData"    # [B

    .prologue
    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    if-nez v2, :cond_0

    .line 779
    new-instance v2, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-direct {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    .line 781
    :cond_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_2

    .line 782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthBegin:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0xbb8

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    .line 783
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "checkAuthViewWindowToken is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-virtual {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 788
    return-void

    .line 790
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    new-instance v2, Lcom/samsung/android/bio/face/SemBioFaceManager$2;

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

    invoke-direct/range {v2 .. v14}, Lcom/samsung/android/bio/face/SemBioFaceManager$2;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    invoke-virtual {v15, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 795
    return-void

    .line 797
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-virtual {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 799
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 801
    .local v5, "mWindowToken":Landroid/os/IBinder;
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 802
    .local v19, "position":[I
    move-object/from16 v0, p8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    if-nez v2, :cond_3

    .line 804
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "mToken null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    aget v6, v19, v2

    const/4 v2, 0x1

    aget v7, v19, v2

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v10, p9

    move/from16 v12, p6

    move/from16 v14, p3

    move-object/from16 v16, p7

    move-object/from16 v17, p11

    .line 807
    invoke-interface/range {v3 .. v17}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    .end local v5    # "mWindowToken":Landroid/os/IBinder;
    .end local v19    # "position":[I
    :cond_4
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v18

    .line 810
    .local v18, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "Remote exception while authenticating"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    if-eqz p4, :cond_4

    .line 814
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 16
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "faceView"    # Landroid/view/View;

    .prologue
    .line 921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    if-nez v1, :cond_0

    .line 922
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-direct {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    .line 924
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 925
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager$3;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;[BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    invoke-virtual {v10, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 930
    return-void

    .line 932
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mGetterHandler:Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$GetterHandler;->removeAllGetterCallbacks()V

    .line 934
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 936
    .local v3, "mWindowToken":Landroid/os/IBinder;
    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 937
    .local v15, "position":[I
    move-object/from16 v0, p7

    invoke-virtual {v0, v15}, Landroid/view/View;->getLocationInWindow([I)V

    .line 938
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_2

    .line 939
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "mToken null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    aget v4, v15, v4

    const/4 v5, 0x1

    aget v5, v15, v5

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v11, p3

    move-object/from16 v13, p6

    invoke-interface/range {v1 .. v13}, Lcom/samsung/android/bio/face/IFaceService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    .end local v3    # "mWindowToken":Landroid/os/IBinder;
    .end local v15    # "position":[I
    :cond_3
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v14

    .line 942
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    if-eqz p5, :cond_3

    .line 946
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private declared-synchronized ensureServiceConnected()Z
    .locals 5

    .prologue
    monitor-enter p0

    .line 1558
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1561
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/bio/face/IFaceService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1569
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-nez v1, :cond_1

    .line 1570
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->startFaceService()V

    .line 1571
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->waitForService()V

    .line 1573
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 1562
    :catch_0
    move-exception v0

    .line 1563
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "ensureServiceConnected : failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1564
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 1565
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1573
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 8
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v7, 0x0

    .line 1458
    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1459
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1462
    .local v3, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.bio.face.service"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1468
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :goto_0
    if-nez v3, :cond_0

    .line 1469
    const-string/jumbo v4, "SemBioFaceManager"

    const-string/jumbo v5, "mRes is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    return-object v7

    .line 1463
    .restart local v3    # "mRes":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 1464
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SemBioFaceManager"

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

    .line 1465
    const/4 v3, 0x0

    goto :goto_0

    .line 1474
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1495
    return-object v7

    .line 1476
    :pswitch_0
    :try_start_1
    const-string/jumbo v4, "face_acquired_low_quality"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1478
    :pswitch_1
    return-object v7

    .line 1480
    :pswitch_2
    const-string/jumbo v4, "face_acquired_non_face"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1482
    :pswitch_3
    const-string/jumbo v4, "face_acquired_big_face"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1484
    :pswitch_4
    const-string/jumbo v4, "face_acquired_small_face"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1486
    :pswitch_5
    const-string/jumbo v4, "face_acquired_misaligned_face"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    .line 1497
    :catch_1
    move-exception v0

    .line 1498
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "SemBioFaceManager"

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

    .line 1499
    return-object v7

    .line 1474
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 1395
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1396
    :catch_0
    move-exception v0

    .line 1397
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/16 v1, -0x2710

    return v1
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 8
    .param p1, "errMsg"    # I

    .prologue
    const/4 v7, 0x0

    .line 1428
    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1429
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1431
    .local v3, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v4, "com.samsung.android.bio.face.service"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1436
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :goto_0
    if-nez v3, :cond_0

    .line 1437
    const-string/jumbo v4, "SemBioFaceManager"

    const-string/jumbo v5, "mRes is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    return-object v7

    .line 1432
    .restart local v3    # "mRes":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 1433
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SemBioFaceManager"

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

    .line 1434
    const/4 v3, 0x0

    goto :goto_0

    .line 1442
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mRes":Landroid/content/res/Resources;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1448
    return-object v7

    .line 1446
    :sswitch_0
    :try_start_1
    const-string/jumbo v4, "face_enroll_error_camera_fail"

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    .line 1450
    :catch_1
    move-exception v0

    .line 1451
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "SemBioFaceManager"

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

    .line 1452
    return-object v7

    .line 1442
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v0, Lcom/samsung/android/bio/face/SemBioFaceManager;

    monitor-enter v0

    .line 1547
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1
.end method

.method private startFaceService()V
    .locals 5

    .prologue
    .line 1578
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1579
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.bio.face.service"

    const-string/jumbo v4, "com.samsung.android.bio.face.service.FaceService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1580
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1581
    sget-boolean v2, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1582
    const-string/jumbo v2, "SemBioFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startFaceService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SemBioFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting startFaceService failed: "

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

    .line 707
    if-eqz p1, :cond_1

    .line 708
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 710
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private waitForService()V
    .locals 4

    .prologue
    .line 1591
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    const/16 v2, 0x14

    if-gt v0, v2, :cond_1

    .line 1592
    const-string/jumbo v2, "samsung.face"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/bio/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    .line 1593
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v2, :cond_0

    .line 1594
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "Service connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    return-void

    .line 1598
    :cond_0
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1599
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1589
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method


# virtual methods
.method public addLockoutResetCallback(Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;

    .prologue
    .line 1241
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1242
    return-void

    .line 1244
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v2, :cond_1

    .line 1246
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1247
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    new-instance v3, Lcom/samsung/android/bio/face/SemBioFaceManager$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$4;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/PowerManager;Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->addLockoutResetCallback(Lcom/samsung/android/bio/face/IFaceServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "Remote exception in addLockoutResetCallback()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1269
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v2, "SemBioFaceManager"

    const-string/jumbo v3, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 31
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "faceView"    # Landroid/view/View;

    .prologue
    .line 730
    if-nez p4, :cond_0

    .line 731
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Must supply an authentication callback"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 734
    :cond_0
    if-eqz p2, :cond_2

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 736
    const-string/jumbo v3, "SemBioFaceManager"

    const-string/jumbo v4, "authentication already canceled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void

    .line 739
    :cond_1
    new-instance v3, Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 743
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 744
    return-void

    .line 747
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v3, :cond_4

    .line 749
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->useHandler(Landroid/os/Handler;)V

    .line 750
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    .line 751
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 752
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .line 753
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getOpId()J

    move-result-wide v10

    .line 754
    .local v10, "sessionId":J
    :goto_0
    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    invoke-virtual {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v17

    .line 755
    :goto_1
    if-nez p8, :cond_7

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

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

    invoke-interface/range {v3 .. v17}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    .line 729
    .end local v10    # "sessionId":J
    :cond_4
    :goto_2
    return-void

    .line 753
    :cond_5
    const-wide/16 v10, 0x0

    .restart local v10    # "sessionId":J
    goto :goto_0

    .line 754
    :cond_6
    const/16 v17, 0x0

    .local v17, "fidoRequestData":[B
    goto :goto_1

    .line 758
    .end local v17    # "fidoRequestData":[B
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthBegin:J

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

    .line 759
    invoke-direct/range {v19 .. v30}, Lcom/samsung/android/bio/face/SemBioFaceManager;->checkAuthViewWindowToken(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 761
    .end local v10    # "sessionId":J
    :catch_0
    move-exception v2

    .line 762
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemBioFaceManager"

    const-string/jumbo v4, "Remote exception while authenticating"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 8
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "faceView"    # Landroid/view/View;

    .prologue
    .line 699
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;I)V

    .line 698
    return-void
.end method

.method public authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;I)V
    .locals 9
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "faceView"    # Landroid/view/View;
    .param p7, "userId"    # I

    .prologue
    .line 721
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    .line 720
    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 15
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p6, "attr"    # Landroid/os/Bundle;
    .param p7, "faceView"    # Landroid/view/View;

    .prologue
    .line 874
    const/4 v1, -0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_0

    .line 875
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result p4

    .line 878
    :cond_0
    if-nez p5, :cond_1

    .line 879
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Must supply an enrollment callback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 882
    :cond_1
    if-eqz p2, :cond_3

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 884
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "enrollment already canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return-void

    .line 887
    :cond_2
    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 891
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_4

    .line 892
    return-void

    .line 895
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_5

    .line 897
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 898
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    .line 899
    if-nez p7, :cond_6

    .line 900
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

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

    invoke-interface/range {v1 .. v13}, Lcom/samsung/android/bio/face/IFaceService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 873
    :cond_5
    :goto_0
    return-void

    .line 902
    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 904
    :catch_0
    move-exception v14

    .line 905
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V
    .locals 8
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p5, "faceView"    # Landroid/view/View;

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    .line 867
    return-void
.end method

.method public getAuthenticatorId()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1200
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1201
    return-wide v4

    .line 1203
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1205
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/bio/face/IFaceService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in getAuthenticatorId()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-wide v4

    .line 1210
    :cond_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "getAuthenticatorId(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledFaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/bio/face/Face;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledFaces(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/bio/face/Face;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1088
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1089
    return-object v3

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1093
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/bio/face/IFaceService;->getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in getEnrolledFaces"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v3
.end method

.method public hasEnrolledFaces()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1119
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1120
    return v4

    .line 1122
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1124
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in getEnrolledFaces"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v4
.end method

.method public hasEnrolledFaces(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1139
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1140
    return v4

    .line 1142
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1144
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/bio/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception in getEnrolledFaces, userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v4
.end method

.method public isEnrollSession()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1189
    const/16 v1, 0x3ea

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I

    move-result v6

    .line 1190
    .local v6, "ret":I
    if-lez v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isHardwareDetected()Z
    .locals 1

    .prologue
    .line 1159
    const/4 v0, 0x0

    return v0
.end method

.method public postEnroll()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 977
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 978
    return v3

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 982
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/bio/face/IFaceService;->postEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in post enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v3
.end method

.method public preEnroll()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 958
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 959
    return-wide v4

    .line 961
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 963
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/bio/face/IFaceService;->preEnroll(Landroid/os/IBinder;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-wide v4
.end method

.method public remove(Lcom/samsung/android/bio/face/Face;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 8
    .param p1, "face"    # Lcom/samsung/android/bio/face/Face;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .prologue
    const/4 v7, 0x1

    .line 1020
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    return-void

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    .line 1025
    :try_start_0
    iput-object p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 1026
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/Face;

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/Face;->getFaceId()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/Face;->getGroupId()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/bio/face/IFaceServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :cond_1
    :goto_0
    return-void

    .line 1028
    :catch_0
    move-exception v6

    .line 1029
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "Remote exception in remove"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    if-eqz p3, :cond_1

    .line 1031
    invoke-direct {p0, v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v7, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/bio/face/Face;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public remove(Lcom/samsung/android/bio/face/Face;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 8
    .param p1, "face"    # Lcom/samsung/android/bio/face/Face;
    .param p2, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .prologue
    const/4 v7, 0x1

    .line 1039
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    return-void

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    .line 1044
    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 1045
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/Face;

    .line 1046
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/Face;->getFaceId()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/Face;->getGroupId()I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/bio/face/IFaceServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    :cond_1
    :goto_0
    return-void

    .line 1047
    :catch_0
    move-exception v6

    .line 1048
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "Remote exception in remove"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    if-eqz p2, :cond_1

    .line 1050
    invoke-direct {p0, v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v7, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/bio/face/Face;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3
    .param p1, "faceId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 1066
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1067
    return-void

    .line 1069
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1071
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/bio/face/IFaceService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :goto_0
    return-void

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in rename()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1076
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "rename(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public request(I[B[BILcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;)I
    .locals 9
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1165
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    return v1

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_4

    .line 1170
    if-nez p2, :cond_1

    .line 1171
    const/4 v0, 0x0

    :try_start_0
    new-array p2, v0, [B

    .line 1173
    :cond_1
    if-nez p3, :cond_2

    .line 1174
    const/4 v0, 0x0

    new-array p3, v0, [B

    .line 1176
    :cond_2
    iput-object p5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRequestCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RequestCallback;

    .line 1177
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v6

    if-nez p5, :cond_3

    :goto_0
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/bio/face/IFaceService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/bio/face/IFaceServiceReceiver;)I

    move-result v0

    return v0

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1178
    :catch_0
    move-exception v8

    .line 1179
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "Remote exception in request()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, -0x2

    return v0

    .line 1182
    :cond_4
    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "request(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 1223
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1224
    return-void

    .line 1226
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1228
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1, p1}, Lcom/samsung/android/bio/face/IFaceService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    :goto_0
    return-void

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in resetTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1233
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActiveUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 999
    return-void

    .line 1001
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 1003
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v1, p1}, Lcom/samsung/android/bio/face/IFaceService;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :cond_1
    :goto_0
    return-void

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception in setActiveUser"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
