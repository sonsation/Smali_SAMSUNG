.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$-boolean_haveKnoxPassword_int_userId_int_lockType_LambdaImpl0;,
        Lcom/android/server/LockSettingsService$-boolean_haveKnoxPassword_int_userId_int_lockType_LambdaImpl1;,
        Lcom/android/server/LockSettingsService$-void_notifyPasswordChanged_int_userId_LambdaImpl0;,
        Lcom/android/server/LockSettingsService$1;,
        Lcom/android/server/LockSettingsService$CredentialInfo;,
        Lcom/android/server/LockSettingsService$CredentialUtil;,
        Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/LockSettingsService$IKeystoreUtil;,
        Lcom/android/server/LockSettingsService$KeystoreUtil;,
        Lcom/android/server/LockSettingsService$Lifecycle;,
        Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;,
        Lcom/android/server/LockSettingsService$SdpHandler;,
        Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;
    }
.end annotation


# static fields
.field private static final ACTION_NULL:Landroid/content/Intent;

.field private static final ALLOW_FAIL_COUNT:Ljava/lang/String; = "allowfailcount"

.field private static final CLIENT_NAME:Ljava/lang/String; = "clientname"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default_password"

.field private static final DEVICE_SUPPORT_KNOX:Z

.field private static final ENABLE_EMERGENCY_CALL:Ljava/lang/String; = "enableemergencycall"

.field private static final FBE_ENCRYPTED_NOTIFICATION:I = 0x0

.field private static final KNOX_RECOVERY_VERSION_KEY:Ljava/lang/String; = "lockscreen.knox_recovery_version"

.field private static final KNOX_RECOVERY_VERSION_LATEST:I = 0x1

.field private static final LOCKED:Ljava/lang/String; = "locked"

.field private static final LOCK_TIME:Ljava/lang/String; = "locktime"

.field private static final LOCK_TYPE_BACKUP_PIN:I = 0x3

.field private static final LOCK_TYPE_BACKUP_PWD:I = 0x4

.field private static final LOCK_TYPE_NONE:I = -0x1

.field private static final LOCK_TYPE_PASSWORD:I = 0x2

.field private static final LOCK_TYPE_PATTERN:I = 0x1

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final PERMANENT_BLOCK_COUNT:Ljava/lang/String; = "permanentblockcount"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PHONE_NUMBER:Ljava/lang/String; = "phonenumber"

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final REMOTE_LOCK_INTENT:Ljava/lang/String; = "com.samsung.remotelock.CLIENT_WAKEUP"

.field private static final REMOTE_LOCK_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.REMOTELOCK"

.field private static final SDP_LOCK:Ljava/lang/Object;

.field private static final SECURE_DEBUG:Z = false

.field private static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static final VERIF_TYPE_GATEKEEPER:I = 0x10

.field private static final VERIF_TYPE_NONE:I = 0x0

.field private static final VERIF_TYPE_NON_SDP_MDFPP:I = 0x4

.field private static final VERIF_TYPE_NON_SDP_NON_MDFPP:I = 0x8

.field private static final VERIF_TYPE_SDP:I = 0x1

.field private static final VERIF_TYPE_SDP_NON_MDFPP:I = 0x2

.field private static mSavePassword:Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/IRemoteLockMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnrolledResponseCode:I

.field private mEnrolledTime:J

.field private mFirstCallToVold:Z

.field private mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeForPasswordCheck:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPassword:Ljava/lang/String;

.field private mRemoteCallback:Landroid/os/IRemoteCallback;

.field private mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

.field private final mSeparateChallengeLock:Ljava/lang/Object;

.field private final mStorage:Lcom/android/server/LockSettingsStorage;

.field private final mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

.field private final mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

.field private mUserManager:Landroid/os/UserManager;

.field private mVerifyTimeout:I


