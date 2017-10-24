.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;,
        Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;,
        Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
    }
.end annotation


# static fields
.field public static final APP_LOCK_FINGERPRINT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.applock_fingerprint"

.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CIS_LOCK:I = 0x2

.field private static final DEBUG:Z = false

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field private static final ENABLED_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.enabledtrustagents"

.field public static final ENTERPRISEID_TYPE_KEY:Ljava/lang/String; = "lockscreen.enterpriseidentity_type"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FLAG_ENTERPRISEID_SELECTED:Ljava/lang/String; = "lockscreen.enterpriseidentity_selected"

.field public static final FMM_LOCK:I = 0x0

.field private static final IS_TRUST_USUALLY_MANAGED:Ljava/lang/String; = "lockscreen.istrustusuallymanaged"

.field public static final LEGACY_LOCK_PATTERN_ENABLED:Ljava/lang/String; = "legacy_lock_pattern_enabled"

.field private static final LGT_REJECT_CAUSE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.lgt_reject_cause"

.field private static final LOCKOUT_ATTEMPTS_TIMEOUT_LEVEL:Ljava/lang/String; = "lockscreen.lockoutAttemptTimeoutLevel"

.field private static final LOCKOUT_ATTEMPTS_TIMEOUT_MS_LEVEL1:J = 0x7530L

.field private static final LOCKOUT_ATTEMPTS_TIMEOUT_MS_LEVEL2:J = 0xea60L

.field private static final LOCKOUT_ATTEMPTS_TIMEOUT_MS_LEVEL3:J = 0x493e0L

.field private static final LOCKOUT_ATTEMPTS_TIMEOUT_MS_LEVEL4:J = 0x927c0L

.field private static final LOCKOUT_ATTEMPTS_TIMEOUT_MS_LEVEL5:J = 0x1b7740L

.field private static final LOCKOUT_ATTEMPTS_TIMEOUT_MS_LEVEL6:J = 0x36ee80L

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockoutattempttimeoutmss"

.field private static final LOCKOUT_BIOMETRIC_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockout_biometric_attempt_deadline"

.field private static final LOCKOUT_BIOMETRIC_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockout_biometric_attempt_timeoutms"

.field public static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LOCKOUT_RECOVERY_KEY:Ljava/lang/String; = "lockscreen.lockedoutRecovery"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_SCREEN_DEVICE_OWNER_INFO:Ljava/lang/String; = "lockscreen.device_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3

.field public static final MIN_LOCK_PASSWORD_SIZE:I = 0x4

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final PROFILE_KEY_NAME_DECRYPT:Ljava/lang/String; = "profile_key_name_decrypt_"

.field public static final PROFILE_KEY_NAME_ENCRYPT:Ljava/lang/String; = "profile_key_name_encrypt_"

.field public static final REMOTELOCK_SIZE:I = 0x3

.field private static final SAMSUNG_BIOMETRIC_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.samsung_biometric"

.field private static final SAMSUNG_FAILED_ATTEMPT_FMM_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.failed_fmm_attempts"

.field private static final SAMSUNG_FAILED_ATTEMPT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.failed_attempts"

.field public static final SEC_BIOMETRIC_STATE_OFF:I = 0x0

.field public static final SEC_BIOMETRIC_STATE_ON:I = 0x1

.field public static final SEC_BIOMETRIC_TYPE_FACE:I = 0x100

.field public static final SEC_BIOMETRIC_TYPE_FINGERPRINT:I = 0x1

.field public static final SEC_BIOMETRIC_TYPE_IRIS:I = 0x10

.field public static final SEC_BIOMETRIC_TYPE_NONE:I = 0x0

.field public static final SKT_CARRIER_LOCK:I = 0x1

.field private static final SKT_CARRIER_LOCK_MODE_FILE:Ljava/lang/String; = "/efs/sms/sktcarrierlockmode"

.field private static final SKT_FAILED_ATTEMPT_TIMEOUT_MS:J = 0x927c0L

.field private static final SKT_LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "sktlockscreen.lockoutdeadline"

.field public static final SMARTCARD_TYPE_KEY:Ljava/lang/String; = "lockscreen.smartcard_type"

.field private static final SUPPORT_DEX_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final TEXT_SEPERATOR:C = ':'

.field private static sLockoutAttemptTimeoutLevel:J

.field static final sSupportHapticFeedback:Z


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mIsCallerUCM:Z

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isHapticSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->sSupportHapticFeedback:Z

    .line 2432
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/widget/LockPatternUtils;->sLockoutAttemptTimeoutLevel:J

    .line 92
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 310
    return-void
.end method