# direct methods
.method static synthetic -com_android_server_LockSettingsService_lambda$1(ILcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaInfo;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "svc"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 1620
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "havePassword :: Error occured..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1625
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic -com_android_server_LockSettingsService_lambda$2(Lcom/samsung/android/knox/SemPersonaInfo;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "personaInfo"    # Lcom/samsung/android/knox/SemPersonaInfo;

    .prologue
    .line 1627
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/LockSettingsService;->SDP_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStrongAuth;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/LockSettingsService;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/LockSettingsService;Landroid/service/gatekeeper/IGateKeeperService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/LockSettingsService;Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "isFingerprint"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/LockSettingsService;II)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/LockSettingsService;Ljava/lang/String;)V
    .locals 0
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->clear(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/LockSettingsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->maybeShowEncryptionNotifications()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/LockSettingsService;IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "unknownUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/LockSettingsService;JI)V
    .locals 1
    .param p1, "value"    # J
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/LockSettingsService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/LockSettingsService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/LockSettingsService;->SDP_LOCK:Ljava/lang/Object;

    .line 231
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxSupported()Z

    move-result v0

    .line 230
    sput-boolean v0, Lcom/android/server/LockSettingsService;->DEVICE_SUPPORT_KNOX:Z

    .line 999
    const/16 v0, 0x3f2

    const/16 v1, 0x3f8

    .line 1000
    const/16 v2, 0x3e8

    .line 999
    filled-new-array {v0, v1, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 1004
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/LockSettingsService;->ACTION_NULL:Landroid/content/Intent;

    .line 1005
    sget-object v0, Lcom/android/server/LockSettingsService;->ACTION_NULL:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3044
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 3045
    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    .line 3046
    const-string/jumbo v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    .line 3047
    const-string/jumbo v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    .line 3048
    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v6

    .line 3049
    const-string/jumbo v1, "lockscreen.password_type_alternate"

    aput-object v1, v0, v7

    .line 3050
    const-string/jumbo v1, "lockscreen.password_salt"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3051
    const-string/jumbo v1, "lockscreen.disabled"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 3052
    const-string/jumbo v1, "lockscreen.options"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 3053
    const-string/jumbo v1, "lockscreen.biometric_weak_fallback"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 3054
    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 3055
    const-string/jumbo v1, "lockscreen.power_button_instantly_locks"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 3056
    const-string/jumbo v1, "lockscreen.passwordhistory"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 3057
    const-string/jumbo v1, "lock_pattern_autolock"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 3058
    const-string/jumbo v1, "lock_biometric_weak_flags"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 3059
    const-string/jumbo v1, "lock_pattern_visible_pattern"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 3060
    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 3044
    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 3064
    new-array v0, v5, [Ljava/lang/String;

    .line 3065
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    .line 3066
    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    .line 3064
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 3070
    new-array v0, v7, [Ljava/lang/String;

    .line 3071
    const-string/jumbo v1, "lockscreen.password_salt"

    aput-object v1, v0, v3

    .line 3072
    const-string/jumbo v1, "lockscreen.passwordhistory"

    aput-object v1, v0, v4

    .line 3073
    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v5

    .line 3074
    const-string/jumbo v1, "lockscreen.profilechallenge"

    aput-object v1, v0, v6

    .line 3070
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 3077
    new-array v0, v5, [Ljava/lang/String;

    .line 3078
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    .line 3079
    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    .line 3077
    sput-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1124
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/LockSettingsService;->mEnrolledTime:J

    .line 181
    iput v2, p0, Lcom/android/server/LockSettingsService;->mEnrolledResponseCode:I

    .line 182
    iput v2, p0, Lcom/android/server/LockSettingsService;->mVerifyTimeout:I

    .line 185
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    .line 207
    iput-object v4, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    .line 208
    iput-object v4, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    .line 209
    iput-object v4, p0, Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 1291
    new-instance v0, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 1125
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 1126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 1127
    new-instance v0, Lcom/android/server/LockSettingsStrongAuth;

    invoke-direct {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    .line 1130
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 1133
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1134
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1135
    const-string/jumbo v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1139
    new-instance v0, Lcom/android/server/LockSettingsStorage;

    new-instance v1, Lcom/android/server/LockSettingsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$2;-><init>(Lcom/android/server/LockSettingsService;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/LockSettingsStorage;-><init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 1151
    new-instance v0, Lcom/android/server/LockSettingsService$KeystoreUtil;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LockSettingsService$KeystoreUtil;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$KeystoreUtil;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    .line 1152
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    new-instance v0, Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LockSettingsService$SdpHandler;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$SdpHandler;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    .line 1154
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1157
    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1159
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 1160
    new-instance v0, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;-><init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 1161
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->register()V

    .line 1124
    return-void
.end method

.method private addUserKeyAuth(I[B[B)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2270
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 2271
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 2272
    .local v2, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2274
    .local v0, "callingId":J
    :try_start_0
    iget v4, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v2, p1, v4, p2, p3}, Landroid/os/storage/IMountService;->addUserKeyAuth(II[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2276
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2269
    return-void

    .line 2275
    :catchall_0
    move-exception v4

    .line 2276
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2275
    throw v4
.end method

.method private adjustPatternToBaseOne(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "oneBased"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 670
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 671
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "oneBased"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "userId"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 673
    const/4 v0, 0x0

    .line 675
    .local v0, "result":Z
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, "zeroBased":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 677
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->changePassword(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 678
    .end local v0    # "result":Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Result of pattern specified adjustment : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 679
    return v0
.end method

.method private adjustSDP(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 648
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 649
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "credential"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string/jumbo v4, "userId"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 651
    const/4 v2, 0x0

    .line 652
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSdpSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 654
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 656
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->guaranteeCMK(Ljava/lang/String;I)Z

    move-result v2

    .line 657
    .local v2, "result":Z
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "encodedCredential":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 659
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    invoke-static {v3, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->-wrap1(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 665
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    .end local v2    # "result":Z
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Result of sdp specified adjustment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 666
    return v2

    .line 661
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    .restart local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    .restart local v2    # "result":Z
    :cond_1
    const-string/jumbo v3, "adjustSDP :: Unexpected condition..."

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkCMKExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 483
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v0

    return v0
.end method

.method private checkCryptKeeperPermissions()Z
    .locals 5

    .prologue
    .line 1680
    const/4 v1, 0x0

    .line 1682
    .local v1, "permission_err":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 1683
    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    .line 1684
    const-string/jumbo v4, "no permission to get the password"

    .line 1682
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1688
    :goto_0
    return v1

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1499
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1501
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1502
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1503
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1505
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1506
    const-string/jumbo v5, " needs permission "

    .line 1505
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1506
    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    .line 1505
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1506
    const-string/jumbo v5, " to read "

    .line 1505
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1507
    const-string/jumbo v5, " for user "

    .line 1505
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1501
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1511
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1512
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1513
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1515
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1516
    const-string/jumbo v5, " needs permission "

    .line 1515
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1516
    const-string/jumbo v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 1515
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1516
    const-string/jumbo v5, " to read "

    .line 1515
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1517
    const-string/jumbo v5, " for user "

    .line 1515
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1511
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1498
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private checkSDPassword(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2189
    const/4 v2, 0x0

    .line 2192
    .local v2, "result":Z
    const-string/jumbo v4, "enterprise_shared_device_policy"

    .line 2191
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 2190
    invoke-static {v4}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    move-result-object v1

    .line 2193
    .local v1, "mService":Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "loginUserName"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2194
    .local v3, "userName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2195
    :cond_0
    return v2

    .line 2197
    :cond_1
    if-eqz v1, :cond_2

    .line 2199
    :try_start_0
    invoke-interface {v1, p1, v3}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;->checkSDPasswordTIMA(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 2200
    const/4 v2, 0x0

    .line 2208
    :cond_2
    :goto_0
    return v2

    .line 2202
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 2204
    :catch_0
    move-exception v0

    .line 2205
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    return-void
.end method

.method private clear(Ljava/lang/String;)V
    .locals 2
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    .line 545
    const-string/jumbo v0, "LockSettingsService.SDP"

    const-string/jumbo v1, "Clear credential..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 548
    :cond_0
    const/4 p1, 0x0

    .line 544
    .local p1, "credential":Ljava/lang/String;
    return-void
.end method

.method private clearHash(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    const/4 v1, 0x0

    .line 594
    packed-switch p2, :pswitch_data_0

    .line 593
    :goto_0
    return-void

    .line 596
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    goto :goto_0

    .line 599
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearSalt(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Clear salt... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 989
    :try_start_0
    const-string/jumbo v1, "lockscreen.password_salt"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :goto_0
    return-void

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private clearUserKeyProtection(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2249
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 2248
    return-void
.end method

.method private compareHash(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 683
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 684
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "credential"

    aput-object v5, v4, v3

    aput-object p1, v4, v7

    const-string/jumbo v5, "userId"

    aput-object v5, v4, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string/jumbo v5, "lockType"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 686
    const/4 v1, 0x0

    .line 687
    .local v1, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 688
    const-string/jumbo v3, "Verify :: Empty credential..."

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 713
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Verify :: Matched? : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 714
    return v1

    .line 690
    .restart local v1    # "result":Z
    :cond_1
    const/4 v0, 0x0

    .line 691
    .local v0, "hash":[B
    invoke-direct {p0, p2, p3}, Lcom/android/server/LockSettingsService;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v2

    .line 693
    .local v2, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-nez v2, :cond_2

    .line 694
    const-string/jumbo v3, "Verify :: Failed to retrieve stored hash..."

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_2
    if-ne p3, v7, :cond_3

    .line 698
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 697
    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 704
    .end local v0    # "hash":[B
    :goto_1
    if-eqz v0, :cond_5

    iget-object v3, v2, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 707
    .local v1, "result":Z
    :goto_2
    if-nez v1, :cond_0

    iget-object v3, v2, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v3, v3

    const/16 v4, 0x48

    if-ne v3, v4, :cond_0

    .line 708
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashOriginal(Ljava/lang/String;I)[B

    move-result-object v0

    .line 709
    .local v0, "hash":[B
    if-eqz v0, :cond_6

    iget-object v3, v2, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 699
    .local v0, "hash":[B
    .local v1, "result":Z
    :cond_3
    if-ne p3, v8, :cond_4

    .line 700
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .local v0, "hash":[B
    goto :goto_1

    .line 702
    .local v0, "hash":[B
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Verify :: Unknown lock type... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "hash":[B
    :cond_5
    move v1, v3

    .line 704
    goto :goto_2

    .line 709
    .local v0, "hash":[B
    .local v1, "result":Z
    :cond_6
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_0
.end method

.method private doExtraAdjustment(Lcom/android/server/LockSettingsService$CredentialInfo;)Z
    .locals 5
    .param p1, "ci"    # Lcom/android/server/LockSettingsService$CredentialInfo;

    .prologue
    const/4 v4, 0x1

    .line 607
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 608
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "CredentialInfo"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$CredentialInfo;->dump()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 619
    const/4 v0, 0x1

    .line 620
    .local v0, "result":Z
    iget v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->verifType:I

    packed-switch v1, :pswitch_data_0

    .line 643
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Result of extra adjustment : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 644
    return v0

    .line 623
    .restart local v0    # "result":Z
    :pswitch_1
    iget v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    if-ne v1, v4, :cond_0

    .line 624
    iget-object v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->adjustPatternToBaseOne(Ljava/lang/String;I)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 629
    .local v0, "result":Z
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSdpSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    const-string/jumbo v1, "doExtraAdjustment :: Migrate SDP... "

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 631
    iget-object v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->adjustSDP(Ljava/lang/String;I)Z

    move-result v0

    .line 632
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 633
    iget v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->clearHash(II)V

    goto :goto_0

    .line 636
    .local v0, "result":Z
    :cond_1
    const-string/jumbo v1, "doExtraAdjustment :: Enroll knox credential..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 637
    iget-object v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->enrollKnoxCredential(Ljava/lang/String;II)V

    goto :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private doLostVersionRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;)Z
    .locals 6
    .param p1, "ci"    # Lcom/android/server/LockSettingsService$CredentialInfo;

    .prologue
    const/4 v5, 0x1

    .line 766
    const/4 v1, 0x0

    .line 767
    .local v1, "result":Z
    iget-boolean v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v2, :cond_1

    .line 768
    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    if-ne v2, v5, :cond_1

    .line 769
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 770
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "CredentialInfo"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$CredentialInfo;->dump()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 773
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "encodedCredential":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 775
    const-string/jumbo v2, "Migration - Verified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 776
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-static {v2, v0, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->-wrap1(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 777
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isLocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    const-string/jumbo v2, "Migration - Unexpected condition... reset keystore..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 779
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 780
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-static {v2, v0, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->-wrap1(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 782
    :cond_0
    const-wide/16 v2, 0x1

    iget v4, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V

    .line 783
    const/4 v1, 0x1

    .line 787
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Result of lost data recovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 789
    .end local v0    # "encodedCredential":Ljava/lang/String;
    :cond_1
    return v1

    .line 785
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "Migration - Unverified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doSelfRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;Lcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    .locals 5
    .param p1, "ci"    # Lcom/android/server/LockSettingsService$CredentialInfo;
    .param p2, "keystoreUtil"    # Lcom/android/server/LockSettingsService$IKeystoreUtil;

    .prologue
    .line 848
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 849
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "CredentialInfo"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$CredentialInfo;->dump()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 851
    const/4 v0, 0x0

    .line 852
    .local v0, "response":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    const/4 v1, 0x0

    .line 854
    .local v1, "result":Z
    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->isKeyMigrationRequired(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 855
    iget-boolean v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v2, :cond_2

    .line 856
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardKeyMigration(Ljava/lang/String;I)Z

    move-result v1

    .line 873
    .end local v0    # "response":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    .end local v1    # "result":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 874
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->doExtraAdjustment(Lcom/android/server/LockSettingsService$CredentialInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    const-wide/16 v2, 0x1

    iget v4, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V

    .line 876
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->DONE:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    .line 880
    :cond_0
    if-nez v0, :cond_1

    .line 881
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->ERROR:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    .line 882
    :cond_1
    return-object v0

    .line 858
    .restart local v0    # "response":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    .restart local v1    # "result":Z
    :cond_2
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardHashMigration(Ljava/lang/String;I)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 860
    .local v1, "result":Z
    :cond_3
    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->isRecoveryRequired(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 861
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->doLostVersionRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 862
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->DONE:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    .local v0, "response":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    goto :goto_0

    .line 863
    .local v0, "response":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    :cond_4
    iget-boolean v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v2, :cond_5

    .line 864
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardKeyAdjustment(Ljava/lang/String;I)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 866
    .local v1, "result":Z
    :cond_5
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardHashAdjustment(Ljava/lang/String;I)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 870
    .local v1, "result":Z
    :cond_6
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->OK:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    .local v0, "response":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    goto :goto_0
.end method

.method private doVerifyBackupPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3296
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3298
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, p5}, Lcom/android/server/LockSettingsStorage;->readBackupPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v3

    .line 3301
    .local v3, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    new-instance v8, Lcom/android/server/LockSettingsService$11;

    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$11;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v1, p0

    move v2, p5

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .line 3299
    invoke-direct/range {v1 .. v8}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 3326
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 3327
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v1, :cond_0

    .line 3328
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v4

    invoke-virtual {v1, p5, v2, v4}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    .line 3331
    :cond_0
    return-object v0
.end method

.method private doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2549
    new-instance v10, Lcom/android/server/LockSettingsService$8;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$8;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p6

    move-object v5, p2

    move-object v6, p1

    move v7, p3

    move-wide/from16 v8, p4

    .line 2548
    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 2575
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 2576
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_0

    .line 2577
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v5

    move/from16 v0, p6

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    .line 2580
    :cond_0
    return-object v2
.end method

.method private doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 2511
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2513
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Password can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2516
    :cond_0
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 2517
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "password"

    const/4 v3, 0x0

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    const-string/jumbo v1, "hasChallenge"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string/jumbo v1, "challenge"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string/jumbo v1, "userId"

    const/4 v3, 0x6

    aput-object v1, v0, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 2519
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2521
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/LockSettingsService$7;

    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$7;-><init>(Lcom/android/server/LockSettingsService;)V

    invoke-direct {p0, v0, p5, v1}, Lcom/android/server/LockSettingsService;->verifyKnoxCredential(Ljava/lang/String;ILcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    .line 2538
    .local v7, "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 2539
    return-object v7

    .line 2542
    .end local v7    # "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p5}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v2

    .local v2, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    .line 2543
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2399
    if-eqz p2, :cond_2

    iget-boolean v11, p2, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    .line 2402
    .local v11, "shouldReEnrollBaseZero":Z
    :goto_0
    if-eqz v11, :cond_3

    .line 2403
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2410
    .local v6, "patternToVerify":Ljava/lang/String;
    :goto_1
    new-instance v10, Lcom/android/server/LockSettingsService$6;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$6;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p6

    move-object v5, p2

    move v7, p3

    move-wide/from16 v8, p4

    .line 2408
    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 2437
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz v11, :cond_0

    .line 2439
    move/from16 v0, p6

    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/LockSettingsService;->setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2443
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 2444
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_1

    .line 2445
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v5

    move/from16 v0, p6

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    .line 2449
    :cond_1
    return-object v2

    .line 2399
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v6    # "patternToVerify":Ljava/lang/String;
    .end local v11    # "shouldReEnrollBaseZero":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 2405
    .restart local v11    # "shouldReEnrollBaseZero":Z
    :cond_3
    move-object v6, p1

    .restart local v6    # "patternToVerify":Ljava/lang/String;
    goto :goto_1
.end method

.method private doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 2362
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pattern can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2367
    :cond_0
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 2368
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "pattern"

    const/4 v3, 0x0

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    const-string/jumbo v1, "hasChallenge"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string/jumbo v1, "challenge"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string/jumbo v1, "userId"

    const/4 v3, 0x6

    aput-object v1, v0, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 2370
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2372
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/LockSettingsService$5;

    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$5;-><init>(Lcom/android/server/LockSettingsService;)V

    invoke-direct {p0, v0, p5, v1}, Lcom/android/server/LockSettingsService;->verifyKnoxCredential(Ljava/lang/String;ILcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    .line 2389
    .local v7, "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 2390
    return-object v7

    .line 2393
    .end local v7    # "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p5}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v2

    .local v2, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    .line 2394
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private doVerifyRecoveryPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3205
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3207
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, p5}, Lcom/android/server/LockSettingsStorage;->readRecoveryPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v3

    .line 3210
    .local v3, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    new-instance v8, Lcom/android/server/LockSettingsService$10;

    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$10;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v1, p0

    move v2, p5

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .line 3208
    invoke-direct/range {v1 .. v8}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 3232
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    return-object v0
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2116
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2117
    if-nez p2, :cond_0

    .line 2118
    const/4 v0, 0x0

    .line 2120
    :goto_0
    if-nez p3, :cond_1

    .line 2121
    const/4 v3, 0x0

    .line 2123
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-interface {v4, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .line 2126
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    .line 2127
    return-object v5

    .line 2119
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "enrolledCredentialBytes":[B
    goto :goto_0

    .line 2122
    .end local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .local v3, "toEnrollBytes":[B
    goto :goto_1

    .line 2131
    .end local v3    # "toEnrollBytes":[B
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/LockSettingsService;->mEnrolledTime:J

    .line 2132
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v4

    iput v4, p0, Lcom/android/server/LockSettingsService;->mEnrolledResponseCode:I

    .line 2137
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    const v5, 0x61000

    if-ne v4, v5, :cond_3

    .line 2138
    invoke-static {p4}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v4

    .line 2137
    if-eqz v4, :cond_3

    .line 2139
    const-string/jumbo v4, "LockSettingsServiceKeystore"

    const-string/jumbo v5, "mdfpp keystore migrate start for fingerprint"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    const/4 v4, 0x1

    invoke-direct {p0, p3, p4, v4}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    .line 2144
    :cond_3
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 2145
    .local v1, "hash":[B
    if-eqz v1, :cond_4

    .line 2146
    invoke-direct {p0, p3, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 2151
    :goto_2
    return-object v1

    .line 2149
    :cond_4
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private enrollCredentialBackupType([BLjava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3337
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3338
    if-nez p2, :cond_0

    .line 3339
    const/4 v0, 0x0

    .line 3341
    :goto_0
    if-nez p3, :cond_1

    .line 3342
    const/4 v3, 0x0

    .line 3344
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-interface {v4, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .line 3347
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    .line 3348
    return-object v5

    .line 3340
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "enrolledCredentialBytes":[B
    goto :goto_0

    .line 3343
    .end local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .local v3, "toEnrollBytes":[B
    goto :goto_1

    .line 3351
    .end local v3    # "toEnrollBytes":[B
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_2
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 3352
    .local v1, "hash":[B
    if-nez v1, :cond_3

    .line 3354
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    :cond_3
    return-object v1
.end method

.method private enrollKnoxCredential(Ljava/lang/String;II)V
    .locals 7
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 945
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 946
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "credential"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string/jumbo v3, "userId"

    aput-object v3, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "lockType"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 947
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 948
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 950
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 951
    const-string/jumbo v2, "Enroll : Empty credential..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 983
    :cond_1
    :goto_0
    return-void

    .line 952
    :cond_2
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSdpSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 953
    const-string/jumbo v2, "Enroll : SDP supported..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 954
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkCMKExists(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 955
    const/4 v0, 0x0

    .line 956
    .local v0, "encodedCredential":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 957
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_1

    .line 958
    if-ne p3, v5, :cond_3

    .line 959
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->onPatternChange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    .end local v0    # "encodedCredential":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_1

    .line 966
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    invoke-static {v2, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->-wrap1(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    goto :goto_0

    .line 960
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    :cond_3
    if-ne p3, v6, :cond_4

    .line 961
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->onPasswordChange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "encodedCredential":Ljava/lang/String;
    goto :goto_1

    .line 963
    .local v0, "encodedCredential":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Enroll : Unknown lock type... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 969
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_5
    const-string/jumbo v2, "Enroll : CMK not found... Unexpected condition..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 972
    :cond_6
    const-string/jumbo v2, "Enroll : SDP not supported..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 974
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->storeHash(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 975
    const-string/jumbo v2, "Enroll : Stored hashed credential..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 976
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isLocked(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 977
    const-string/jumbo v2, "Enroll : Keystore is locked... Reset keystore due to no choice"

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 978
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 980
    :cond_7
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    invoke-static {v2, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->-wrap1(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private fixateNewestUserKeyAuth(I)V
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2282
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 2283
    .local v2, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2285
    .local v0, "callingId":J
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->fixateNewestUserKeyAuth(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2287
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2281
    return-void

    .line 2286
    :catchall_0
    move-exception v3

    .line 2287
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2286
    throw v3
.end method

.method private getCurrentHandle(I)[B
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1810
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->getStoredCredentialType(I)I

    move-result v2

    .line 1811
    .local v2, "currentHandleType":I
    packed-switch v2, :pswitch_data_0

    .line 1826
    const/4 v1, 0x0

    .line 1831
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_0

    .line 1832
    const-string/jumbo v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stored handle type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] but no handle available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_0
    return-object v1

    .line 1813
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 1814
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    .line 1815
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 1816
    .end local v1    # "currentHandle":[B
    :cond_1
    const/4 v1, 0x0

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 1819
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 1820
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2

    .line 1821
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 1822
    .end local v1    # "currentHandle":[B
    :cond_2
    const/4 v1, 0x0

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 1811
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentHandleBackupType(II)[B
    .locals 5
    .param p1, "currentHandleType"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3460
    packed-switch p1, :pswitch_data_0

    .line 3469
    const/4 v1, 0x0

    .line 3474
    :goto_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-nez v1, :cond_0

    .line 3475
    const-string/jumbo v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stored handle Backup type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] but no handle available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    :cond_0
    return-object v1

    .line 3462
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readBackupPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 3463
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    .line 3464
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 3465
    .end local v1    # "currentHandle":[B
    :cond_1
    const/4 v1, 0x0

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 3460
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    .locals 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 1720
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v7, p1}, Lcom/android/server/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v6

    .line 1721
    .local v6, "storedData":[B
    if-nez v6, :cond_0

    .line 1722
    new-instance v7, Ljava/io/FileNotFoundException;

    const-string/jumbo v8, "Child profile lock file not found"

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1724
    :cond_0
    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 1726
    .local v4, "iv":[B
    array-length v7, v6

    .line 1725
    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 1728
    .local v3, "encryptedPassword":[B
    const-string/jumbo v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 1729
    .local v5, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v5, v9}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1731
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profile_key_name_decrypt_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1730
    invoke-virtual {v5, v7, v9}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    .line 1733
    .local v1, "decryptionKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v7, "AES/GCM/NoPadding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1736
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v1, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1737
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 1738
    .local v2, "decryptionResult":[B
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v7
.end method

.method private getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "encodedCredential":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 527
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_0

    .line 528
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/pm/PersonaManagerService;->getEncodedPassword(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 530
    .end local v0    # "encodedCredential":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 3100
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_0

    .line 3101
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 3105
    :cond_0
    :try_start_1
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3106
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 3107
    new-instance v1, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3108
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 3109
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 3112
    :cond_1
    :try_start_2
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Unable to acquire GateKeeperService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 3113
    return-object v3

    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getKeyType(I)I
    .locals 4
    .param p1, "lockType"    # I

    .prologue
    .line 487
    const/4 v0, -0x1

    .line 488
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 500
    :goto_0
    const-string/jumbo v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKeyType :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return v0

    .line 491
    :pswitch_0
    const/4 v0, 0x1

    .line 492
    goto :goto_0

    .line 495
    :pswitch_1
    const/4 v0, 0x3

    .line 496
    goto :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getKnoxRecoveryVersion(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, "ret":I
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    .line 567
    const/16 v2, 0xc8

    if-gt p1, v2, :cond_0

    .line 569
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const-string/jumbo v3, "lockscreen.knox_recovery_version"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V

    .line 576
    :goto_0
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recovery version for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 579
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return v0

    .line 573
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3083
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3084
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3085
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 3087
    :cond_0
    return-object v2
.end method

.method private getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    .prologue
    .line 189
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method private getStoredHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->getStoredHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method private getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method private getVerificationType(II)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 505
    const/4 v1, 0x0

    .line 506
    .local v1, "verificationType":I
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkCMKExists(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 507
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    const/4 v1, 0x1

    .line 521
    :cond_0
    :goto_0
    return v1

    .line 510
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 513
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 514
    .local v0, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-nez v0, :cond_3

    .line 515
    const/4 v1, 0x4

    goto :goto_0

    .line 516
    :cond_3
    iget v2, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v2, :cond_4

    .line 517
    const/16 v1, 0x8

    goto :goto_0

    .line 518
    :cond_4
    iget v2, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 519
    const/16 v1, 0x10

    goto :goto_0
.end method

.method private haveKnoxPassword(II)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 1610
    const/4 v1, 0x0

    .line 1611
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 1613
    .local v2, "sdpEnabled":Z
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isKeyMigrationRequired(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1614
    const/4 v1, 0x1

    .line 1640
    .end local v1    # "result":Z
    .end local v2    # "sdpEnabled":Z
    :goto_0
    return v1

    .line 1616
    .restart local v1    # "result":Z
    .restart local v2    # "sdpEnabled":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 1618
    .local v0, "opService":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/server/pm/PersonaManagerService;>;"
    new-instance v3, Lcom/android/server/LockSettingsService$-boolean_haveKnoxPassword_int_userId_int_lockType_LambdaImpl0;

    invoke-direct {v3, p1}, Lcom/android/server/LockSettingsService$-boolean_haveKnoxPassword_int_userId_int_lockType_LambdaImpl0;-><init>(I)V

    .line 1617
    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    .line 1627
    new-instance v4, Lcom/android/server/LockSettingsService$-boolean_haveKnoxPassword_int_userId_int_lockType_LambdaImpl1;

    invoke-direct {v4}, Lcom/android/server/LockSettingsService$-boolean_haveKnoxPassword_int_userId_int_lockType_LambdaImpl1;-><init>()V

    .line 1617
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    .line 1628
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1617
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1630
    .local v2, "sdpEnabled":Z
    if-eqz v2, :cond_1

    .line 1631
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkCMKExists(I)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 1632
    .local v1, "result":Z
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 1633
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 1634
    .local v1, "result":Z
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 1635
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 1637
    .local v1, "result":Z
    :cond_3
    const-string/jumbo v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "havePassword :: Wrong condition... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isKeyMigrationRequired(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 793
    const/4 v1, 0x0

    .line 795
    .local v1, "result":Z
    :try_start_0
    invoke-static {p1}, Landroid/security/KeyStore;->isNeedMigration(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 799
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 796
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isKnoxUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "ret":Z
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    .line 198
    const/16 v2, 0xc8

    if-gt p1, v2, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    .line 200
    .local v0, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v1

    .line 203
    .end local v0    # "pms":Lcom/android/server/pm/PersonaManagerService;
    .end local v1    # "ret":Z
    :cond_0
    return v1
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    .line 1873
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isManagedProfileWithUnifiedLock(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1868
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1869
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1868
    :cond_0
    :goto_0
    return v0

    .line 1869
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isRecoveryRequired(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 753
    const/4 v1, 0x0

    .line 754
    .local v1, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 756
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getKnoxRecoveryVersion(I)I

    move-result v0

    .line 757
    .local v0, "currentVersion":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 758
    const/4 v1, 0x1

    .line 761
    .end local v0    # "currentVersion":I
    :cond_0
    return v1
.end method

.method private isSdpSupported()Z
    .locals 1

    .prologue
    .line 478
    sget-boolean v0, Lcom/android/server/LockSettingsService;->DEVICE_SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    .line 480
    const/4 v0, 0x1

    .line 478
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSharedDeviceEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2224
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "shared_device_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2225
    .local v0, "sd_status":I
    if-eq v0, v4, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2226
    :cond_0
    return v4

    .line 2228
    :cond_1
    return v3
.end method

.method private maybeShowEncryptionNotifications()V
    .locals 7

    .prologue
    .line 1170
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 1171
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1172
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1173
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1174
    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1175
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1176
    invoke-direct {p0, v3}, Lcom/android/server/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;)V

    .line 1171
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1178
    :cond_1
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1179
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    .line 1180
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v5

    .line 1179
    if-eqz v5, :cond_0

    .line 1181
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1184
    invoke-direct {p0, v3}, Lcom/android/server/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    goto :goto_1

    .line 1169
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    :cond_2
    return-void
.end method

.method private migrateMDFPPKeystore(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3986
    const-string/jumbo v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "this model was mdfpp keystore"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    if-nez p2, :cond_1

    .line 3988
    const-string/jumbo v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "mdfpp keystore is password try MdfppMigrateKeystore"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    invoke-interface {p5, p3}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v4}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3990
    invoke-interface {p5, p3, v3, p1}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3991
    if-nez p4, :cond_5

    .line 3992
    const-string/jumbo v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "hasn\'t challenge"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3993
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    .line 3996
    :cond_0
    const-string/jumbo v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "password value is wrong"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    .line 3999
    :cond_1
    iget v1, p2, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v1, :cond_4

    .line 4000
    invoke-interface {p5, p3, p1}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 4001
    .local v0, "hash":[B
    const-string/jumbo v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "mdfpp keystore is pattern try MdfppMigrateKeystore"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    iget-object v1, p2, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4003
    invoke-interface {p5, p3}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v4}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4004
    const-string/jumbo v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "MdfppMigrateKeystore failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    .line 4007
    :cond_2
    invoke-interface {p5, p3, v3, p1}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4008
    if-nez p4, :cond_5

    .line 4009
    const-string/jumbo v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "hasn\'t challenge"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    .line 4013
    :cond_3
    const-string/jumbo v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "pattern value is wrong"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    .line 4017
    .end local v0    # "hash":[B
    :cond_4
    const-string/jumbo v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "this case would not happened"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    :cond_5
    return-object v3
.end method

.method private migrateMDFPPKeystore(Ljava/lang/String;IZ)Z
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "isFingerprint"    # Z

    .prologue
    .line 4024
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 4025
    .local v0, "ks":Landroid/security/KeyStore;
    const/4 v5, 0x1

    .line 4027
    .local v5, "result":Z
    const-string/jumbo v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "call MDFPPMigrateKeystore with userHandle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 4030
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 4031
    .local v1, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4032
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v6, p2}, Landroid/security/KeyStore;->onUserAddedMDFPP(II)V

    .line 4033
    const-string/jumbo v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onUserAddedMDFPP for userId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "with parentId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4037
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 4038
    .restart local v1    # "pi":Landroid/content/pm/UserInfo;
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 4039
    .local v3, "profileUid":I
    const-string/jumbo v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profileUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    invoke-virtual {v0, v3, p1, p3}, Landroid/security/KeyStore;->migrateMDFPPKeystore(ILjava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4042
    const-string/jumbo v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MdfppMigrateKeystore failed with profileUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4044
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 4049
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "profileUid":I
    :cond_4
    return v5
.end method

.method private migrateOldData()V
    .locals 34

    .prologue
    .line 1343
    :try_start_0
    const-string/jumbo v30, "migrated"

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_2

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1345
    .local v10, "cr":Landroid/content/ContentResolver;
    sget-object v31, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    const/16 v30, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    :goto_0
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_1

    aget-object v28, v31, v30

    .line 1346
    .local v28, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-static {v10, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1347
    .local v29, "value":Ljava/lang/String;
    if-eqz v29, :cond_0

    .line 1348
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1345
    :cond_0
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 1352
    .end local v28    # "validSetting":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v30, "migrated"

    const-string/jumbo v31, "true"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1353
    const-string/jumbo v30, "LockSettingsService"

    const-string/jumbo v31, "Migrated lock settings to new location"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    .end local v10    # "cr":Landroid/content/ContentResolver;
    :cond_2
    const-string/jumbo v30, "migrated_user_specific"

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_9

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1359
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v27

    .line 1360
    .local v27, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v21, 0x0

    .local v21, "user":I
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    .line 1362
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    .line 1363
    .local v25, "userId":I
    const-string/jumbo v6, "lock_screen_owner_info"

    .line 1364
    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v30, "lock_screen_owner_info"

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-static {v10, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 1365
    .local v16, "ownerInfo":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 1366
    const-string/jumbo v30, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1367
    const-string/jumbo v30, "lock_screen_owner_info"

    const-string/jumbo v31, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v25

    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1373
    :cond_3
    const-string/jumbo v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1376
    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v30, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-static {v10, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 1377
    .local v15, "ivalue":I
    if-eqz v15, :cond_5

    const/4 v12, 0x1

    .line 1378
    .local v12, "enabled":Z
    :goto_2
    const-string/jumbo v31, "lock_screen_owner_info_enabled"

    if-eqz v12, :cond_6

    const/16 v30, 0x1

    :goto_3
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1385
    .end local v12    # "enabled":Z
    .end local v15    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string/jumbo v30, "lock_screen_owner_info_enabled"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v25

    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1360
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 1377
    .restart local v15    # "ivalue":I
    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "enabled":Z
    goto :goto_2

    .line 1378
    :cond_6
    const/16 v30, 0x0

    goto :goto_3

    .line 1379
    .end local v12    # "enabled":Z
    .end local v15    # "ivalue":I
    :catch_0
    move-exception v11

    .line 1381
    .local v11, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_4

    .line 1382
    const-string/jumbo v30, "lock_screen_owner_info_enabled"

    const-wide/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 1485
    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v16    # "ownerInfo":Ljava/lang/String;
    .end local v21    # "user":I
    .end local v25    # "userId":I
    .end local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v17

    .line 1486
    .local v17, "re":Landroid/os/RemoteException;
    const-string/jumbo v30, "LockSettingsService"

    const-string/jumbo v31, "Unable to migrate old data"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1339
    .end local v17    # "re":Landroid/os/RemoteException;
    :cond_7
    return-void

    .line 1388
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    .restart local v21    # "user":I
    .restart local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string/jumbo v30, "migrated_user_specific"

    const-string/jumbo v31, "true"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1389
    const-string/jumbo v30, "LockSettingsService"

    const-string/jumbo v31, "Migrated per-user lock settings to new location"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v21    # "user":I
    .end local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    const-string/jumbo v30, "migrated_biometric_weak"

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_c

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v27

    .line 1395
    .restart local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v13, v0, :cond_b

    .line 1396
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    .line 1397
    .restart local v25    # "userId":I
    const-string/jumbo v30, "lockscreen.password_type"

    .line 1398
    const-wide/16 v32, 0x0

    .line 1397
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .line 1400
    .local v22, "type":J
    const-string/jumbo v30, "lockscreen.password_type_alternate"

    .line 1401
    const-wide/16 v32, 0x0

    .line 1400
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    .line 1403
    .local v8, "alternateType":J
    const-wide/32 v30, 0x8000

    cmp-long v30, v22, v30

    if-nez v30, :cond_a

    .line 1404
    const-string/jumbo v30, "lockscreen.password_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v25

    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1408
    :cond_a
    const-string/jumbo v30, "lockscreen.password_type_alternate"

    .line 1409
    const-wide/16 v32, 0x0

    .line 1408
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1395
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1412
    .end local v8    # "alternateType":J
    .end local v22    # "type":J
    .end local v25    # "userId":I
    :cond_b
    const-string/jumbo v30, "migrated_biometric_weak"

    const-string/jumbo v31, "true"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1413
    const-string/jumbo v30, "LockSettingsService"

    const-string/jumbo v31, "Migrated biometric weak to use the fallback instead"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    .end local v13    # "i":I
    .end local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    const-string/jumbo v30, "migrated_lockscreen_disabled"

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_11

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v27

    .line 1421
    .restart local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v24

    .line 1422
    .local v24, "userCount":I
    const/16 v20, 0x0

    .line 1423
    .local v20, "switchableUsers":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    move/from16 v0, v24

    if-ge v13, v0, :cond_e

    .line 1424
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v30

    if-eqz v30, :cond_d

    .line 1425
    add-int/lit8 v20, v20, 0x1

    .line 1423
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1429
    :cond_e
    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-le v0, v1, :cond_10

    .line 1430
    const/4 v13, 0x0

    :goto_7
    move/from16 v0, v24

    if-ge v13, v0, :cond_10

    .line 1431
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v30

    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1433
    .local v14, "id":I
    const-string/jumbo v30, "lockscreen.disabled"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 1434
    const-string/jumbo v30, "lockscreen.disabled"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1430
    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1439
    .end local v14    # "id":I
    :cond_10
    const-string/jumbo v30, "migrated_lockscreen_disabled"

    const-string/jumbo v31, "true"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1440
    const-string/jumbo v30, "LockSettingsService"

    const-string/jumbo v31, "Migrated lockscreen disabled flag"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    .end local v13    # "i":I
    .end local v20    # "switchableUsers":I
    .end local v24    # "userCount":I
    .end local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_11
    const-string/jumbo v30, "migrated_fingerprint_to_biometric"

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_14

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v27

    .line 1446
    .restart local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_8
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v13, v0, :cond_13

    .line 1447
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    .line 1448
    .restart local v25    # "userId":I
    const-string/jumbo v30, "lockscreen.enabled_fingerprint"

    .line 1449
    const-wide/16 v32, 0x0

    .line 1448
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v30

    .line 1450
    const-wide/16 v32, 0x0

    .line 1448
    cmp-long v30, v30, v32

    if-eqz v30, :cond_12

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v30, v0

    .line 1452
    const/16 v31, 0x1

    .line 1451
    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(II)V

    .line 1453
    const-string/jumbo v30, "lockscreen.enabled_fingerprint"

    .line 1454
    const-wide/16 v32, 0x0

    .line 1453
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1446
    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 1457
    .end local v25    # "userId":I
    :cond_13
    const-string/jumbo v30, "migrated_fingerprint_to_biometric"

    const-string/jumbo v31, "true"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1458
    const-string/jumbo v30, "LockSettingsService"

    const-string/jumbo v31, "Migrated fingerprint to biometric"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    .end local v13    # "i":I
    .end local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v27

    .line 1463
    .restart local v27    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_9
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v13, v0, :cond_7

    .line 1464
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/UserInfo;

    .line 1465
    .local v26, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v30

    if-eqz v30, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v30

    if-eqz v30, :cond_15

    .line 1472
    const-string/jumbo v30, "lockscreen.password_type"

    .line 1473
    const-wide/16 v32, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v31, v0

    .line 1472
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v18

    .line 1474
    .local v18, "quality":J
    const-wide/16 v30, 0x0

    cmp-long v30, v18, v30

    if-nez v30, :cond_16

    .line 1476
    const-string/jumbo v30, "LockSettingsService"

    const-string/jumbo v31, "Migrated tied profile lock type"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const-string/jumbo v30, "lockscreen.password_type"

    .line 1478
    const-wide/32 v32, 0x50000

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v31, v0

    .line 1477
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1463
    .end local v18    # "quality":J
    :cond_15
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 1479
    .restart local v18    # "quality":J
    :cond_16
    const-wide/32 v30, 0x50000

    cmp-long v30, v18, v30

    if-eqz v30, :cond_15

    .line 1481
    const-string/jumbo v30, "LockSettingsService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Invalid tied profile lock type: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_a
.end method

.method private notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2688
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 2691
    .local v0, "quality":I
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/LockSettingsService$9;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/LockSettingsService$9;-><init>(Lcom/android/server/LockSettingsService;Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2687
    return-void
.end method

.method private notifyPasswordChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/LockSettingsService$-void_notifyPasswordChanged_int_userId_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/LockSettingsService$-void_notifyPasswordChanged_int_userId_LambdaImpl0;-><init>(Lcom/android/server/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2732
    return-void
.end method

.method private onUserLockChanged(I)V
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1839
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1840
    return-void

    .line 1842
    :cond_0
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v6, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v6, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    .line 1843
    :goto_0
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 1844
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1845
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_5

    .line 1846
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1847
    .local v3, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1848
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1849
    .local v2, "managedUserId":I
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1845
    .end local v2    # "managedUserId":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1842
    .end local v0    # "i":I
    .end local v3    # "profile":Landroid/content/pm/UserInfo;
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "size":I
    :cond_2
    const/4 v1, 0x1

    .local v1, "isSecure":Z
    goto :goto_0

    .line 1852
    .end local v1    # "isSecure":Z
    .restart local v0    # "i":I
    .restart local v2    # "managedUserId":I
    .restart local v3    # "profile":Landroid/content/pm/UserInfo;
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "size":I
    :cond_3
    if-eqz v1, :cond_4

    .line 1853
    invoke-virtual {p0, v2, v7}, Lcom/android/server/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    goto :goto_2

    .line 1855
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    .line 1856
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1857
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 1858
    invoke-direct {p0, v7, v2}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 1859
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1860
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v6, v2}, Lcom/android/server/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1861
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_2

    .line 1838
    .end local v2    # "managedUserId":I
    .end local v3    # "profile":Landroid/content/pm/UserInfo;
    :cond_5
    return-void
.end method

.method private protect(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, "protectedCredential":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 536
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 538
    .local v0, "credentialBytes":[B
    new-instance v1, Ljava/lang/String;

    .end local v1    # "protectedCredential":Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 539
    .local v1, "protectedCredential":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->zeroOut([B)V

    .line 541
    .end local v0    # "credentialBytes":[B
    .end local v1    # "protectedCredential":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private removeKeystoreProfileKey(I)V
    .locals 5
    .param p1, "targetUserId"    # I

    .prologue
    .line 3003
    :try_start_0
    const-string/jumbo v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 3004
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 3005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_encrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 3006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_decrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3000
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    :goto_0
    return-void

    .line 3008
    :catch_0
    move-exception v0

    .line 3010
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to remove keystore profile key for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeUser(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "unknownUser"    # Z

    .prologue
    .line 2978
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    .line 2979
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStrongAuth;->removeUser(I)V

    .line 2981
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 2982
    .local v2, "ks":Landroid/security/KeyStore;
    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 2985
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 2986
    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_0

    .line 2987
    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2992
    .end local v1    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 2993
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2996
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 2977
    :cond_2
    return-void

    .line 2989
    :catch_0
    move-exception v0

    .line 2990
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "unable to clear GK secure user id"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2994
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2995
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    .line 2992
    if-eqz v3, :cond_2

    goto :goto_1
.end method

.method private saveSDPassword(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2156
    const/4 v2, 0x0

    .line 2159
    .local v2, "result":Z
    const-string/jumbo v4, "enterprise_shared_device_policy"

    .line 2158
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 2157
    invoke-static {v4}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    move-result-object v1

    .line 2160
    .local v1, "mService":Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "loginUserName"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2161
    .local v3, "userName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2162
    :cond_0
    return v2

    .line 2164
    :cond_1
    if-eqz v1, :cond_2

    .line 2166
    :try_start_0
    invoke-interface {v1, p1, v3}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;->saveSDPasswordInTIMA(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_3

    .line 2167
    const/4 v2, 0x0

    .line 2175
    :cond_2
    :goto_0
    return v2

    .line 2169
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 2171
    :catch_0
    move-exception v0

    .line 2172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private static secretFromCredential(Ljava/lang/String;)[B
    .locals 5
    .param p0, "credential"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2254
    :try_start_0
    const-string/jumbo v3, "SHA-512"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2256
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string/jumbo v3, "Android FBE credential hash"

    .line 2257
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2256
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 2259
    .local v2, "personalization":[B
    const/16 v3, 0x80

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 2260
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 2261
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 2262
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2263
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "personalization":[B
    :catch_0
    move-exception v1

    .line 2264
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1704
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1705
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    .line 1703
    return-void
.end method

.method private setKnoxRecoveryVersion(JI)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "userId"    # I

    .prologue
    .line 584
    const/16 v0, 0x64

    if-lt p3, v0, :cond_0

    .line 585
    const/16 v0, 0xc8

    if-gt p3, v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const-string/jumbo v1, "lockscreen.knox_recovery_version"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 588
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Recovery version for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " has been set as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 582
    :cond_0
    return-void
.end method

.method private setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1979
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 1980
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "password"

    const/4 v4, 0x0

    aput-object v1, v0, v4

    aput-object p1, v0, v3

    const-string/jumbo v1, "savedCredential"

    aput-object v1, v0, v6

    aput-object p2, v0, v11

    const-string/jumbo v1, "userId"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 1983
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    invoke-direct {p0, p1, p3, v6}, Lcom/android/server/LockSettingsService;->enrollKnoxCredential(Ljava/lang/String;II)V

    .line 1985
    return-void

    .line 1988
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v7

    .line 1989
    .local v7, "currentHandle":[B
    if-nez p1, :cond_3

    .line 1990
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    .line 1991
    :cond_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1992
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v5, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 1993
    invoke-direct {p0, v5, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 1994
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1995
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    .line 1996
    :cond_2
    invoke-direct {p0, v5, p3}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 1997
    return-void

    .line 2000
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2003
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 2021
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-direct {p0, v7, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v10

    .line 2022
    .local v10, "enrolledHandle":[B
    if-eqz v10, :cond_a

    .line 2024
    new-instance v2, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v2, v10, v3}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BI)V

    .line 2025
    .local v2, "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2027
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2026
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/LockSettingsService;->setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 2029
    :cond_5
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v10, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 2030
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2031
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2032
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    .line 2039
    :cond_6
    if-eqz v10, :cond_7

    .line 2040
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v0, :cond_7

    .line 2041
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/LockSettingsService$SdpHandler;->setPassword(Ljava/lang/String;I)V

    .line 2045
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-virtual {v0, p3, v11}, Lcom/android/server/LockSettingsService$SdpHandler;->removeKeyPair(II)V

    .line 2051
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->saveSharedDevicePassword(Ljava/lang/String;)V

    .line 1978
    return-void

    .line 2009
    .end local v2    # "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v10    # "enrolledHandle":[B
    .restart local p2    # "savedCredential":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2010
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Failed to decrypt child profile key"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2004
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 2005
    .local v8, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Child profile key not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2013
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :cond_8
    if-nez v7, :cond_4

    .line 2014
    if-eqz p2, :cond_9

    .line 2015
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Saved credential provided, but none stored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_9
    const/4 p2, 0x0

    .local p2, "savedCredential":Ljava/lang/String;
    goto :goto_0

    .line 2035
    .end local p2    # "savedCredential":Ljava/lang/String;
    .restart local v10    # "enrolledHandle":[B
    :cond_a
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "Failed to enroll password"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1892
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 1893
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "pattern"

    const/4 v4, 0x0

    aput-object v1, v0, v4

    aput-object p1, v0, v3

    const-string/jumbo v1, "savedCredential"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const-string/jumbo v1, "userId"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 1896
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1897
    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/LockSettingsService;->enrollKnoxCredential(Ljava/lang/String;II)V

    .line 1898
    return-void

    .line 1901
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v7

    .line 1903
    .local v7, "currentHandle":[B
    if-nez p1, :cond_3

    .line 1904
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    .line 1905
    :cond_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1906
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v5, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 1907
    invoke-direct {p0, v5, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 1908
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1909
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    .line 1910
    :cond_2
    invoke-direct {p0, v5, p3}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 1911
    return-void

    .line 1914
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1917
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 1937
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-direct {p0, v7, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v9

    .line 1938
    .local v9, "enrolledHandle":[B
    if-eqz v9, :cond_b

    .line 1940
    new-instance v2, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v2, v9, v3}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BI)V

    .line 1941
    .local v2, "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1943
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1942
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/LockSettingsService;->setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 1945
    :cond_5
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v9, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 1946
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1947
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1948
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    .line 1954
    :cond_6
    if-eqz v9, :cond_7

    .line 1955
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v0, :cond_7

    .line 1956
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/LockSettingsService$SdpHandler;->setPassword(Ljava/lang/String;I)V

    .line 1960
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->saveSharedDevicePassword(Ljava/lang/String;)V

    .line 1891
    return-void

    .line 1921
    .end local v2    # "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v9    # "enrolledHandle":[B
    .restart local p2    # "savedCredential":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1922
    .local v8, "e":Ljava/lang/Exception;
    instance-of v0, v8, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_8

    .line 1923
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Child profile key not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1925
    :cond_8
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Failed to decrypt child profile key"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1929
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_9
    if-nez v7, :cond_4

    .line 1930
    if-eqz p2, :cond_a

    .line 1931
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Saved credential provided, but none stored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_a
    const/4 p2, 0x0

    .local p2, "savedCredential":Ljava/lang/String;
    goto :goto_0

    .line 1951
    .end local p2    # "savedCredential":Ljava/lang/String;
    .restart local v9    # "enrolledHandle":[B
    :cond_b
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "Failed to enroll pattern"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1565
    sget-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    const-string/jumbo v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 1563
    :cond_0
    return-void
.end method

.method private setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "vcr"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2234
    if-nez p3, :cond_0

    .line 2235
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Null response verifying a credential we just set"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2237
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2238
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Non-OK response verifying a credential we just set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2239
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    .line 2238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2241
    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    .line 2242
    .local v0, "token":[B
    if-nez v0, :cond_2

    .line 2243
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2245
    :cond_2
    invoke-static {p2}, Lcom/android/server/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 2233
    return-void
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1215
    .local v6, "r":Landroid/content/res/Resources;
    const v0, 0x10405f9

    .line 1214
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1217
    .local v2, "title":Ljava/lang/CharSequence;
    const v0, 0x10405fa

    .line 1216
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1219
    .local v3, "message":Ljava/lang/CharSequence;
    const v0, 0x10405fb

    .line 1218
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1221
    .local v4, "detail":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/LockSettingsService;->ACTION_NULL:Landroid/content/Intent;

    const/4 v7, 0x0

    .line 1222
    const/high16 v8, 0x8000000

    .line 1221
    invoke-static {v0, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .local v5, "intent":Landroid/app/PendingIntent;
    move-object v0, p0

    move-object v1, p1

    .line 1224
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1212
    return-void
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "detail"    # Ljava/lang/CharSequence;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1232
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1234
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1235
    const v2, 0x10804cf

    .line 1234
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1236
    const-wide/16 v2, 0x0

    .line 1234
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1240
    const/4 v2, 0x2

    .line 1234
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1241
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 1242
    const v3, 0x106005a

    .line 1241
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 1234
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1249
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1228
    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v9, 0x0

    .line 1192
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1194
    .local v7, "r":Landroid/content/res/Resources;
    const v0, 0x10405f9

    .line 1193
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1196
    .local v2, "title":Ljava/lang/CharSequence;
    const v0, 0x10405fd

    .line 1195
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1198
    .local v3, "message":Ljava/lang/CharSequence;
    const v0, 0x10405fc

    .line 1197
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1200
    .local v4, "detail":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    .line 1201
    .local v6, "km":Landroid/app/KeyguardManager;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v6, v9, v9, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v8

    .line 1202
    .local v8, "unlockIntent":Landroid/content/Intent;
    if-nez v8, :cond_0

    .line 1203
    return-void

    .line 1205
    :cond_0
    const/high16 v0, 0x10800000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1206
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 1207
    const/high16 v9, 0x8000000

    .line 1206
    invoke-static {v0, v1, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .local v5, "intent":Landroid/app/PendingIntent;
    move-object v0, p0

    move-object v1, p1

    .line 1209
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1191
    return-void
.end method

.method private storeHash(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 718
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 719
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "credential"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string/jumbo v3, "userId"

    aput-object v3, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "lockType"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 721
    const/4 v1, 0x0

    .line 722
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 723
    .local v0, "hash":[B
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    const-string/jumbo v2, "Enroll :: Empty credential..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 739
    .end local v0    # "hash":[B
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 740
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Enroll :: Result of storing hash : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 741
    return v1

    .line 726
    .restart local v0    # "hash":[B
    :cond_1
    if-ne p3, v5, :cond_2

    .line 728
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 727
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 729
    .local v0, "hash":[B
    if-eqz v0, :cond_0

    .line 730
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    goto :goto_0

    .line 731
    .local v0, "hash":[B
    :cond_2
    if-ne p3, v6, :cond_3

    .line 732
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 733
    .local v0, "hash":[B
    if-eqz v0, :cond_0

    .line 734
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    goto :goto_0

    .line 736
    .local v0, "hash":[B
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Enroll :: Unknown lock type... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 739
    .end local v0    # "hash":[B
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private tieProfileLockToParent(ILjava/lang/String;)V
    .locals 18
    .param p1, "userId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2057
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 2061
    .local v10, "randomLockSeed":[B
    :try_start_0
    const-string/jumbo v12, "AES"

    invoke-static {v12}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v6

    .line 2062
    .local v6, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6, v12}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 2063
    invoke-virtual {v6}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 2065
    .local v11, "secretKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v12, "AndroidKeyStore"

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 2066
    .local v7, "keyStore":Ljava/security/KeyStore;
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 2068
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_encrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2069
    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v13, v11}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 2070
    new-instance v14, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    .line 2071
    const-string/jumbo v16, "GCM"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 2070
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    .line 2072
    const-string/jumbo v16, "NoPadding"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 2070
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v14

    .line 2067
    invoke-virtual {v7, v12, v13, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 2075
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_decrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2076
    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v13, v11}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 2077
    new-instance v14, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    .line 2078
    const-string/jumbo v16, "GCM"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 2077
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    .line 2079
    const-string/jumbo v16, "NoPadding"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 2077
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    .line 2080
    const/4 v15, 0x1

    .line 2077
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    .line 2081
    const/16 v15, 0x1e

    .line 2077
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v14

    .line 2074
    invoke-virtual {v7, v12, v13, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 2086
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_encrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 2085
    invoke-virtual {v7, v12, v13}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v8

    check-cast v8, Ljavax/crypto/SecretKey;

    .line 2090
    .local v8, "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v12, "AES/GCM/NoPadding"

    .line 2089
    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2092
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v12, 0x1

    invoke-virtual {v1, v12, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2093
    invoke-virtual {v1, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 2094
    .local v4, "encryptionResult":[B
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2100
    .local v5, "iv":[B
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2102
    .local v9, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    array-length v12, v5

    const/16 v13, 0xc

    if-eq v12, v13, :cond_0

    .line 2103
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Invalid iv length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2107
    :catch_0
    move-exception v2

    .line 2108
    .local v2, "e":Ljava/io/IOException;
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Failed to concatenate byte arrays"

    invoke-direct {v12, v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 2097
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "encryptionResult":[B
    .end local v5    # "iv":[B
    .end local v6    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v7    # "keyStore":Ljava/security/KeyStore;
    .end local v8    # "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    .end local v9    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "secretKey":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v3

    .line 2098
    .local v3, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Failed to encrypt key"

    invoke-direct {v12, v13, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 2105
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "encryptionResult":[B
    .restart local v5    # "iv":[B
    .restart local v6    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .restart local v7    # "keyStore":Ljava/security/KeyStore;
    .restart local v8    # "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    .restart local v9    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_0
    :try_start_2
    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2106
    invoke-virtual {v9, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2110
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/server/LockSettingsStorage;->writeChildProfileLock(I[B)V

    .line 2055
    return-void
.end method

.method private unlockChildProfile(I)V
    .locals 7
    .param p1, "profileHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1743
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v2

    .line 1744
    const-wide/16 v4, 0x0

    .line 1743
    const/4 v3, 0x0

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    :goto_0
    return-void

    .line 1748
    :catch_0
    move-exception v0

    .line 1749
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_0

    .line 1750
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Child profile key not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1752
    :cond_0
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Failed to decrypt child profile key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1710
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1711
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    .line 1708
    return-void
.end method

.method private unlockUser(I[B[B)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B

    .prologue
    .line 1759
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1760
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Lcom/android/server/LockSettingsService$4;

    invoke-direct {v3, p0, v2}, Lcom/android/server/LockSettingsService$4;-><init>(Lcom/android/server/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    .line 1779
    .local v3, "listener":Landroid/os/IProgressListener;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, p1, p2, p3, v3}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1785
    const-wide/16 v8, 0xf

    :try_start_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1790
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1791
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 1792
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "pi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1794
    .local v4, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1795
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1796
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v7

    .line 1794
    if-eqz v7, :cond_0

    .line 1797
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7}, Lcom/android/server/LockSettingsService;->unlockChildProfile(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1801
    .end local v4    # "pi":Landroid/content/pm/UserInfo;
    .end local v5    # "pi$iterator":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    .line 1802
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "LockSettingsService"

    const-string/jumbo v8, "Failed to unlock child profile"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1757
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void

    .line 1780
    :catch_1
    move-exception v0

    .line 1781
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 1786
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 1787
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 21
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2586
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2588
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 2591
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2592
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 2597
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p7

    .line 2598
    invoke-direct/range {v4 .. v9}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v16

    .line 2600
    .local v16, "ret":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-eqz v16, :cond_6

    .line 2601
    return-object v16

    .line 2604
    .end local v16    # "ret":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_3
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_6

    .line 2605
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v12

    .line 2609
    .local v12, "hash":[B
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    .line 2610
    .local v13, "matched":Z
    if-nez v13, :cond_4

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    const/16 v5, 0x48

    if-ne v4, v5, :cond_4

    .line 2611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashOriginal(Ljava/lang/String;I)[B

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    .line 2614
    :cond_4
    if-eqz v13, :cond_5

    .line 2615
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 2619
    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unlocking user with fake token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 2621
    .local v10, "fakeToken":[B
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v10, v10}, Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V

    .line 2624
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2625
    if-nez p4, :cond_6

    .line 2626
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 2627
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 2633
    .end local v10    # "fakeToken":[B
    :cond_5
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 2638
    .end local v12    # "hash":[B
    .end local v13    # "matched":Z
    :cond_6
    const/16 v17, 0x0

    .line 2639
    .local v17, "shouldReEnroll":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 2640
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p1

    move-wide/from16 v6, p5

    .line 2639
    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v11

    .line 2641
    .local v11, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v15

    .line 2642
    .local v15, "responseCode":I
    const/4 v4, 0x1

    if-ne v15, v4, :cond_9

    .line 2643
    new-instance v14, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v4

    invoke-direct {v14, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 2658
    .end local v17    # "shouldReEnroll":Z
    .local v14, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_c

    .line 2660
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 2661
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 2663
    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unlocking user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2664
    const-string/jumbo v6, " with token length "

    .line 2663
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2664
    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v6

    array-length v6, v6

    .line 2663
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v4

    invoke-static/range {p3 .. p3}, Lcom/android/server/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V

    .line 2667
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "trust"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/trust/TrustManager;

    .line 2670
    .local v19, "trustManager":Landroid/app/trust/TrustManager;
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 2672
    .end local v19    # "trustManager":Landroid/app/trust/TrustManager;
    :cond_7
    if-eqz v17, :cond_8

    .line 2673
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2682
    :cond_8
    :goto_1
    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/LockSettingsService;->mVerifyTimeout:I

    .line 2684
    return-object v14

    .line 2644
    .end local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v17    # "shouldReEnroll":Z
    :cond_9
    if-nez v15, :cond_b

    .line 2645
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v18

    .line 2646
    .local v18, "token":[B
    if-nez v18, :cond_a

    .line 2648
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    sget-object v14, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_0

    .line 2651
    .end local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_a
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v17

    .line 2652
    .local v17, "shouldReEnroll":Z
    new-instance v14, Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_0

    .line 2655
    .end local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v18    # "token":[B
    .local v17, "shouldReEnroll":Z
    :cond_b
    sget-object v14, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_0

    .line 2675
    .end local v17    # "shouldReEnroll":Z
    :cond_c
    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    goto :goto_1
.end method

.method private verifyCredentialBackupType(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3362
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3364
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 3375
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3376
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 3379
    :cond_2
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_4

    .line 3380
    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v11

    .line 3382
    .local v11, "hash":[B
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3383
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 3385
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3386
    if-nez p4, :cond_5

    .line 3387
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 3393
    :cond_3
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 3396
    .end local v11    # "hash":[B
    :cond_4
    if-eqz p2, :cond_5

    .line 3397
    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    :cond_5
    const/4 v14, 0x0

    .line 3402
    .local v14, "shouldReEnroll":Z
    if-eqz p4, :cond_a

    .line 3403
    const/16 v16, 0x0

    .line 3404
    .local v16, "token":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 3405
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p1

    move-wide/from16 v6, p5

    .line 3404
    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .line 3406
    .local v10, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v13

    .line 3407
    .local v13, "responseCode":I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_7

    .line 3408
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v15

    .line 3411
    .local v15, "time":I
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v12, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 3442
    .end local v14    # "shouldReEnroll":Z
    .end local v15    # "time":I
    .end local v16    # "token":[B
    .local v12, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_d

    .line 3444
    if-eqz v14, :cond_6

    .line 3445
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3453
    :cond_6
    :goto_1
    return-object v12

    .line 3412
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v14    # "shouldReEnroll":Z
    .restart local v16    # "token":[B
    :cond_7
    if-nez v13, :cond_9

    .line 3413
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v16

    .line 3414
    .local v16, "token":[B
    if-nez v16, :cond_8

    .line 3416
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 3419
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_8
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v14

    .line 3420
    .local v14, "shouldReEnroll":Z
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 3423
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v14, "shouldReEnroll":Z
    .local v16, "token":[B
    :cond_9
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 3426
    .end local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v13    # "responseCode":I
    .end local v16    # "token":[B
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 3427
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 3426
    move/from16 v0, p1

    invoke-interface {v4, v0, v5, v6}, Landroid/service/gatekeeper/IGateKeeperService;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .line 3428
    .restart local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v13

    .line 3429
    .restart local v13    # "responseCode":I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_b

    .line 3430
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v15

    .line 3433
    .restart local v15    # "time":I
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v12, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 3434
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v15    # "time":I
    :cond_b
    if-nez v13, :cond_c

    .line 3435
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v14

    .line 3436
    .local v14, "shouldReEnroll":Z
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 3438
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v14, "shouldReEnroll":Z
    :cond_c
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 3447
    .end local v14    # "shouldReEnroll":Z
    :cond_d
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 3448
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_6

    .line 3449
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/LockSettingsService;->requireStrongAuth(II)V

    goto :goto_1
.end method

.method private verifyKnoxCredential(Ljava/lang/String;ILcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 11
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "keystoreUtil"    # Lcom/android/server/LockSettingsService$IKeystoreUtil;

    .prologue
    const/4 v3, 0x0

    .line 886
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 887
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "credential"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string/jumbo v2, "userId"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 888
    const-string/jumbo v1, "Verification - Start!"

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 890
    const/4 v10, 0x0

    .line 891
    .local v10, "verifyResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 892
    const-string/jumbo v1, "Verification - Unacceptable credential..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 930
    .end local v10    # "verifyResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    .line 931
    sget-object v10, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 932
    :cond_1
    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_3

    .line 933
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 935
    .local v8, "token":J
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PersonaManagerService;->mountCeStorage(I)V

    .line 936
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 938
    .end local v8    # "token":J
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 940
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Verification - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 941
    return-object v10

    .line 894
    .restart local v10    # "verifyResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_4
    new-instance v0, Lcom/android/server/LockSettingsService$CredentialInfo;

    .line 896
    invoke-interface {p3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->getLockType()I

    move-result v3

    .line 897
    invoke-interface {p3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->getLockType()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/LockSettingsService;->getVerificationType(II)I

    move-result v4

    move-object v1, p0

    move v2, p2

    move-object v5, p1

    .line 894
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsService$CredentialInfo;-><init>(Lcom/android/server/LockSettingsService;IIILjava/lang/String;)V

    .line 899
    .local v0, "ci":Lcom/android/server/LockSettingsService$CredentialInfo;
    invoke-direct {p0, v0, p3}, Lcom/android/server/LockSettingsService;->doSelfRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;Lcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    move-result-object v7

    .line 901
    .local v7, "recoveryResponse":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    invoke-virtual {v7}, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->getResponseCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 926
    :pswitch_0
    const-string/jumbo v1, "Verification - Failed to recovery..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 903
    :pswitch_1
    iget-boolean v1, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v1, :cond_5

    .line 905
    iget-object v1, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 906
    .local v6, "encodedCredential":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 907
    sget-object v10, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 908
    .local v10, "verifyResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-static {v1, v6, v2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->-wrap0(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    goto :goto_0

    .line 912
    .end local v6    # "encodedCredential":Ljava/lang/String;
    .local v10, "verifyResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_5
    iget v1, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->verifType:I

    const/16 v2, 0x10

    if-ne v2, v1, :cond_6

    .line 913
    iget-object v1, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    iget v3, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->compareHash(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    sget-object v10, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 915
    .local v10, "verifyResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget-object v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->-wrap0(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 919
    .local v10, "verifyResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_6
    const-string/jumbo v1, "Verification - Unexpected condition..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 922
    :pswitch_2
    sget-object v10, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 923
    .local v10, "verifyResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    const-string/jumbo v1, "Verification - Verification and Recovery completed!"

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 901
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private verifyPasswordSharedDevice(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 2
    .param p1, "response"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2212
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSharedDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2213
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkSDPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2214
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "check password true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2221
    :cond_0
    :goto_0
    return-object p1

    .line 2217
    :cond_1
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "check password false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0
.end method

.method private zeroOut(Ljava/lang/String;)V
    .locals 0
    .param p1, "buff"    # Ljava/lang/String;

    .prologue
    .line 558
    if-eqz p1, :cond_0

    .line 559
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 560
    :cond_0
    const/4 p1, 0x0

    .line 557
    .local p1, "buff":Ljava/lang/String;
    return-void
.end method

.method private zeroOut([B)V
    .locals 2
    .param p1, "buff"    # [B

    .prologue
    const/4 v1, 0x0

    .line 552
    if-nez p1, :cond_0

    return-void

    .line 553
    :cond_0
    array-length v0, p1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 554
    const/4 p1, 0x0

    .line 551
    .local p1, "buff":[B
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_LockSettingsService_lambda$3(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2736
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2735
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2737
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(I)V

    .line 0
    return-void
.end method

.method public checkAppLockBackupPin(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3667
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3669
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3670
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockBackupkPinHash(I)[B

    move-result-object v2

    .line 3672
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 3673
    const/4 v3, 0x1

    return v3

    .line 3676
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 3677
    .local v1, "matched":Z
    return v1
.end method

.method public checkAppLockFingerprintPassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3681
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3683
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3684
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockFingerprintPasswordHash(I)[B

    move-result-object v2

    .line 3686
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 3687
    const/4 v3, 0x1

    return v3

    .line 3690
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 3692
    .local v1, "matched":Z
    return v1
.end method

.method public checkAppLockPassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3640
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3642
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3643
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPasswordHash(I)[B

    move-result-object v2

    .line 3645
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 3646
    const/4 v3, 0x1

    return v3

    .line 3649
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 3650
    .local v1, "matched":Z
    return v1
.end method

.method public checkAppLockPattern(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3654
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3655
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 3656
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPatternHash(I)[B

    move-result-object v2

    .line 3658
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 3659
    const/4 v3, 0x1

    return v3

    .line 3662
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 3663
    .local v1, "matched":Z
    return v1
.end method

.method public checkAppLockPin(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3626
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3628
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3629
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPinHash(I)[B

    move-result-object v2

    .line 3631
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 3632
    const/4 v3, 0x1

    return v3

    .line 3635
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 3636
    .local v1, "matched":Z
    return v1
.end method

.method public checkBackupPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3281
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyBackupPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 3282
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 3283
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "checkBackupPassword( RESPONSE_OK )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    :cond_0
    return-object v0
.end method

.method public checkCISPassword(ILjava/lang/String;ILandroid/os/IRemoteCallback;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "remoteCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3809
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3810
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 3811
    .local v1, "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    const/4 v3, -0x1

    .line 3812
    .local v3, "failcount":I
    if-eqz v1, :cond_0

    .line 3814
    :try_start_0
    invoke-interface {v1, p2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3827
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3828
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "result"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3830
    :try_start_1
    invoke-interface {p4, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3808
    :goto_0
    return-void

    .line 3815
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 3816
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.remotelock.CLIENT_WAKEUP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3817
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.permission.REMOTELOCK"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3819
    iput-object p4, p0, Lcom/android/server/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 3820
    iput p1, p0, Lcom/android/server/LockSettingsService;->mLockTypeForPasswordCheck:I

    .line 3821
    iput-object p2, p0, Lcom/android/server/LockSettingsService;->mPassword:Ljava/lang/String;

    .line 3822
    const-string/jumbo v5, "LockSettingsService"

    const-string/jumbo v6, "failed checkRemoteLockPassword callback!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3824
    return-void

    .line 3831
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v2

    .line 3832
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "LockSettingsService"

    const-string/jumbo v6, "failed sendResult callback!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkCarrierPassword(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3962
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3964
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3965
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readCarrierPasswordHash(I)[B

    move-result-object v2

    .line 3967
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 3968
    const/4 v3, 0x1

    return v3

    .line 3971
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 3974
    .local v1, "matched":Z
    if-nez v1, :cond_1

    array-length v3, v2

    const/16 v4, 0x48

    if-ne v3, v4, :cond_1

    .line 3975
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashOriginal(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 3977
    :cond_1
    return v1
.end method

.method public checkFMMPassword(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 3904
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3905
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 3906
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "password"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    const-string/jumbo v4, "userId"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 3908
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3909
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readFMMPasswordHash(I)[B

    move-result-object v2

    .line 3911
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 3912
    return v6

    .line 3915
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 3919
    .local v1, "matched":Z
    if-nez v1, :cond_1

    array-length v3, v2

    const/16 v4, 0x48

    if-ne v3, v4, :cond_1

    .line 3920
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashOriginal(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 3924
    :cond_1
    if-eqz v1, :cond_2

    .line 3925
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_2

    .line 3926
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v3, p2, v4, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    .line 3929
    :cond_2
    return v1
.end method

.method public checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2455
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2456
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2457
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 2459
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 2460
    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->verifyPasswordSharedDevice(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2463
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_2

    .line 2464
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2465
    new-instance v7, Lcom/samsung/android/security/SemSdCardEncryption;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 2466
    .local v7, "sse":Lcom/samsung/android/security/SemSdCardEncryption;
    invoke-virtual {v7, p1}, Lcom/samsung/android/security/SemSdCardEncryption;->setPassword(Ljava/lang/String;)I

    .line 2469
    .end local v7    # "sse":Lcom/samsung/android/security/SemSdCardEncryption;
    :cond_2
    return-object v0
.end method

.method public checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2337
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2338
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2339
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 2341
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 2342
    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->verifyPasswordSharedDevice(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2345
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_2

    .line 2346
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2347
    new-instance v7, Lcom/samsung/android/security/SemSdCardEncryption;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 2348
    .local v7, "sse":Lcom/samsung/android/security/SemSdCardEncryption;
    invoke-virtual {v7, p1}, Lcom/samsung/android/security/SemSdCardEncryption;->setPassword(Ljava/lang/String;)I

    .line 2351
    .end local v7    # "sse":Lcom/samsung/android/security/SemSdCardEncryption;
    :cond_2
    return-object v0
.end method

.method public checkPrivateModeBackupPin(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3570
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3572
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3573
    .local v0, "hash":[B
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readPrivateModeLockBackupkPinHash(I)[B

    move-result-object v1

    .line 3575
    .local v1, "storedHash":[B
    if-nez v1, :cond_0

    .line 3576
    const/4 v2, 0x1

    return v2

    .line 3578
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public checkPrivateModePassword(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3518
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3520
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3521
    .local v0, "hash":[B
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readPrivateModeLockPasswordHash(I)[B

    move-result-object v1

    .line 3523
    .local v1, "storedHash":[B
    if-nez v1, :cond_0

    .line 3524
    const/4 v2, 0x1

    return v2

    .line 3526
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public checkPrivateModePattern(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3544
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3546
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 3547
    .local v0, "hash":[B
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readPrivateModeLockPatternHash(I)[B

    move-result-object v1

    .line 3549
    .local v1, "storedHash":[B
    if-nez v1, :cond_0

    .line 3550
    const/4 v2, 0x1

    return v2

    .line 3552
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public checkPrivateModePin(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3492
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3494
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3495
    .local v0, "hash":[B
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readPrivateModeLockPinHash(I)[B

    move-result-object v1

    .line 3497
    .local v1, "storedHash":[B
    if-nez v1, :cond_0

    .line 3498
    const/4 v2, 0x1

    return v2

    .line 3500
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public checkRecoveryPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3190
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyBackupPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 3191
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 3192
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "checkRecoveryPassword( RESPONSE_OK )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    :cond_0
    return-object v0
.end method

.method public checkVoldPassword(I)Z
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2743
    iget-boolean v5, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    if-nez v5, :cond_0

    .line 2744
    return v6

    .line 2746
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 2748
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2758
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 2760
    .local v4, "service":Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2762
    .local v2, "identity":J
    :try_start_0
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 2763
    .local v1, "password":Ljava/lang/String;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->clearPassword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2765
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2767
    if-nez v1, :cond_1

    .line 2768
    return v6

    .line 2764
    .end local v1    # "password":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 2765
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2764
    throw v5

    .line 2772
    .restart local v1    # "password":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2773
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 2775
    return v7

    .line 2778
    :catch_0
    move-exception v0

    .line 2782
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2783
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-nez v5, :cond_3

    .line 2785
    return v7

    .line 2788
    :catch_1
    move-exception v0

    .line 2792
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockDirectionEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2793
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    if-nez v5, :cond_4

    .line 2795
    return v7

    .line 2798
    :catch_2
    move-exception v0

    .line 2801
    :cond_4
    return v6
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4059
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 4060
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission Denial: can\'t dump LockSettingsService from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4061
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 4060
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4062
    const-string/jumbo v6, ", uid="

    .line 4060
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4063
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4060
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4064
    const-string/jumbo v6, " without permission "

    .line 4060
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4065
    const-string/jumbo v6, "android.permission.DUMP"

    .line 4060
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4066
    return-void

    .line 4069
    :cond_0
    const-string/jumbo v5, "LockSettings state :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4070
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 4071
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 4072
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v3, v5, Landroid/content/pm/UserInfo;->id:I

    .line 4073
    .local v3, "userId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    userId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4074
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    passwordQuality(Saved) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4075
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    passwordQuality(Active) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4076
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    Biometirc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4071
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4078
    .end local v3    # "userId":I
    :cond_1
    const-string/jumbo v5, "GateKeeper state :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4079
    iget-wide v6, p0, Lcom/android/server/LockSettingsService;->mEnrolledTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 4080
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4081
    .local v0, "dayTime":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/android/server/LockSettingsService;->mEnrolledTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 4082
    .local v2, "strEnrollTime":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    (Enroll) enrolledTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4083
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    (Enroll) Response : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/LockSettingsService;->mEnrolledResponseCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4085
    .end local v0    # "dayTime":Ljava/text/SimpleDateFormat;
    .end local v2    # "strEnrollTime":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    (Verify) Timeout : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/LockSettingsService;->mVerifyTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4058
    return-void
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1572
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1573
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1574
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 1575
    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0
.end method

.method public getCarrierLockPlusMode(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3934
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3935
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage;->getCarrierLockPlusMode()Z

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1580
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1581
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1582
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1695
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->checkCryptKeeperPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 1697
    const-string/jumbo v1, "android.permission.MANAGE_DEVICE_ADMINS"

    .line 1698
    const-string/jumbo v2, "no crypt_keeper or admin permission to get the password"

    .line 1696
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    :cond_0
    sget-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1524
    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1525
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1526
    :try_start_0
    const-string/jumbo v0, "lockscreen.profilechallenge"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1525
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1587
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1588
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1592
    const-string/jumbo v2, "lock_pattern_autolock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1593
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1595
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1597
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1595
    return-object v2

    :cond_0
    :try_start_1
    const-string/jumbo v2, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1596
    :catchall_0
    move-exception v2

    .line 1597
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1596
    throw v2

    .line 1601
    .end local v0    # "ident":J
    :cond_1
    const-string/jumbo v2, "legacy_lock_pattern_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1602
    const-string/jumbo p1, "lock_pattern_autolock"

    .line 1605
    :cond_2
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getStrongAuthForUser(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 3040
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3041
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method public haveAppLockBackupPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3708
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockFingerprintPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3712
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockFingerprintPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3700
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3704
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3696
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveBackupPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasBackupPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveCarrierPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3957
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasCarrierPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveFMMPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3899
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasFMMPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1648
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsService;->haveKnoxPassword(II)Z

    move-result v0

    return v0

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1658
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsService;->haveKnoxPassword(II)Z

    move-result v0

    return v0

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    return v0
.end method

.method public havePrivateModeBackupPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3583
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePrivateModeLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public havePrivateModePassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3531
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePrivateModeLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePrivateModePattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePrivateModeLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public havePrivateModePin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3505
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePrivateModeLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveRecoveryPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasRecoveryPassword(I)Z

    move-result v0

    return v0
.end method

.method public hideEncryptionNotification(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1252
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1258
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    .line 1257
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1263
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/android/server/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    .line 1265
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1268
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/LockSettingsService$3;

    invoke-direct {v5, p0, p1}, Lcom/android/server/LockSettingsService$3;-><init>(Lcom/android/server/LockSettingsService;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1278
    :cond_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1279
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1280
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1281
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1282
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1283
    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1284
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1279
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1285
    .restart local v3    # "userHandle":Landroid/os/UserHandle;
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    goto :goto_1

    .line 1261
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    :cond_3
    return-void
.end method

.method public registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "callback"    # Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3718
    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "registerRemoteLockCallback!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3721
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/LockSettingsService;->mLockTypeForPasswordCheck:I

    if-ne v3, p1, :cond_1

    .line 3722
    const/4 v2, -0x1

    .line 3723
    .local v2, "failcount":I
    if-eqz p2, :cond_0

    .line 3725
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mPassword:Ljava/lang/String;

    invoke-interface {p2, v3}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3732
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3733
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3735
    :try_start_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3740
    :goto_0
    iput-object v5, p0, Lcom/android/server/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 3741
    iput-object v5, p0, Lcom/android/server/LockSettingsService;->mPassword:Ljava/lang/String;

    .line 3717
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "failcount":I
    :cond_1
    return-void

    .line 3726
    .restart local v2    # "failcount":I
    :catch_0
    move-exception v1

    .line 3727
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "failed checkRemoteLockPassword callback!! after register"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3729
    return-void

    .line 3736
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v1

    .line 3737
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "failed sendResult callback!! after register"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 3016
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3017
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 3015
    return-void
.end method

.method public requestRemoteLockInfo(I)V
    .locals 24
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3838
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3839
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v13, v0, :cond_1

    .line 3840
    move v15, v13

    .line 3841
    .local v15, "lockType":I
    const/4 v14, 0x0

    .line 3842
    .local v14, "lockState":Z
    const/16 v18, 0x0

    .line 3843
    .local v18, "message":Ljava/lang/CharSequence;
    const/16 v19, 0x0

    .line 3844
    .local v19, "phoneNumber":Ljava/lang/CharSequence;
    const/4 v12, 0x0

    .line 3845
    .local v12, "enableEmergencyCall":Z
    const/4 v9, 0x0

    .line 3846
    .local v9, "clientName":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 3847
    .local v6, "allowfailcount":I
    const-wide/16 v16, 0x0

    .line 3848
    .local v16, "locktime":J
    const/4 v7, 0x0

    .line 3850
    .local v7, "blockCount":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "locked"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v14

    .line 3851
    .local v14, "lockState":Z
    if-eqz v14, :cond_0

    .line 3852
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "message"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 3853
    .local v18, "message":Ljava/lang/CharSequence;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "phonenumber"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 3854
    .local v19, "phoneNumber":Ljava/lang/CharSequence;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "enableemergencycall"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v12

    .line 3855
    .local v12, "enableEmergencyCall":Z
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "clientname"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 3856
    .local v9, "clientName":Ljava/lang/CharSequence;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "allowfailcount"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    move/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v6, v0

    .line 3857
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "locktime"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    move/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v16

    .line 3858
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "permanentblockcount"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    move/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v7, v0

    .line 3860
    new-instance v20, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-object/from16 v0, v20

    invoke-direct {v0, v15, v14}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v10

    .line 3866
    .local v10, "data":Lcom/android/internal/widget/RemoteLockInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 3867
    .local v8, "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    if-eqz v8, :cond_0

    .line 3869
    :try_start_0
    invoke-interface {v8, v10}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3839
    .end local v8    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .end local v9    # "clientName":Ljava/lang/CharSequence;
    .end local v10    # "data":Lcom/android/internal/widget/RemoteLockInfo;
    .end local v12    # "enableEmergencyCall":Z
    .end local v18    # "message":Ljava/lang/CharSequence;
    .end local v19    # "phoneNumber":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 3870
    .restart local v8    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .restart local v9    # "clientName":Ljava/lang/CharSequence;
    .restart local v10    # "data":Lcom/android/internal/widget/RemoteLockInfo;
    .restart local v12    # "enableEmergencyCall":Z
    .restart local v18    # "message":Ljava/lang/CharSequence;
    .restart local v19    # "phoneNumber":Ljava/lang/CharSequence;
    :catch_0
    move-exception v11

    .line 3871
    .local v11, "e":Landroid/os/RemoteException;
    const-string/jumbo v20, "LockSettingsService"

    const-string/jumbo v21, "failed changeRemoteLockState callback!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 3837
    .end local v6    # "allowfailcount":I
    .end local v7    # "blockCount":I
    .end local v8    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .end local v9    # "clientName":Ljava/lang/CharSequence;
    .end local v10    # "data":Lcom/android/internal/widget/RemoteLockInfo;
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "enableEmergencyCall":Z
    .end local v14    # "lockState":Z
    .end local v15    # "lockType":I
    .end local v16    # "locktime":J
    .end local v18    # "message":Ljava/lang/CharSequence;
    .end local v19    # "phoneNumber":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 1
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3028
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3029
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 3027
    return-void
.end method

.method public resetKeyStore(I)V
    .locals 17
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2293
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2295
    const/4 v3, -0x1

    .line 2296
    .local v3, "managedUserId":I
    const/4 v2, 0x0

    .line 2297
    .local v2, "managedUserDecryptedPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 2298
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "managedUserDecryptedPassword":Ljava/lang/String;
    .local v5, "pi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2300
    .local v4, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2301
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2302
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v9

    .line 2300
    if-eqz v9, :cond_0

    .line 2304
    const/4 v9, -0x1

    if-ne v3, v9, :cond_1

    .line 2305
    :try_start_0
    iget v9, v4, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v2

    .line 2306
    .local v2, "managedUserDecryptedPassword":Ljava/lang/String;
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    .line 2309
    .end local v2    # "managedUserDecryptedPassword":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "More than one managed profile, uid1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2310
    const-string/jumbo v11, ", uid2:"

    .line 2309
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2310
    iget v11, v4, Landroid/content/pm/UserInfo;->id:I

    .line 2309
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2315
    :catch_0
    move-exception v1

    .line 2316
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "LockSettingsService"

    const-string/jumbo v10, "Failed to decrypt child profile key"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2322
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "pi":Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v11

    const/4 v9, 0x0

    array-length v12, v11

    move v10, v9

    :goto_1
    if-ge v10, v12, :cond_4

    aget v6, v11, v10

    .line 2323
    .local v6, "profileId":I
    sget-object v13, Lcom/android/server/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    const/4 v9, 0x0

    array-length v14, v13

    :goto_2
    if-ge v9, v14, :cond_3

    aget v8, v13, v9

    .line 2324
    .local v8, "uid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v6, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2323
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2322
    .end local v8    # "uid":I
    :cond_3
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1

    .line 2328
    .end local v6    # "profileId":I
    :cond_4
    const/4 v9, -0x1

    if-eq v3, v9, :cond_5

    if-eqz v2, :cond_5

    .line 2330
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    .line 2292
    :cond_5
    return-void

    .line 2327
    :catchall_0
    move-exception v9

    .line 2328
    const/4 v10, -0x1

    if-eq v3, v10, :cond_6

    if-eqz v2, :cond_6

    .line 2330
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    .line 2327
    :cond_6
    throw v9
.end method

.method public retainPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1665
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1666
    if-eqz p1, :cond_1

    .line 1667
    sput-object p1, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1664
    :cond_0
    :goto_0
    return-void

    .line 1669
    :cond_1
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public sanitizePassword()V
    .locals 1

    .prologue
    .line 1674
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1675
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1673
    :cond_0
    return-void
.end method

.method saveSharedDevicePassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2179
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSharedDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2180
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->saveSDPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2181
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "save password true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    :cond_0
    :goto_0
    return-void

    .line 2183
    :cond_1
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "save password false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendLockTypeChangedInfo()V
    .locals 1

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage;->sendLockTypeChangedInfo()V

    .line 3146
    return-void
.end method

.method public setAppLockBackupPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3611
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3613
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 3614
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    .line 3613
    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockBackupPinHash([BI)V

    .line 3610
    return-void
.end method

.method public setAppLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3618
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3620
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 3621
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    .line 3620
    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockFingerprintPasswordHash([BI)V

    .line 3617
    return-void
.end method

.method public setAppLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3597
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3599
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 3600
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    .line 3599
    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPasswordHash([BI)V

    .line 3596
    return-void
.end method

.method public setAppLockPattern(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3604
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3606
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 3607
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    .line 3606
    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPatternHash([BI)V

    .line 3603
    return-void
.end method

.method public setAppLockPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3590
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3592
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPinHash([BI)V

    .line 3589
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1547
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1548
    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1546
    return-void

    .line 1548
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public setCarrierLockPlusEnabled(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3944
    return-void
.end method

.method public setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3246
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3247
    const/4 v0, 0x0

    .line 3248
    .local v0, "currentHandle":[B
    const/4 v2, 0x4

    invoke-direct {p0, v2, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandleBackupType(II)[B

    move-result-object v0

    .line 3249
    .local v0, "currentHandle":[B
    if-nez p1, :cond_0

    .line 3250
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "setLockBackupPassword( password is null )"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v4, p3}, Lcom/android/server/LockSettingsStorage;->writeBackupPasswordHash([BI)V

    .line 3252
    return-void

    .line 3255
    :cond_0
    if-nez v0, :cond_2

    .line 3256
    if-eqz p2, :cond_1

    .line 3257
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    :cond_1
    const/4 p2, 0x0

    .line 3261
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 3262
    .local v1, "enrolledHandle":[B
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredentialBackupType([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 3264
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_4

    .line 3265
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writeBackupPasswordHash([BI)V

    .line 3271
    :goto_0
    if-eqz v1, :cond_3

    .line 3272
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v2, :cond_3

    .line 3273
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, p3, p1, v3}, Lcom/android/server/LockSettingsService$SdpHandler;->enroll(ILjava/lang/String;I)V

    .line 3245
    :cond_3
    return-void

    .line 3267
    :cond_4
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Failed to enroll backup Password"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLockCarrierPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3950
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3951
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeCarrierPasswordHash([BI)V

    .line 3949
    return-void
.end method

.method public setLockFMMPassword(Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3881
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3882
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 3883
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v1, "userId"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 3885
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeFMMPasswordHash([BI)V

    .line 3888
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v0, :cond_0

    .line 3889
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3890
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/LockSettingsService$SdpHandler;->enroll(ILjava/lang/String;I)V

    .line 3880
    :cond_0
    return-void
.end method

.method public setLockModeChangedCallback(Landroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 3143
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->setSecureLockModeChangedCallback(Landroid/os/IRemoteCallback;)V

    .line 3142
    return-void
.end method

.method public setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1969
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1970
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1971
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1972
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v0, v2}, Lcom/android/server/LockSettingsService;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 1973
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->notifyPasswordChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1968
    return-void

    .line 1970
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1882
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1883
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1884
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1885
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v0, v2}, Lcom/android/server/LockSettingsService;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 1886
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->notifyPasswordChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1881
    return-void

    .line 1883
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLockRecoveryPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3162
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3163
    const/4 v0, 0x0

    .line 3164
    .local v0, "currentHandle":[B
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .line 3165
    .local v0, "currentHandle":[B
    if-nez p1, :cond_0

    .line 3166
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "setLockRecoveryPassword( password is null )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v4, p3}, Lcom/android/server/LockSettingsStorage;->writeRecoveryPasswordHash([BI)V

    .line 3168
    return-void

    .line 3171
    :cond_0
    if-nez v0, :cond_2

    .line 3172
    if-eqz p2, :cond_1

    .line 3173
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    :cond_1
    const/4 p2, 0x0

    .line 3177
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 3178
    .local v1, "enrolledHandle":[B
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 3180
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_3

    .line 3181
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writeRecoveryPasswordHash([BI)V

    .line 3161
    :goto_0
    return-void

    .line 3183
    :cond_3
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Failed to enroll recovery Password"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1553
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1554
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1552
    return-void
.end method

.method public setPrivateModeLockBackupPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3562
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3564
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 3565
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    .line 3564
    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePrivateModeLocBackupkPinHash([BI)V

    .line 3561
    return-void
.end method

.method public setPrivateModeLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3510
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3512
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 3513
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    .line 3512
    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePrivateModeLockPasswordHash([BI)V

    .line 3509
    return-void
.end method

.method public setPrivateModeLockPattern(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3536
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3538
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 3539
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    .line 3538
    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePrivateModeLockPatternHash([BI)V

    .line 3535
    return-void
.end method

.method public setPrivateModeLockPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3484
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3486
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePrivateModeLockPinHash([BI)V

    .line 3483
    return-void
.end method

.method public setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    .locals 20
    .param p1, "userId"    # I
    .param p2, "data"    # Lcom/android/internal/widget/RemoteLockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3754
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3756
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    move/from16 v17, v0

    .line 3757
    .local v17, "type":I
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    move/from16 v16, v0

    .line 3758
    .local v16, "set":Z
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    check-cast v14, Ljava/lang/String;

    .line 3759
    .local v14, "message":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    check-cast v15, Ljava/lang/String;

    .line 3760
    .local v15, "phoneNumber":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    .line 3761
    .local v11, "enableEmergencyCall":Z
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    check-cast v9, Ljava/lang/String;

    .line 3762
    .local v9, "clientName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v4, v0

    .line 3763
    .local v4, "allowfailcount":J
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 3764
    .local v12, "locktime":J
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v6, v0

    .line 3767
    .local v6, "blockcount":J
    if-eqz v16, :cond_2

    .line 3768
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "locked"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 3769
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "message"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3770
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "phonenumber"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3771
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "enableemergencycall"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 3772
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "clientname"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3773
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "allowfailcount"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3774
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "locktime"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v12, v13, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3775
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "permanentblockcount"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3787
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 3788
    .local v8, "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    if-eqz v8, :cond_0

    .line 3790
    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v8, v0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3797
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    check-cast v8, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 3798
    .restart local v8    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    if-eqz v8, :cond_1

    .line 3800
    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v8, v0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3753
    :cond_1
    :goto_2
    return-void

    .line 3777
    .end local v8    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "locked"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 3791
    .restart local v8    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    :catch_0
    move-exception v10

    .line 3792
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v18, "LockSettingsService"

    const-string/jumbo v19, "failed changeRemoteLockState callback!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 3801
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 3802
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string/jumbo v18, "LockSettingsService"

    const-string/jumbo v19, "failed changeRemoteLockState callback!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1533
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1534
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1535
    :try_start_0
    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1536
    if-eqz p2, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1538
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 1532
    return-void

    .line 1540
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1534
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1559
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1560
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1558
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 1329
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    .line 1331
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    .line 1328
    return-void

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Failure retrieving IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    .locals 8
    .param p1, "managedUserId"    # I
    .param p2, "managedUserPassword"    # Ljava/lang/String;

    .prologue
    .line 1089
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1090
    return-void

    .line 1093
    :cond_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1094
    return-void

    .line 1097
    :cond_1
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v4, p1}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1098
    return-void

    .line 1101
    :cond_2
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1102
    .local v2, "parentId":I
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v4, v2}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v4, v2}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1107
    :cond_3
    const/4 v4, 0x0

    new-array v3, v4, [B

    .line 1109
    .local v3, "randomLockSeed":[B
    :try_start_0
    const-string/jumbo v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v4

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v3

    .line 1110
    invoke-static {v3}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, "newPassword":Ljava/lang/String;
    invoke-direct {p0, v1, p2, p1}, Lcom/android/server/LockSettingsService;->setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1115
    const-string/jumbo v4, "lockscreen.password_type"

    .line 1116
    const-wide/32 v6, 0x50000

    .line 1115
    invoke-virtual {p0, v4, v6, v7, p1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1117
    invoke-direct {p0, p1, v1}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    .end local v1    # "newPassword":Ljava/lang/String;
    :goto_0
    return-void

    .line 1104
    .end local v3    # "randomLockSeed":[B
    :cond_4
    return-void

    .line 1118
    .restart local v3    # "randomLockSeed":[B
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Fail to tie managed profile"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "callback"    # Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3746
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3747
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3745
    :goto_0
    return-void

    .line 3749
    :cond_0
    const-string/jumbo v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " hasn\'t been registered!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 3022
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3023
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 3021
    return-void
.end method

.method public updateCarrierLockPlusMode(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3939
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3940
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage;->updateCarrierLockPlusMode()Z

    move-result v0

    return v0
.end method

.method public userPresent(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 3034
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3035
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->reportUnlock(I)V

    .line 3033
    return-void
.end method

.method public verifyBackupPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3291
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyBackupPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2475
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2357
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyRecoveryPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3200
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyBackupPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyTiedProfileChallenge(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "isPattern"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2481
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2482
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2483
    new-instance v3, Landroid/os/RemoteException;

    const-string/jumbo v4, "User id must be managed profile with unified lock"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2485
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    .line 2487
    .local v8, "parentProfileId":I
    if-eqz p2, :cond_1

    .line 2488
    const/4 v5, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v15

    .line 2490
    .local v15, "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2492
    return-object v15

    .line 2489
    .end local v15    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    const/4 v5, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v15

    goto :goto_0

    .line 2497
    .restart local v15    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    move-object/from16 v9, p0

    move-wide/from16 v12, p3

    move/from16 v14, p5

    invoke-direct/range {v9 .. v14}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2503
    :catch_0
    move-exception v2

    .line 2504
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "Failed to decrypt child profile key"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2505
    new-instance v3, Landroid/os/RemoteException;

    const-string/jumbo v4, "Unable to get tied profile token"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