.method private static categoryChar(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1026
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1027
    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 1028
    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/4 v0, 0x2

    return v0

    .line 1029
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method private clearLockoutAttemptDeadline(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 2596
    sput-wide v2, Lcom/android/internal/widget/LockPatternUtils;->sLockoutAttemptTimeoutLevel:J

    .line 2597
    const-string/jumbo v0, "lockscreen.lockoutAttemptTimeoutLevel"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2598
    const-string/jumbo v0, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2599
    const-string/jumbo v0, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2595
    return-void
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 8
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 988
    const/4 v1, 0x0

    .line 989
    .local v1, "hasDigit":Z
    const/4 v2, 0x0

    .line 991
    .local v2, "hasNonDigit":Z
    const/4 v3, 0x0

    .line 992
    .local v3, "hasSymbol":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 993
    .local v5, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 994
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 995
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 996
    const/4 v1, 0x1

    .line 993
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 998
    :cond_1
    const/4 v2, 0x1

    .line 999
    const/16 v6, 0x41

    if-lt v0, v6, :cond_2

    const/16 v6, 0x5a

    if-le v0, v6, :cond_0

    :cond_2
    const/16 v6, 0x61

    if-lt v0, v6, :cond_3

    const/16 v6, 0x7a

    if-le v0, v6, :cond_0

    .line 1002
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 1007
    .end local v0    # "c":C
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 1008
    const/high16 v6, 0x60000

    return v6

    .line 1011
    :cond_5
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 1012
    const/high16 v6, 0x50000

    return v6

    .line 1014
    :cond_6
    if-eqz v2, :cond_7

    .line 1015
    const/high16 v6, 0x40000

    return v6

    .line 1017
    :cond_7
    if-eqz v1, :cond_9

    .line 1018
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_8

    .line 1019
    const/high16 v6, 0x20000

    .line 1018
    :goto_2
    return v6

    .line 1020
    :cond_8
    const/high16 v6, 0x30000

    goto :goto_2

    .line 1022
    :cond_9
    const/4 v6, 0x0

    return v6
.end method

.method private generateRecoveryPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1921
    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1806
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1807
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "re":Landroid/os/RemoteException;
    return p2
.end method

.method private getDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .locals 2

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 293
    .local v0, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    .line 318
    const-string/jumbo v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 317
    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 319
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 321
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v1
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1823
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, "re":Landroid/os/RemoteException;
    return-wide p2
.end method

.method public static getProfiles(I)Ljava/util/List;
    .locals 12
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2063
    const/4 v4, 0x0

    .line 2066
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_0
    const-string/jumbo v10, "user"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v8

    .line 2067
    .local v8, "um":Landroid/os/IUserManager;
    if-eqz v8, :cond_0

    .line 2068
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2072
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_1
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-result-object v9

    .line 2073
    .local v9, "versionInfo":Landroid/os/Bundle;
    if-eqz v9, :cond_3

    const-string/jumbo v10, "2.0"

    const-string/jumbo v11, "version"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2074
    invoke-interface {v8, p0}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 2075
    .local v7, "uinfo":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2079
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v5

    .line 2106
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "uinfo":Landroid/content/pm/UserInfo;
    .end local v8    # "um":Landroid/os/IUserManager;
    .end local v9    # "versionInfo":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v4

    .line 2084
    .restart local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "uinfo":Landroid/content/pm/UserInfo;
    .restart local v8    # "um":Landroid/os/IUserManager;
    .restart local v9    # "versionInfo":Landroid/os/Bundle;
    :cond_1
    const/4 v10, 0x0

    invoke-interface {v8, p0, v10}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v6

    .line 2085
    .local v6, "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pi$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2086
    .local v2, "pi":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v10

    if-nez v10, :cond_2

    .line 2087
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 2101
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "pi$iterator":Ljava/util/Iterator;
    .end local v6    # "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "uinfo":Landroid/content/pm/UserInfo;
    .end local v9    # "versionInfo":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move-object v4, v5

    .line 2102
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "um":Landroid/os/IUserManager;
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2094
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v8    # "um":Landroid/os/IUserManager;
    .restart local v9    # "versionInfo":Landroid/os/Bundle;
    :cond_3
    const/4 v10, 0x0

    :try_start_2
    invoke-interface {v8, p0, v10}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_0

    .line 2103
    .end local v8    # "um":Landroid/os/IUserManager;
    .end local v9    # "versionInfo":Landroid/os/Bundle;
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v1

    .line 2104
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2101
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 2103
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v8    # "um":Landroid/os/IUserManager;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "pi$iterator":Ljava/util/Iterator;
    .restart local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "uinfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "versionInfo":Landroid/os/Bundle;
    :cond_4
    move-object v4, v5

    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_0
.end method

.method private getRequestedPasswordHistoryLength(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 1384
    const-string/jumbo v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 1385
    .local v2, "salt":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1387
    :try_start_0
    const-string/jumbo v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 1388
    const-string/jumbo v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1389
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Initialized lock password salt for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1390
    :catch_0
    move-exception v0

    .line 1392
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1840
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1841
    :catch_0
    move-exception v0

    .line 1842
    .local v0, "re":Landroid/os/RemoteException;
    return-object v3
.end method

.method private getTrustManager()Landroid/app/trust/TrustManager;
    .locals 5

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "trust"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 276
    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_0

    .line 277
    const-string/jumbo v1, "LockPatternUtils"

    const-string/jumbo v2, "Can\'t get TrustManagerService: is it running?"

    .line 278
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Stack trace:"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    :cond_0
    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private havePasswordNoMDMCache(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1522
    const-string/jumbo v3, "lock_settings"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 1523
    .local v1, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    const/4 v2, 0x0

    .line 1524
    .local v2, "ret":Z
    if-eqz v1, :cond_0

    .line 1526
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1532
    .end local v2    # "ret":Z
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 1533
    const-string/jumbo v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "havePasswordNoMDMCache() : no password in User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_1
    return v2

    .line 1527
    .restart local v2    # "ret":Z
    :catch_0
    move-exception v0

    .line 1528
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Unable to reach LockSettingsService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDeviceEncrypted()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1194
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1193
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 1196
    .local v0, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 1197
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v4, v2, :cond_0

    .line 1196
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1197
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1196
    goto :goto_0

    .line 1198
    :catch_0
    move-exception v1

    .line 1199
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Error getting encryption state"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1201
    return v2
.end method

.method public static isDeviceEncryptionEnabled()Z
    .locals 1

    .prologue
    .line 1211
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method private isDoNotAskCredentialsOnBootSet()Z
    .locals 1

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    return v0
.end method

.method public static isFileEncryptionEnabled()Z
    .locals 1

    .prologue
    .line 1219
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    return v0
.end method

.method private static isHapticSupported()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 298
    const-string/jumbo v0, "/sys/class/timed_output/vibrator/intensity"

    .line 300
    .local v0, "INTENSITY_PATH":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/sys/class/timed_output/vibrator/intensity"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v2, "fe":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    const/4 v3, 0x1

    return v3

    .line 304
    :cond_0
    return v4

    .line 305
    .end local v2    # "fe":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    return v4
.end method

.method private isKnoxKioskModeEnabled()Z
    .locals 3

    .prologue
    .line 812
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 813
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKnoxUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 402
    .local v1, "ret":Z
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    .line 403
    const/16 v2, 0xc8

    if-gt p1, v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 405
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v1

    .line 409
    .end local v0    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v1    # "ret":Z
    :cond_0
    return v1
.end method

.method private isLockDirectionEnabled(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1576
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    .line 1577
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v0

    .line 1576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLockPasswordEnabled(II)Z
    .locals 3
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1488
    const/high16 v2, 0x40000

    if-eq p1, v2, :cond_0

    .line 1489
    const/high16 v2, 0x20000

    if-ne p1, v2, :cond_2

    .line 1495
    .local v0, "passwordEnabled":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists(I)Z

    move-result v1

    :cond_1
    return v1

    .line 1490
    .end local v0    # "passwordEnabled":Z
    :cond_2
    const/high16 v2, 0x30000

    if-eq p1, v2, :cond_0

    .line 1491
    const/high16 v2, 0x50000

    if-eq p1, v2, :cond_0

    .line 1492
    const/high16 v2, 0x60000

    if-eq p1, v2, :cond_0

    .line 1493
    const/high16 v2, 0x80000

    if-eq p1, v2, :cond_0

    .line 1494
    const/high16 v2, 0x70000

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isLockPatternEnabled(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1582
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 1583
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v0

    .line 1582
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maxDiffCategory(I)I
    .locals 2
    .param p0, "category"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1033
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    return v0

    .line 1034
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/16 v0, 0xa

    return v0

    .line 1035
    :cond_2
    return v1
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .locals 12
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1055
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    return v11

    .line 1056
    :cond_0
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1057
    .local v8, "previousChar":C
    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    move-result v0

    .line 1058
    .local v0, "category":I
    const/4 v5, 0x0

    .line 1059
    .local v5, "diff":I
    const/4 v6, 0x0

    .line 1060
    .local v6, "hasDiff":Z
    const/4 v7, 0x0

    .line 1061
    .local v7, "maxLength":I
    const/4 v9, 0x0

    .line 1062
    .local v9, "startSequence":I
    const/4 v2, 0x1

    .local v2, "current":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 1063
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1064
    .local v3, "currentChar":C
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    move-result v1

    .line 1065
    .local v1, "categoryCurrent":I
    sub-int v4, v3, v8

    .line 1066
    .local v4, "currentDiff":I
    if-ne v1, v0, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_2

    .line 1067
    :cond_1
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1068
    move v9, v2

    .line 1069
    const/4 v6, 0x0

    .line 1070
    move v0, v1

    .line 1080
    :goto_1
    move v8, v3

    .line 1062
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1073
    :cond_2
    if-eqz v6, :cond_3

    if-eq v4, v5, :cond_3

    .line 1074
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1075
    add-int/lit8 v9, v2, -0x1

    .line 1077
    :cond_3
    move v5, v4

    .line 1078
    const/4 v6, 0x1

    goto :goto_1

    .line 1082
    .end local v1    # "categoryCurrent":I
    .end local v3    # "currentChar":C
    .end local v4    # "currentDiff":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1083
    return v7
.end method

.method private onAfterChangingPassword(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 1982
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1981
    return-void
.end method

.method public static patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1343
    if-nez p0, :cond_0

    .line 1344
    const-string/jumbo v4, ""

    return-object v4

    .line 1346
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1348
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1349
    .local v3, "res":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1350
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1351
    aget-byte v4, v0, v1

    add-int/lit8 v4, v4, -0x31

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1353
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method public static patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x0

    .line 1364
    if-nez p0, :cond_0

    .line 1365
    return-object v7

    .line 1368
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1369
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 1370
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 1371
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1372
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 1370
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1375
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string/jumbo v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1376
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1377
    .local v1, "hash":[B
    return-object v1

    .line 1378
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .line 1379
    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    return-object v6
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1329
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 1330
    const-string/jumbo v4, ""

    return-object v4

    .line 1332
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1334
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1335
    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1336
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1337
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1339
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method private savedPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 687
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private savedPatternExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 675
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1814
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1812
    :goto_0
    return-void

    .line 1815
    :catch_0
    move-exception v0

    .line 1817
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLockoutAttemptDeadlineInAbnormalCase(IJ)J
    .locals 4
    .param p1, "userId"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 2585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2586
    .local v0, "deadline":J
    add-long/2addr v0, p2

    .line 2587
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2588
    return-wide v0
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1831
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1829
    :goto_0
    return-void

    .line 1832
    :catch_0
    move-exception v0

    .line 1834
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1848
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1846
    :goto_0
    return-void

    .line 1849
    :catch_0
    move-exception v0

    .line 1851
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldEncryptWithCredentials(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2008
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isDoNotAskCredentialsOnBootSet()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1309
    if-nez p0, :cond_0

    .line 1310
    return-object v4

    .line 1313
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1315
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1316
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 1317
    aget-byte v4, v1, v2

    add-int/lit8 v4, v4, -0x31

    int-to-byte v0, v4

    .line 1318
    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1320
    .end local v0    # "b":B
    :cond_1
    return-object v3
.end method

.method private throwIfCalledOnMainThread()V
    .locals 2

    .prologue
    .line 2012
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2013
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "should not be called from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2011
    :cond_0
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "ary"    # [B

    .prologue
    .line 1459
    const-string/jumbo v0, "0123456789ABCDEF"

    .line 1460
    .local v0, "hex":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 1461
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 1462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1461
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1465
    :cond_0
    return-object v2
.end method

.method private updateCACAuthentication(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2380
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2381
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2382
    const-string/jumbo v2, "com.sec.smartcard.pinservice.action.SMARTCARD_PIN_REMOVED"

    .line 2381
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2383
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2384
    const-string/jumbo v1, "LockPatternUtils"

    const-string/jumbo v2, "updateCACAuthentication: send broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateCACAuthentication(II)V
    .locals 6
    .param p1, "quality"    # I
    .param p2, "userId"    # I

    .prologue
    const/high16 v5, 0x70000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2393
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mIsCallerUCM:Z

    if-eqz v0, :cond_0

    .line 2394
    const-string/jumbo v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCACAuthentication called from ucm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mIsCallerUCM:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    iput-boolean v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mIsCallerUCM:Z

    .line 2396
    return-void

    .line 2398
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(I)V

    .line 2399
    if-ne p1, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCACPassword(ZI)Z

    .line 2400
    const-string/jumbo v0, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCACPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p1, v5, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    return-void

    :cond_1
    move v0, v2

    .line 2399
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2400
    goto :goto_1
.end method

.method private updateCryptoUserInfo(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 922
    if-eqz p1, :cond_0

    .line 923
    return-void

    .line 926
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 928
    .local v2, "ownerInfo":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 929
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_2

    .line 930
    const-string/jumbo v4, "LockPatternUtils"

    const-string/jumbo v5, "Could not find the mount service to update the user info"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return-void

    .line 926
    .end local v2    # "ownerInfo":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :cond_1
    const-string/jumbo v2, ""

    .restart local v2    # "ownerInfo":Ljava/lang/String;
    goto :goto_0

    .line 934
    .restart local v3    # "service":Landroid/os/IBinder;
    :cond_2
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 936
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "LockPatternUtils"

    const-string/jumbo v5, "Setting owner info"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const-string/jumbo v4, "OwnerInfo"

    invoke-interface {v1, v4, v2}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_1
    return-void

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "LockPatternUtils"

    const-string/jumbo v5, "Error changing user info"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateEncryptionPassword(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1088
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1091
    :cond_0
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1092
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_2

    .line 1093
    const-string/jumbo v1, "LockPatternUtils"

    const-string/jumbo v2, "Could not find the mount service to update the encryption password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return-void

    .line 1089
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_1
    return-void

    .line 1097
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_2
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1087
    return-void
.end method

.method private updateEnterpriseIdentityLock(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 456
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "lockscreen.enterpriseidentity_selected"

    const/4 v7, 0x0

    .line 455
    invoke-static {v5, v6, v7, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 457
    .local v1, "eIdChoosenByUser":I
    const-string/jumbo v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateEnterpriseIdentityLock: eIdChoosenByUser: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 458
    const-string/jumbo v7, "Enterprise ID status:"

    .line 457
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v7

    .line 457
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v2, 0x0

    .line 461
    .local v2, "isEidLockNeedToSet":Z
    if-lez v1, :cond_0

    .line 462
    const/4 v2, 0x1

    .line 464
    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentitySelected(ZI)Z

    .line 467
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v5

    if-eq v5, v2, :cond_1

    .line 468
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentityLock(ZI)Z

    .line 469
    if-nez v2, :cond_1

    .line 470
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    .line 471
    .local v3, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v3, :cond_1

    .line 472
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getFidoRpContext(I)Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, "rpContext":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 474
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->setFidoRpContext(ILjava/lang/String;)V

    .line 475
    const-string/jumbo v5, "LockPatternUtils"

    const-string/jumbo v6, "Changed to Enterprise ID : Clear Fido RP context"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .end local v3    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v4    # "rpContext":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateEnterpriseIdentityLock: EidState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v1    # "eIdChoosenByUser":I
    .end local v2    # "isEidLockNeedToSet":Z
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addFailedFMMUnlockAttempt(I)J
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 2795
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getFailedFMMUnlockAttempt(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 2796
    .local v0, "count":J
    const-string/jumbo v2, "lockscreen.failed_fmm_attempts"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2797
    return-wide v0
.end method

.method public addFailedUnlockAttempt(I)J
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 2749
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getFailedUnlockAttempt(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 2750
    .local v0, "count":J
    const-string/jumbo v2, "lockscreen.failed_attempts"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2751
    return-wide v0
.end method

.method public checkAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 2299
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_0

    .line 2300
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 2301
    :cond_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_1

    .line 2302
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 2303
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_2

    .line 2304
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPattern(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 2305
    :cond_2
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_3

    .line 2306
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockBackupPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2307
    :cond_3
    return v2

    .line 2308
    :catch_0
    move-exception v0

    .line 2309
    .local v0, "re":Landroid/os/RemoteException;
    return v2
.end method

.method public checkBackupPassword(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2644
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2645
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkBackupPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 2648
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    const-string/jumbo v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkBackupPassword( resCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 2650
    return v7

    .line 2651
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 2652
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3

    .line 2657
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v1

    .line 2658
    .local v1, "re":Landroid/os/RemoteException;
    return v6

    .line 2654
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    const-string/jumbo v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkBackupPassword resCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2655
    return v6
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 606
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 609
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 610
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 611
    return v3

    .line 612
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 613
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 619
    .local v0, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 620
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 621
    return v4

    .line 615
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return v4

    .line 624
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    return v4
.end method

.method public checkPasswordHistory(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 649
    new-instance v2, Ljava/lang/String;

    .line 650
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 649
    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 651
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string/jumbo v5, "lockscreen.passwordhistory"

    invoke-direct {p0, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, "passwordHistory":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 653
    return v7

    .line 656
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 657
    .local v1, "passwordHashLength":I
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v4

    .line 658
    .local v4, "passwordHistoryLength":I
    if-nez v4, :cond_1

    .line 659
    return v7

    .line 661
    :cond_1
    mul-int v5, v1, v4

    add-int/2addr v5, v4

    add-int/lit8 v0, v5, -0x1

    .line 663
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_2

    .line 664
    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 666
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    return v5
.end method

.method public checkPattern(Ljava/util/List;I)Z
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 517
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 520
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 522
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 523
    const-string/jumbo v2, "LockPatternUtils"

    const-string/jumbo v3, "checkPattern() : RESPONSE_OK"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return v5

    .line 525
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 526
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 532
    .local v0, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 533
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 534
    return v4

    .line 528
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return v4

    .line 537
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    return v4
.end method

.method public checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;I)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 2892
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->PIN:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    if-ne p3, v1, :cond_0

    .line 2893
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPrivateModePin(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 2894
    :cond_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->Password:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    if-ne p3, v1, :cond_1

    .line 2895
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPrivateModePassword(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 2896
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    if-ne p3, v1, :cond_2

    .line 2897
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Lcom/android/internal/widget/ILockSettings;->checkPrivateModePattern(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 2898
    :cond_2
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    if-ne p3, v1, :cond_3

    .line 2899
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPrivateModeBackupPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2900
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 2901
    :catch_0
    move-exception v0

    .line 2902
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public checkRecoveryPassword(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2533
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 2535
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkRecoveryPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2537
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 2538
    return v3

    .line 2539
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 2540
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2544
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 2545
    .local v0, "re":Landroid/os/RemoteException;
    return v4

    .line 2542
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return v4
.end method

.method public checkRemoteLockPassword(ILjava/lang/String;I)Z
    .locals 8
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 3029
    if-nez p1, :cond_0

    .line 3030
    :try_start_0
    const-string/jumbo v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 3031
    .local v3, "sha1":[B
    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 3033
    .local v0, "base64":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, v0, p3}, Lcom/android/internal/widget/ILockSettings;->checkFMMPassword(Ljava/lang/String;I)Z

    move-result v4

    return v4

    .line 3034
    .end local v0    # "base64":Ljava/lang/String;
    .end local v3    # "sha1":[B
    :cond_0
    if-ne p1, v4, :cond_1

    .line 3035
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkCarrierPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 3037
    :cond_1
    return v4

    .line 3041
    :catch_0
    move-exception v1

    .line 3042
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v4, "LockPatternUtils"

    const-string/jumbo v5, "Failed to encode string because of missing algorithm: SHA-1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    return v7

    .line 3038
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 3039
    .local v2, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to save lock ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") Password "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    return v7
.end method

.method public checkVoldPassword(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 635
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public clearBiometricAttemptDeadline(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 3149
    const-string/jumbo v0, "lockscreen.lockout_biometric_attempt_deadline"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3150
    const-string/jumbo v0, "lockscreen.lockout_biometric_attempt_timeoutms"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3148
    return-void
.end method

.method public clearEncryptionPassword()V
    .locals 2

    .prologue
    .line 1226
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 1225
    return-void
.end method

.method public clearFailedFMMUnlockAttempt(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2816
    const-string/jumbo v0, "lockscreen.failed_fmm_attempts"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2815
    return-void
.end method

.method public clearFailedUnlockAttempt(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2770
    const-string/jumbo v0, "lockscreen.failed_attempts"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2769
    return-void
.end method

.method public clearLock(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 750
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 754
    invoke-virtual {p0, v5, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 756
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline(I)V

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearFailedFMMUnlockAttempt(I)V

    .line 764
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 765
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 766
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V

    .line 768
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->sendLockTypeChangedInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :goto_0
    if-nez p1, :cond_0

    .line 776
    const/4 v1, 0x1

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 778
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 781
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    .line 749
    return-void

    .line 770
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActivePasswordQuality(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 708
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 710
    .local v0, "quality":I
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockDirectionEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    const/16 v1, 0x1000

    return v1

    .line 715
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 717
    return v0

    .line 720
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    return v0

    .line 726
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 728
    const v1, 0x9100

    return v1

    .line 731
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public getBiometricLockscreen(II)I
    .locals 7
    .param p1, "biometric_type"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2827
    const-string/jumbo v2, "lockscreen.samsung_biometric"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 2829
    .local v0, "biometric":I
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 2832
    .local v1, "isUPSM":Z
    :goto_0
    and-int v2, v0, p1

    if-ne v2, p1, :cond_0

    if-eqz v1, :cond_2

    .line 2835
    :cond_0
    return v6

    .line 2829
    .end local v1    # "isUPSM":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isUPSM":Z
    goto :goto_0

    .line 2833
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public getBiometricType(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2844
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 2846
    .local v0, "isUPSM":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2847
    return v1

    .end local v0    # "isUPSM":Z
    :cond_0
    move v0, v1

    .line 2844
    goto :goto_0

    .line 2849
    .restart local v0    # "isUPSM":Z
    :cond_1
    const-string/jumbo v1, "lockscreen.samsung_biometric"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method

.method public getCarrierLockoutAttemptDeadline(I)J
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 2975
    const-string/jumbo v4, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v4, v6, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 2976
    .local v0, "deadline":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2977
    .local v2, "now":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2978
    return-wide v6

    .line 2980
    :cond_0
    return-wide v0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    return v0
.end method

.method public getDeviceOwnerInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 977
    const-string/jumbo v0, "lockscreen.device_owner_info"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 257
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 260
    const-string/jumbo v0, "LockPatternUtils"

    const-string/jumbo v1, "Can\'t get DevicePolicyManagerService: is it running?"

    .line 261
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getEnabledTrustAgents(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
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
    .line 1938
    const-string/jumbo v4, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1939
    .local v2, "serialized":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1940
    const/4 v4, 0x0

    return-object v4

    .line 1942
    :cond_0
    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1943
    .local v3, "split":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, v3

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1944
    .local v0, "activeTrustAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v3, v4

    .line 1945
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1946
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1944
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1949
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getFailedFMMUnlockAttempt(I)J
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2807
    const-string/jumbo v0, "lockscreen.failed_fmm_attempts"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFailedUnlockAttempt(I)J
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2761
    const-string/jumbo v0, "lockscreen.failed_attempts"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1236
    const-string/jumbo v0, "lockscreen.password_type"

    .line 1237
    const-wide/16 v2, 0x0

    .line 1236
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLockoutAttemptDeadline(I)J
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 1782
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 1783
    .local v0, "deadline":J
    const-string/jumbo v6, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 1788
    .local v4, "timeoutMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1790
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    cmp-long v6, v0, v8

    if-eqz v6, :cond_0

    .line 1792
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1793
    const-string/jumbo v6, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1794
    return-wide v8

    .line 1796
    :cond_0
    add-long v6, v2, v4

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1798
    add-long v0, v2, v4

    .line 1799
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1801
    :cond_1
    return-wide v0
.end method

.method public getLockoutBiometricAttemptDeadline(I)J
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 3124
    const-string/jumbo v6, "lockscreen.lockout_biometric_attempt_deadline"

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 3125
    .local v0, "deadline":J
    const-string/jumbo v6, "lockscreen.lockout_biometric_attempt_timeoutms"

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 3126
    .local v4, "timeoutMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3127
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    cmp-long v6, v0, v8

    if-eqz v6, :cond_0

    .line 3129
    const-string/jumbo v6, "lockscreen.lockout_biometric_attempt_deadline"

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3130
    const-string/jumbo v6, "lockscreen.lockout_biometric_attempt_timeoutms"

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3131
    return-wide v8

    .line 3134
    :cond_0
    add-long v6, v2, v4

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 3136
    add-long v0, v2, v4

    .line 3137
    const-string/jumbo v6, "lockscreen.lockout_biometric_attempt_deadline"

    invoke-direct {p0, v6, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3140
    :cond_1
    return-wide v0
.end method

.method public getMaximumFailedPasswordsForWipe(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 395
    const/4 v1, 0x0

    .line 394
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 954
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerButtonInstantlyLocks(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1860
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getRecoveryPassword(I)Ljava/lang/String;
    .locals 13
    .param p1, "userHandle"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 1870
    const/4 v8, 0x0

    .line 1871
    .local v8, "recoveryPassword":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1872
    sget-object v1, Landroid/provider/SemSecurityContract$Passwords;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    .line 1873
    const-string/jumbo v3, "password"

    aput-object v3, v2, v11

    .line 1874
    const-string/jumbo v3, "user_id=?"

    .line 1875
    new-array v4, v12, [Ljava/lang/String;

    .line 1876
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v11

    .line 1871
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1879
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1881
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 1882
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1883
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1888
    .end local v8    # "recoveryPassword":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1893
    :cond_1
    :goto_0
    if-nez v8, :cond_2

    .line 1894
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->generateRecoveryPassword()Ljava/lang/String;

    move-result-object v8

    .line 1898
    .local v8, "recoveryPassword":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords(I)V

    .line 1901
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1902
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    const-string/jumbo v0, "set_date"

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1904
    const-string/jumbo v0, "user_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1905
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SemSecurityContract$Passwords;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1908
    .end local v8    # "recoveryPassword":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_2
    return-object v8

    .line 1885
    .local v8, "recoveryPassword":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1886
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1888
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1887
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1888
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1887
    throw v0
.end method

.method public getRecoveryScreenLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2494
    const-string/jumbo v0, "lockscreen.lockedoutRecovery"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getRejectModeLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2697
    const-string/jumbo v0, "lockscreen.lgt_reject_cause"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getStrongAuthForUser(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2038
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getStrongAuthForUser(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2039
    :catch_0
    move-exception v0

    .line 2040
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    const-string/jumbo v2, "Could not get StrongAuth"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2041
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v1

    return v1
.end method

.method public isAppLockFingerPrintLockscreen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2333
    const-string/jumbo v0, "lockscreen.applock_fingerprint"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isCACPasswordEnabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2347
    const-string/jumbo v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCACPasswordEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.smartcard_type"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    const-string/jumbo v0, "lockscreen.smartcard_type"

    invoke-direct {p0, v0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isCarrierLockPlusEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2939
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2940
    :catch_0
    move-exception v0

    .line 2941
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isCarrierPasswordSaved(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 3055
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3056
    :catch_0
    move-exception v0

    .line 3057
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isCredentialRequiredToDecrypt(Z)Z
    .locals 5
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 1986
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 1987
    const-string/jumbo v3, "require_password_to_decrypt"

    .line 1986
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1988
    .local v0, "value":I
    if-ne v0, v4, :cond_0

    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_0
.end method

.method public isDeviceOwnerInfoEnabled()Z
    .locals 1

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDevicePasswordSimple(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1865
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "is_smpw_key"

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isEnterpriseIdentityLockSet(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 499
    const-string/jumbo v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IsEnterpriseIdSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string/jumbo v0, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isFMMLockEnabled(I)Z
    .locals 2
    .param p1, "userid"    # I

    .prologue
    .line 3069
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveFMMPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3070
    :catch_0
    move-exception v0

    .line 3071
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isFingerprintAllowedForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2057
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v1

    and-int/lit8 v1, v1, -0x1d

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLegacyLockPatternEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1559
    const-string/jumbo v0, "legacy_lock_pattern_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isLockDirectionEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1572
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockDirectionEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1484
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabledNoCache(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1501
    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v4, v6

    .line 1502
    .local v4, "mode":J
    const-string/jumbo v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v2, v6

    .line 1503
    .local v2, "backupMode":J
    const-wide/32 v6, 0x40000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 1504
    const-wide/32 v6, 0x20000

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 1503
    :cond_0
    const/4 v1, 0x1

    .line 1510
    .local v1, "passwordEnabled":Z
    :goto_0
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    .line 1511
    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    .line 1510
    :cond_1
    const/4 v0, 0x1

    .line 1516
    .local v0, "backupEnabled":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->havePasswordNoMDMCache(I)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v1, :cond_6

    .line 1517
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v6

    const v7, 0x8000

    if-ne v6, v7, :cond_7

    .line 1516
    .end local v0    # "backupEnabled":Z
    :goto_2
    return v0

    .line 1505
    .end local v1    # "passwordEnabled":Z
    :cond_2
    const-wide/32 v6, 0x30000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 1506
    const-wide/32 v6, 0x50000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 1507
    const-wide/32 v6, 0x60000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 1508
    const-wide/32 v6, 0x70000

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    const/4 v1, 0x1

    .restart local v1    # "passwordEnabled":Z
    goto :goto_0

    .end local v1    # "passwordEnabled":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "passwordEnabled":Z
    goto :goto_0

    .line 1512
    :cond_4
    const-wide/32 v6, 0x30000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    .line 1513
    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    .line 1514
    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_5

    const/4 v0, 0x1

    .restart local v0    # "backupEnabled":Z
    goto :goto_1

    .end local v0    # "backupEnabled":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "backupEnabled":Z
    goto :goto_1

    .line 1516
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 1517
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 1516
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public isLockPatternEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1551
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isLockScreenDisabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    const-string/jumbo v0, "lockscreen.disabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    .line 802
    if-nez v0, :cond_1

    .line 805
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxKioskModeEnabled()Z

    move-result v0

    .line 802
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOwnerInfoEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 958
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPatternEverChosen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 700
    const-string/jumbo v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1473
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1474
    .local v0, "mode":I
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1475
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v1

    .line 1474
    if-nez v1, :cond_0

    .line 1476
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockDirectionEnabled(II)Z

    move-result v1

    .line 1474
    if-nez v1, :cond_0

    .line 1477
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v1

    .line 1474
    if-nez v1, :cond_0

    .line 1478
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked(I)Z

    move-result v1

    .line 1474
    if-nez v1, :cond_0

    .line 1479
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(II)Z

    move-result v1

    .line 1474
    if-nez v1, :cond_0

    .line 1480
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v1

    .line 1474
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSeparateProfileChallengeAllowed(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1289
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1290
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->isSeparateProfileChallengeAllowed(I)Z

    move-result v1

    return v1

    .line 1291
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSeparateProfileChallengeAllowedToUnify(I)Z
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileActivePasswordSufficientForParent(I)Z

    move-result v0

    return v0
.end method

.method public isSeparateProfileChallengeEnabled(I)Z
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 1267
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1268
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1272
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1273
    const/4 v2, 0x1

    return v2

    .line 1269
    :cond_0
    return v4

    .line 1277
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->getSeparateProfileChallengeEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1278
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LockPatternUtils"

    const-string/jumbo v3, "Couldn\'t get separate profile challenge enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    return v4
.end method

.method public isSmartCardPasswordEnabled(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 2362
    const/4 v2, 0x0

    .line 2363
    .local v2, "ret":Z
    const-string/jumbo v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 2365
    .local v0, "mode":J
    const-wide/32 v4, 0x70000

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 2366
    const/4 v2, 0x1

    .line 2368
    :cond_0
    return v2
.end method

.method public isSmartUnlockEnabled(I)Z
    .locals 4
    .param p1, "userid"    # I

    .prologue
    .line 3082
    const-string/jumbo v1, "lockscreen.password_type"

    .line 3083
    const-wide/32 v2, 0x10000

    .line 3082
    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 3084
    .local v0, "quality":I
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(II)Z

    move-result v1

    return v1
.end method

.method public isSmartUnlockEnabled(II)Z
    .locals 2
    .param p1, "quality"    # I
    .param p2, "userid"    # I

    .prologue
    const/4 v0, 0x0

    .line 3088
    const v1, 0x9100

    if-eq p1, v1, :cond_0

    .line 3089
    const/high16 v1, 0x90000

    if-ne p1, v1, :cond_1

    .line 3090
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v1

    .line 3088
    if-eqz v1, :cond_1

    .line 3091
    const-string/jumbo v1, "lock_smart_unlock_enabled"

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    .line 3088
    :cond_1
    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1752
    sget-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->sSupportHapticFeedback:Z

    if-nez v2, :cond_0

    .line 1753
    return v1

    .line 1755
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 1756
    const-string/jumbo v3, "haptic_feedback_enabled"

    const/4 v4, -0x2

    .line 1755
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isTrustAllowedForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2049
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTrustUsuallyManaged(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 212
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    instance-of v1, v1, Lcom/android/internal/widget/ILockSettings$Stub;

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "May only be called by TrustManagerService. Use TrustManager.isTrustUsuallyManaged()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.istrustusuallymanaged"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public isVisiblePatternDisabledByMDM()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1539
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 1540
    .local v0, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1541
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1543
    :cond_1
    return v1
.end method

.method public isVisiblePatternEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1595
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;I)[B
    .locals 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1430
    if-nez p1, :cond_0

    .line 1431
    const/4 v11, 0x0

    return-object v11

    .line 1440
    :cond_0
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 1441
    .local v7, "saltedPassword":[B
    const/4 v10, 0x0

    .line 1442
    .local v10, "sha":[B
    const-string/jumbo v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 1443
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1444
    .local v8, "s":J
    const/4 v5, 0x0

    .end local v10    # "sha":[B
    .local v5, "i":I
    :goto_0
    const/16 v11, 0x400

    if-ge v5, v11, :cond_2

    .line 1445
    if-eqz v10, :cond_1

    invoke-virtual {v6, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 1446
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 1447
    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 1448
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    .line 1444
    .local v10, "sha":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1450
    .end local v10    # "sha":[B
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1451
    .local v2, "e":J
    const-string/jumbo v11, "LockPatternUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "passwordToHash time = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v2, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    return-object v11

    .line 1453
    .end local v2    # "e":J
    .end local v5    # "i":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local v7    # "saltedPassword":[B
    .end local v8    # "s":J
    :catch_0
    move-exception v4

    .line 1454
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v11, Ljava/lang/AssertionError;

    const-string/jumbo v12, "Missing digest algorithm: "

    invoke-direct {v11, v12, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method

.method public passwordToHashOriginal(Ljava/lang/String;I)[B
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 1408
    if-nez p1, :cond_0

    .line 1409
    return-object v6

    .line 1413
    :cond_0
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1414
    .local v4, "saltedPassword":[B
    const-string/jumbo v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1415
    .local v5, "sha1":[B
    const-string/jumbo v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1417
    .local v3, "md5":[B
    array-length v6, v5

    array-length v7, v3

    add-int/2addr v6, v7

    new-array v0, v6, [B

    .line 1418
    .local v0, "combined":[B
    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v7, v0, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1419
    array-length v6, v5

    array-length v7, v3

    const/4 v8, 0x0

    invoke-static {v3, v8, v0, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1421
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    .line 1422
    .local v2, "hexEncoded":[C
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 1423
    .end local v0    # "combined":[B
    .end local v2    # "hexEncoded":[C
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_0
    move-exception v1

    .line 1424
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Missing digest algorithm: "

    invoke-direct {v6, v7, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    .line 2019
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2017
    return-void

    .line 2020
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not register StrongAuthTracker"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeBiometricLockscreen(II)V
    .locals 6
    .param p1, "biometric_type"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2782
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v1

    .line 2783
    .local v1, "oldValue":I
    not-int v2, p1

    and-int v0, v1, v2

    .line 2784
    .local v0, "newValue":I
    const-string/jumbo v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeBiometricLockscreen ( oldValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , newValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    const-string/jumbo v2, "lockscreen.samsung_biometric"

    int-to-long v4, v0

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2781
    return-void
.end method

.method public removeRecoveryPasswords(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SemSecurityContract$Passwords;->CONTENT_URI:Landroid/net/Uri;

    .line 1914
    const-string/jumbo v2, "user_id=?"

    .line 1915
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 1916
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1913
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1912
    return-void
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 366
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 367
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 364
    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 372
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 377
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline(I)V

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearFailedFMMUnlockAttempt(I)V

    .line 370
    return-void
.end method

.method public requireCredentialEntry(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1960
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1959
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1975
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1973
    :goto_0
    return-void

    .line 1976
    :catch_0
    move-exception v0

    .line 1977
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while requesting strong auth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetKeyStore(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 739
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->resetKeyStore(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t reset keystore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sanitizePassword()V
    .locals 4

    .prologue
    .line 915
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t sanitize password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .prologue
    .line 2283
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_1

    .line 2284
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPin(Ljava/lang/String;I)V

    .line 2281
    :cond_0
    :goto_0
    return-void

    .line 2285
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_2

    .line 2286
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2292
    :catch_0
    move-exception v0

    .line 2293
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to save lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2287
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_3

    .line 2288
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPattern(Ljava/lang/String;I)V

    goto :goto_0

    .line 2289
    :cond_3
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_0

    .line 2290
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockBackupPin(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public saveLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 2612
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2610
    :goto_0
    return-void

    .line 2613
    :catch_0
    move-exception v0

    .line 2615
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to save lock Backup PIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveLockDirection(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 829
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V

    .line 824
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 14
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 1123
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 1124
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-ge v11, v12, :cond_1

    .line 1125
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "password must not be null and at least of length 4"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v9

    .line 1183
    .local v9, "re":Landroid/os/RemoteException;
    const-string/jumbo v11, "LockPatternUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to save lock password "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    .end local v9    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1129
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v2

    .line 1130
    .local v2, "computedQuality":I
    const-string/jumbo v11, "lockscreen.password_type"

    move/from16 v0, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-long v12, v12

    move/from16 v0, p4

    invoke-direct {p0, v11, v12, v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1131
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v11

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-interface {v11, p1, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1134
    const/high16 v11, 0x70000

    move/from16 v0, p3

    if-ne v0, v11, :cond_2

    .line 1135
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 1139
    :cond_2
    if-nez p4, :cond_3

    .line 1140
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1141
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v11

    .line 1140
    if-eqz v11, :cond_5

    .line 1142
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 1154
    :cond_3
    :goto_1
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(II)V

    .line 1157
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/widget/ILockSettings;->sendLockTypeChangedInfo()V

    .line 1162
    const-string/jumbo v11, "lockscreen.passwordhistory"

    move/from16 v0, p4

    invoke-direct {p0, v11, v0}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1163
    .local v7, "passwordHistory":Ljava/lang/String;
    if-nez v7, :cond_4

    .line 1164
    const-string/jumbo v7, ""

    .line 1166
    :cond_4
    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v8

    .line 1167
    .local v8, "passwordHistoryLength":I
    if-nez v8, :cond_a

    .line 1168
    const-string/jumbo v7, ""

    .line 1178
    :goto_2
    const-string/jumbo v11, "lockscreen.passwordhistory"

    move/from16 v0, p4

    invoke-direct {p0, v11, v7, v0}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1179
    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->updateEnterpriseIdentityLock(I)V

    .line 1180
    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    goto :goto_0

    .line 1145
    .end local v7    # "passwordHistory":Ljava/lang/String;
    .end local v8    # "passwordHistoryLength":I
    :cond_5
    const/high16 v11, 0x20000

    .line 1144
    if-ne v2, v11, :cond_7

    const/4 v5, 0x1

    .line 1147
    .local v5, "numeric":Z
    :goto_3
    const/high16 v11, 0x30000

    .line 1146
    if-ne v2, v11, :cond_8

    const/4 v6, 0x1

    .line 1148
    .local v6, "numericComplex":Z
    :goto_4
    if-nez v5, :cond_6

    if-eqz v6, :cond_9

    :cond_6
    const/4 v10, 0x3

    .line 1150
    .local v10, "type":I
    :goto_5
    invoke-direct {p0, v10, p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    goto :goto_1

    .line 1144
    .end local v5    # "numeric":Z
    .end local v6    # "numericComplex":Z
    .end local v10    # "type":I
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "numeric":Z
    goto :goto_3

    .line 1146
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "numericComplex":Z
    goto :goto_4

    .line 1149
    :cond_9
    const/4 v10, 0x0

    goto :goto_5

    .line 1170
    .end local v5    # "numeric":Z
    .end local v6    # "numericComplex":Z
    .restart local v7    # "passwordHistory":Ljava/lang/String;
    .restart local v8    # "passwordHistoryLength":I
    :cond_a
    move/from16 v0, p4

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1171
    .local v4, "hash":[B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v12, v4, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1174
    array-length v11, v4

    mul-int/2addr v11, v8

    add-int/2addr v11, v8

    add-int/lit8 v11, v11, -0x1

    .line 1175
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    .line 1174
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_2
.end method

.method public saveLockPattern(Ljava/util/List;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 838
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 848
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V

    .line 847
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 6
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "isDirectionLock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZZ)V

    .line 857
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;IZZ)V
    .locals 8
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "isDirectionLock"    # Z
    .param p5, "isSmartUnlock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x4

    .line 862
    const-string/jumbo v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "LockPatternUtils.saveLockPattern() userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isDirectionLock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isSmartUnlock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v7, :cond_1

    .line 865
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "pattern must not be null and at least 4 dots long."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :catch_0
    move-exception v2

    .line 906
    .local v2, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t save lock pattern "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 868
    :cond_1
    const/high16 v1, 0x10000

    .line 869
    .local v1, "passwordQuality":I
    if-eqz p4, :cond_4

    .line 870
    const/16 v1, 0x1000

    .line 876
    :cond_2
    :goto_1
    :try_start_1
    invoke-direct {p0, v1, p3}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(II)V

    .line 877
    const-string/jumbo v4, "lockscreen.password_type"

    int-to-long v6, v1

    invoke-direct {p0, v4, v6, v7, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 879
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 880
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 883
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p3, :cond_3

    .line 884
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    move-result v4

    if-nez v4, :cond_5

    .line 885
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v4

    .line 884
    if-eqz v4, :cond_5

    .line 886
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 897
    :cond_3
    :goto_2
    const-string/jumbo v4, "lockscreen.patterneverchosen"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 900
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/widget/ILockSettings;->sendLockTypeChangedInfo()V

    .line 903
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    .line 904
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->updateEnterpriseIdentityLock(I)V

    goto :goto_0

    .line 871
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_4
    if-eqz p5, :cond_2

    .line 873
    const v1, 0x9100

    goto :goto_1

    .line 888
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_5
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 889
    .local v3, "stringPattern":Ljava/lang/String;
    if-eqz p4, :cond_6

    .line 890
    const/4 v4, 0x4

    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    goto :goto_2

    .line 892
    :cond_6
    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public saveLockRecoveryPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 2510
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 2511
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "password must not be null and at least of length 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2517
    :catch_0
    move-exception v0

    .line 2519
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to save lock Recovery password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2515
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockRecoveryPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2516
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, p3, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public savePrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2866
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->PIN:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    if-ne p3, v1, :cond_1

    .line 2867
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPrivateModeLockPin(Ljava/lang/String;I)V

    .line 2864
    :cond_0
    :goto_0
    return-void

    .line 2868
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->Password:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    if-ne p3, v1, :cond_2

    .line 2869
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPrivateModeLockPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2875
    :catch_0
    move-exception v0

    .line 2876
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to save lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2870
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    if-ne p3, v1, :cond_3

    .line 2871
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Lcom/android/internal/widget/ILockSettings;->setPrivateModeLockPattern(Ljava/lang/String;I)V

    goto :goto_0

    .line 2872
    :cond_3
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    if-ne p3, v1, :cond_0

    .line 2873
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPrivateModeLockBackupPin(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public saveRemoteLockPassword(ILjava/lang/String;I)V
    .locals 4
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 2993
    packed-switch p1, :pswitch_data_0

    .line 2992
    :goto_0
    return-void

    .line 2997
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2998
    :catch_0
    move-exception v0

    .line 3000
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to save lock FMM Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3006
    .end local v0    # "re":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockCarrierPassword(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3007
    :catch_1
    move-exception v0

    .line 3009
    .restart local v0    # "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to save lock Carrier Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2993
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public saveUCMLockPassword(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 2341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mIsCallerUCM:Z

    .line 2342
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2340
    return-void
.end method

.method public savedAppLockPasswordExists(Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .locals 3
    .param p1, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2315
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v1, :cond_0

    .line 2316
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPin(I)Z

    move-result v1

    return v1

    .line 2317
    :cond_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v1, :cond_1

    .line 2318
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPassword(I)Z

    move-result v1

    return v1

    .line 2319
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v1, :cond_2

    .line 2320
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPattern(I)Z

    move-result v1

    return v1

    .line 2321
    :cond_2
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v1, :cond_3

    .line 2322
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2323
    :cond_3
    return v2

    .line 2324
    :catch_0
    move-exception v0

    .line 2325
    .local v0, "re":Landroid/os/RemoteException;
    return v2
.end method

.method public savedBackupPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2627
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveBackupPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2628
    :catch_0
    move-exception v0

    .line 2629
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public savedPrivateModePasswordExists(Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;I)Z
    .locals 3
    .param p1, "mode"    # Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2914
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->PIN:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    if-ne p1, v1, :cond_0

    .line 2915
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->havePrivateModePin(I)Z

    move-result v1

    return v1

    .line 2916
    :cond_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->Password:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    if-ne p1, v1, :cond_1

    .line 2917
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->havePrivateModePassword(I)Z

    move-result v1

    return v1

    .line 2918
    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    if-ne p1, v1, :cond_2

    .line 2919
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->havePrivateModePattern(I)Z

    move-result v1

    return v1

    .line 2920
    :cond_2
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    if-ne p1, v1, :cond_3

    .line 2921
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/internal/widget/ILockSettings;->havePrivateModeBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2922
    :cond_3
    return v2

    .line 2923
    :catch_0
    move-exception v0

    .line 2924
    .local v0, "re":Landroid/os/RemoteException;
    return v2
.end method

.method public setAppLockFingerPrintLockscreen(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2329
    const-string/jumbo v0, "lockscreen.applock_fingerprint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2328
    return-void
.end method

.method public setBiometricLockscreen(II)V
    .locals 1
    .param p1, "biometric_type"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2720
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    .line 2719
    return-void
.end method

.method public setBiometricLockscreen(III)V
    .locals 6
    .param p1, "biometric_type"    # I
    .param p2, "state"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2724
    if-nez p1, :cond_0

    .line 2725
    const-string/jumbo v3, "lockscreen.samsung_biometric"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v4, v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2723
    :goto_0
    return-void

    .line 2727
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v1

    .line 2730
    .local v1, "oldValue":I
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 2731
    or-int v0, v1, p1

    .line 2732
    .local v0, "newValue":I
    const-string/jumbo v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBiometricLockscreen ( oldValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , newValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    const-string/jumbo v3, "lockscreen.samsung_biometric"

    int-to-long v4, v0

    invoke-direct {p0, v3, v4, v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    goto :goto_0

    .line 2736
    .end local v0    # "newValue":I
    :cond_1
    not-int v3, p1

    and-int v2, v1, v3

    .line 2737
    .local v2, "removedvalue":I
    const-string/jumbo v3, "lockscreen.samsung_biometric"

    int-to-long v4, v2

    invoke-direct {p0, v3, v4, v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public setCACPassword(ZI)Z
    .locals 3
    .param p1, "status"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2352
    const-string/jumbo v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCACPassword : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    const-string/jumbo v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCACPassword : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    const-string/jumbo v0, "lockscreen.smartcard_type"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2355
    const/4 v0, 0x1

    return v0
.end method

.method public setCarrierLockoutAttemptDeadline(I)J
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 2962
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long v0, v2, v4

    .line 2963
    .local v0, "deadline":J
    const-string/jumbo v2, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2964
    return-wide v0
.end method

.method public setCredentialRequiredToDecrypt(Z)V
    .locals 3
    .param p1, "required"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1992
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isPrimaryUser()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxUser(I)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    .line 1993
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1994
    const-string/jumbo v1, "Only the system or primary user may call setCredentialRequiredForDecrypt()"

    .line 1993
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v0

    .line 1992
    goto :goto_0

    .line 1997
    :cond_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1998
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1999
    const-string/jumbo v2, "require_password_to_decrypt"

    if-eqz p1, :cond_3

    .line 1998
    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1991
    :cond_2
    return-void

    .line 1999
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setDeviceOwnerInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 969
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    const/4 p1, 0x0

    .line 973
    .end local p1    # "info":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "lockscreen.device_owner_info"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 968
    return-void
.end method

.method public setDirectionShowEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1683
    if-eqz p2, :cond_0

    .line 1684
    return-void

    .line 1687
    :cond_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1688
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 1689
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    return-void

    .line 1693
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1695
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "DirectionShow"

    if-eqz p1, :cond_2

    const-string/jumbo v3, "1"

    :goto_0
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    :goto_1
    return-void

    .line 1695
    :cond_2
    const-string/jumbo v3, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1696
    :catch_0
    move-exception v0

    .line 1697
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Error changing direction show state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setDirectionSoundEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1659
    if-eqz p2, :cond_0

    .line 1660
    return-void

    .line 1663
    :cond_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1664
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 1665
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    return-void

    .line 1669
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1671
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "DirectionSound"

    if-eqz p1, :cond_2

    const-string/jumbo v3, "1"

    :goto_0
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    :goto_1
    return-void

    .line 1671
    :cond_2
    const-string/jumbo v3, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1672
    :catch_0
    move-exception v0

    .line 1673
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Error changing direction sound state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setDirectionVibrationEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1635
    if-eqz p2, :cond_0

    .line 1636
    return-void

    .line 1639
    :cond_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1640
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 1641
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    return-void

    .line 1645
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1647
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "DirectionVibration"

    if-eqz p1, :cond_2

    const-string/jumbo v3, "1"

    :goto_0
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    :goto_1
    return-void

    .line 1647
    :cond_2
    const-string/jumbo v3, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1648
    :catch_0
    move-exception v0

    .line 1649
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Error changing direction vibration state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setDirectionVoiceEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1707
    if-eqz p2, :cond_0

    .line 1708
    return-void

    .line 1711
    :cond_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1712
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 1713
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    return-void

    .line 1717
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1719
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "DirectionVoice"

    if-eqz p1, :cond_2

    const-string/jumbo v3, "1"

    :goto_0
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    :goto_1
    return-void

    .line 1719
    :cond_2
    const-string/jumbo v3, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Error changing direction voice state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setEnabledTrustAgents(Ljava/util/Collection;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1926
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1927
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1928
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1929
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1931
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1933
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    const-string/jumbo v3, "lockscreen.enabledtrustagents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1934
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1925
    return-void
.end method

.method public setEnterpriseIdentityLock(ZI)Z
    .locals 1
    .param p1, "status"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 504
    const-string/jumbo v0, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public setEnterpriseIdentitySelected(ZI)Z
    .locals 3
    .param p1, "select"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 491
    const/16 v1, 0x64

    if-lt p2, v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "lockscreen.enterpriseidentity_selected"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 492
    :cond_0
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 495
    :cond_1
    return v0
.end method

.method public setLegacyLockPatternEnabled(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1564
    const-string/jumbo v0, "lock_pattern_autolock"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1563
    return-void
.end method

.method public setLockScreenDisabled(ZI)V
    .locals 1
    .param p1, "disable"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 792
    const-string/jumbo v0, "lockscreen.disabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 791
    return-void
.end method

.method public setLockoutAttemptDeadline(I)J
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v6, 0x5

    const-wide/16 v4, 0x1

    .line 2557
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->sLockoutAttemptTimeoutLevel:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/internal/widget/LockPatternUtils;->sLockoutAttemptTimeoutLevel:J

    .line 2558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2559
    .local v0, "deadline":J
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->sLockoutAttemptTimeoutLevel:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2560
    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    .line 2573
    :cond_0
    :goto_0
    const-string/jumbo v2, "lockscreen.lockoutAttemptTimeoutLevel"

    sget-wide v4, Lcom/android/internal/widget/LockPatternUtils;->sLockoutAttemptTimeoutLevel:J

    invoke-direct {p0, v2, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2574
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 2575
    return-wide v0

    .line 2561
    :cond_1
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->sLockoutAttemptTimeoutLevel:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 2562
    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    goto :goto_0

    .line 2563
    :cond_2
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->sLockoutAttemptTimeoutLevel:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2564
    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    goto :goto_0

    .line 2565
    :cond_3
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->sLockoutAttemptTimeoutLevel:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 2566
    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    goto :goto_0

    .line 2567
    :cond_4
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->sLockoutAttemptTimeoutLevel:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    .line 2568
    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    goto :goto_0

    .line 2569
    :cond_5
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->sLockoutAttemptTimeoutLevel:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 2570
    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .prologue
    .line 1769
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long v0, v2, v4

    .line 1771
    .local v0, "deadline":J
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1772
    const-string/jumbo v2, "lockscreen.lockoutattempttimeoutmss"

    int-to-long v4, p2

    invoke-direct {p0, v2, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1773
    return-wide v0
.end method

.method public setLockoutBiometricAttemptDeadline(II)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .prologue
    .line 3110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long v0, v2, v4

    .line 3112
    .local v0, "deadline":J
    const-string/jumbo v2, "lockscreen.lockout_biometric_attempt_deadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3113
    const-string/jumbo v2, "lockscreen.lockout_biometric_attempt_timeoutms"

    int-to-long v4, p2

    invoke-direct {p0, v2, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 3114
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 944
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 945
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    .line 943
    return-void
.end method

.method public setOwnerInfoEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 949
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 950
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    .line 948
    return-void
.end method

.method public setPowerButtonInstantlyLocks(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1856
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1855
    return-void
.end method

.method public setRecoveryScreenLocked(ZI)V
    .locals 4
    .param p1, "locked"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2477
    const-string/jumbo v1, "lockscreen.lockedoutRecovery"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2480
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->sendLockTypeChangedInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2476
    :goto_0
    return-void

    .line 2481
    :catch_0
    move-exception v0

    .line 2482
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t send changed info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRejectModeLocked(ZI)V
    .locals 1
    .param p1, "locked"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2708
    const-string/jumbo v0, "lockscreen.lgt_reject_cause"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 2707
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    .locals 4
    .param p1, "userHandle"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Ljava/lang/String;

    .prologue
    .line 1251
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1252
    .local v1, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1254
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 1256
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1257
    :catch_0
    move-exception v0

    .line 1258
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LockPatternUtils"

    const-string/jumbo v3, "Couldn\'t update work profile challenge enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmartUnlockEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userid"    # I

    .prologue
    .line 3100
    const-string/jumbo v0, "lock_smart_unlock_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 3099
    return-void
.end method

.method public setTrustUsuallyManaged(ZI)V
    .locals 3
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.istrustusuallymanaged"

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setVisiblePasswordEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1730
    if-eqz p2, :cond_0

    .line 1731
    return-void

    .line 1734
    :cond_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1735
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 1736
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    return-void

    .line 1740
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1742
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "PasswordVisible"

    if-eqz p1, :cond_2

    const-string/jumbo v3, "1"

    :goto_0
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    :goto_1
    return-void

    .line 1742
    :cond_2
    const-string/jumbo v3, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1743
    :catch_0
    move-exception v0

    .line 1744
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Error changing password visible state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setVisiblePatternEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1603
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 1604
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Could not enable visible pattern by IT admin."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    return-void

    .line 1608
    :cond_0
    const-string/jumbo v3, "lock_pattern_visible_pattern"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1611
    if-eqz p2, :cond_1

    .line 1612
    return-void

    .line 1615
    :cond_1
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1616
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_2

    .line 1617
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    return-void

    .line 1621
    :cond_2
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1623
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "PatternVisible"

    if-eqz p1, :cond_3

    const-string/jumbo v3, "1"

    :goto_0
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    :goto_1
    return-void

    .line 1623
    :cond_3
    const-string/jumbo v3, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1624
    :catch_0
    move-exception v0

    .line 1625
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Error changing pattern visible state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    .line 2027
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2025
    :goto_0
    return-void

    .line 2028
    :catch_0
    move-exception v0

    .line 2029
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    const-string/jumbo v2, "Could not unregister StrongAuthTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCarrierLockPlus(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2947
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->updateCarrierLockPlusMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2948
    :catch_0
    move-exception v0

    .line 2949
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable updateCarrierLockPlus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    const/4 v1, 0x0

    return v1
.end method

.method public userPresent(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 233
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->userPresent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public verifyBackupPassword(Ljava/lang/String;JI)[B
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2675
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyBackupPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2678
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 2679
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    return-object v2

    .line 2680
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2681
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2685
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 2686
    .local v0, "re":Landroid/os/RemoteException;
    return-object v4

    .line 2683
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return-object v4
.end method

.method public verifyPassword(Ljava/lang/String;JI)[B
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 552
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 555
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 557
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 558
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    return-object v2

    .line 559
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 560
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 565
    .local v0, "re":Landroid/os/RemoteException;
    return-object v4

    .line 562
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return-object v4
.end method

.method public verifyPattern(Ljava/util/List;JI)[B
    .locals 6
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;JI)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v4, 0x0

    .line 424
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 427
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 428
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_0

    .line 430
    return-object v4

    .line 433
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 434
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    return-object v2

    .line 435
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 436
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 441
    .local v0, "re":Landroid/os/RemoteException;
    return-object v4

    .line 438
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    return-object v4
.end method

.method public verifyTiedProfileChallenge(Ljava/lang/String;ZJI)[B
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "isPattern"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 581
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->throwIfCalledOnMainThread()V

    .line 584
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/widget/ILockSettings;->verifyTiedProfileChallenge(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    .line 587
    .local v7, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 588
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v1

    return-object v1

    .line 589
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 590
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 595
    .local v0, "re":Landroid/os/RemoteException;
    return-object v8

    .line 592
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return-object v8
.end method
