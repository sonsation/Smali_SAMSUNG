.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$2;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$3;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;
    }
.end annotation


# static fields
.field private static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final DEBUG:Z

.field private static final EMERGENCY_MODE_ENABLED:Z

.field private static final MAP_MAX_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_LIMIT:I = 0x2710

.field static final TYPE_NOTIFICATION:I = 0x1


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDisableNotificationAlerts:Z

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGearVrDocked:Z

.field private final mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

.field private mHandler:Landroid/os/Handler;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mLockState:I

.field private final mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

.field private final mNotificationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPolicyType:I

.field private mPolicyVersion:J

.field private mResumedComponent:Landroid/content/ComponentName;

.field private mResumedComponentTime:J

.field private mRinging:Z

.field private mStatusBarDisabled1:I

.field private mUseHeadsUp:Z

.field private mVrMode:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrDocked:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    .line 63
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 69
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 70
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    .line 69
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 69
    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 69
    :goto_0
    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    .line 59
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    .line 80
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 100
    iput-boolean v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    .line 102
    iput v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    .line 106
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 108
    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-direct {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 112
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    .line 114
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    .line 116
    iput-boolean v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    .line 118
    iput v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 120
    iput-boolean v6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    .line 127
    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 136
    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$2;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 144
    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$3;

    invoke-direct {v3, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$3;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .line 200
    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 202
    new-instance v3, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v3, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 203
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 204
    const-string v3, "desktopmode"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 206
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v3

    iput v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    .line 207
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 209
    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {v3}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 210
    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {v3}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 211
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->registerReceiver()V

    .line 212
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->registerCoverListener()V

    .line 213
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v7}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 214
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 215
    const-string v4, "heads_up_notifications_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 216
    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 214
    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    const-string v3, "vrmanager"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v2

    .line 219
    .local v2, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v2, :cond_0

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v2, v3}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    const-string v3, "vr"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerService;

    move-result-object v1

    .line 228
    .local v1, "gearVrManager":Lcom/samsung/android/vr/IGearVrManagerService;
    if-eqz v1, :cond_1

    .line 230
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    invoke-interface {v1, v3}, Lcom/samsung/android/vr/IGearVrManagerService;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    :goto_1
    return-void

    .line 222
    .end local v1    # "gearVrManager":Lcom/samsung/android/vr/IGearVrManagerService;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register VR mode state listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "gearVrManager":Lcom/samsung/android/vr/IGearVrManagerService;
    :catch_1
    move-exception v0

    .line 232
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register VR mode state listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 235
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get GearVrManager."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private cleanUp()V
    .locals 10

    .prologue
    .line 631
    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 632
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/16 v6, 0xa

    if-ge v4, v6, :cond_0

    monitor-exit v5

    .line 633
    return-void

    .line 635
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 636
    .local v2, "now":J
    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 637
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 638
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 639
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    iget-wide v6, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    cmp-long v4, v6, v2

    if-gez v4, :cond_1

    .line 640
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 631
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;>;>;"
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;>;>;"
    .restart local v2    # "now":J
    :cond_2
    monitor-exit v5

    .line 630
    return-void
.end method

.method private getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplicationInfo : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v1, 0x0

    return-object v1
.end method

.method private getEdgeLightingRestrictState(I)I
    .locals 6
    .param p1, "range"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 677
    iget-boolean v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    if-eqz v3, :cond_0

    .line 678
    return v4

    .line 681
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v3, v4, :cond_3

    .line 682
    const/4 v0, 0x1

    .line 683
    .local v0, "coverOpen":Z
    const/4 v2, 0x2

    .line 684
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v3, :cond_1

    .line 685
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 686
    .local v1, "cs":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 687
    .local v0, "coverOpen":Z
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    .line 689
    .end local v0    # "coverOpen":Z
    .end local v1    # "cs":Lcom/samsung/android/cover/CoverState;
    :cond_1
    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isSupportedCover(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq p1, v4, :cond_3

    .line 690
    :cond_2
    const/4 v3, 0x2

    return v3

    .line 694
    .end local v2    # "type":I
    :cond_3
    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    if-eqz v3, :cond_4

    .line 695
    const/4 v3, 0x3

    return v3

    .line 698
    :cond_4
    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 699
    const/16 v3, 0xa

    return v3

    .line 702
    :cond_5
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 703
    const/16 v3, 0xb

    return v3

    .line 705
    :cond_6
    return v5
.end method

.method private getRejectablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "range"    # I

    .prologue
    const/4 v3, 0x0

    .line 392
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 393
    return-object v3

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v0

    .line 396
    .local v0, "policyInfo":Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    if-nez v0, :cond_1

    .line 397
    return-object v3

    .line 399
    :cond_1
    iget v1, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    .line 400
    return-object v0

    .line 402
    :cond_2
    return-object v3
.end method

.method private isDeviceInGearVrDocked()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mGearVrDocked:Z

    return v0
.end method

.method private isDeviceInVrMode()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return v0
.end method

.method public static isEmptyText(Landroid/os/Bundle;)Z
    .locals 4
    .param p0, "extra"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 612
    if-nez p0, :cond_0

    .line 613
    return v3

    .line 615
    :cond_0
    const-string v0, "tickerText"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    return v2

    .line 618
    :cond_1
    const-string v0, "titleText"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 619
    return v2

    .line 621
    :cond_2
    const-string v0, "text"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 622
    return v2

    .line 624
    :cond_3
    const-string v0, "subText"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 625
    return v2

    .line 627
    :cond_4
    return v3
.end method

.method private isMirrorLinkOn()Z
    .locals 2

    .prologue
    .line 318
    const-string v0, "1"

    const-string v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSupportedCover(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 709
    packed-switch p1, :pswitch_data_0

    .line 713
    const/4 v0, 0x0

    return v0

    .line 711
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidApplication(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 338
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 342
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private manageDisableRecoredLocked(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 499
    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 500
    .local v0, "N":I
    const/4 v3, 0x0

    .line 502
    .local v3, "record":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 503
    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    .line 504
    .local v4, "t":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    iget-object v5, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 505
    move-object v3, v4

    .line 509
    .end local v3    # "record":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    .end local v4    # "t":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    :cond_0
    if-eqz p1, :cond_4

    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 515
    if-nez v3, :cond_1

    .line 516
    new-instance v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    invoke-direct {v3, p0, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;)V

    .line 518
    .local v3, "record":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p3, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .end local v3    # "record":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    :cond_1
    iput p1, v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    .line 526
    iput-object p3, v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    .line 527
    iput-object p2, v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    .line 498
    :cond_2
    :goto_1
    return-void

    .line 502
    .local v3, "record":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    .restart local v4    # "t":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 510
    .end local v3    # "record":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    .end local v4    # "t":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    :cond_4
    if-eqz v3, :cond_2

    .line 511
    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 512
    iget-object v5, v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v3, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_1

    .line 519
    .local v3, "record":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    :catch_0
    move-exception v1

    .line 520
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "manageDisableRecoredLocked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method private registerCoverListener()V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$5;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V

    .line 261
    .local v0, "coverStateListener":Lcom/samsung/android/cover/CoverManager$StateListener;
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 254
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    new-instance v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$4;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V

    .line 251
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    return-void
.end method


# virtual methods
.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 479
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->manageDisableRecoredLocked(ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 477
    return-void

    .line 478
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public disableEdgeLighting(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disable"    # Z

    .prologue
    .line 484
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v2

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 486
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 487
    new-instance v0, Landroid/util/ArraySet;

    .end local v0    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 488
    .restart local v0    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    :cond_0
    if-eqz p3, :cond_1

    .line 491
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 483
    return-void

    .line 493
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 484
    .end local v0    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 732
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-EdgeLightingPolicy start : type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", version = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    sget-boolean v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 734
    :cond_0
    iget-object v9, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 735
    :try_start_0
    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 736
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 737
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 738
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 734
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;>;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 740
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;>;>;"
    :cond_1
    :try_start_1
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 743
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;>;>;"
    :cond_2
    iget-object v9, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 744
    :try_start_2
    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "record$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    .line 745
    .local v4, "record":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  [DisableRecord] : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 743
    .end local v4    # "record":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    .end local v5    # "record$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8

    .line 747
    .restart local v5    # "record$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v9

    .line 749
    iget-object v9, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v9

    .line 750
    :try_start_4
    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 751
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 752
    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 753
    .local v7, "type":I
    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 754
    .local v6, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  [DisabledPackages] : type "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 756
    .end local v6    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "type":I
    :cond_4
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v9

    .line 758
    sget-boolean v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v8, :cond_5

    sget-boolean v8, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v8, :cond_6

    .line 759
    :cond_5
    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string v9, "white"

    invoke-virtual {v8, p1, p2, p3, v9}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v8, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string v9, "black"

    invoke-virtual {v8, p1, p2, p3, v9}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_6
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    return-void

    .line 749
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_2
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method getAcceptablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "range"    # I

    .prologue
    const/4 v3, 0x0

    .line 378
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 379
    return-object v3

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v0

    .line 382
    .local v0, "policyInfo":Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    if-nez v0, :cond_1

    .line 383
    return-object v3

    .line 385
    :cond_1
    iget v1, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    .line 386
    return-object v0

    .line 388
    :cond_2
    return-object v3
.end method

.method getPolicyByCategory(ILjava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .locals 4
    .param p1, "category"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "policy":Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;
    if-ne p1, v2, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 412
    .end local v0    # "policy":Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v1

    if-ge v1, v2, :cond_3

    .line 413
    :cond_1
    return-object v3

    .line 409
    .restart local v0    # "policy":Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    .local v0, "policy":Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;
    goto :goto_0

    .line 415
    .end local v0    # "policy":Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v1

    return-object v1
.end method

.method public getResumedComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getValidNotificationData(Ljava/lang/String;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 647
    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 648
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 649
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    .local v0, "data":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    if-nez v0, :cond_0

    monitor-exit v4

    .line 651
    return-object v10

    .line 653
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 654
    :cond_1
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValidNotificationData packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 655
    iget-wide v6, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    sub-long v6, v2, v6

    .line 654
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_2
    iget-wide v6, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v6, v2, v6

    const-wide/16 v8, 0xfa0

    cmp-long v1, v6, v8

    if-gez v1, :cond_3

    monitor-exit v4

    .line 658
    return-object v0

    :cond_3
    monitor-exit v4

    .line 660
    return-object v10

    .line 647
    .end local v0    # "data":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .end local v2    # "now":J
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method isAcceptableApplication(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "range"    # I
    .param p3, "userId"    # I

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v0

    return v0
.end method

.method isAcceptableApplication(Ljava/lang/String;IZI)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "range"    # I
    .param p3, "includeAllApp"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 350
    const-string v5, "android"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    return v4

    .line 353
    :cond_0
    invoke-virtual {p0, v3, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getPolicyByCategory(ILjava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v2

    .line 355
    .local v2, "info":Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    const v5, 0xff00

    and-int/2addr v5, p2

    if-eqz v5, :cond_2

    .line 356
    if-eqz v2, :cond_1

    iget v5, v2, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    .line 359
    :cond_2
    if-nez p3, :cond_3

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    .line 360
    :cond_3
    invoke-direct {p0, p1, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isValidApplication(Ljava/lang/String;I)Z

    move-result v0

    .line 361
    .local v0, "accept":Z
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    iget v3, v2, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v3, p2

    if-nez v3, :cond_4

    .line 362
    const/4 v0, 0x0

    .line 367
    .end local v0    # "accept":Z
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 368
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 369
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_5

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_5
    const/4 v0, 0x0

    .line 371
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7

    .line 372
    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getRejectablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v3

    if-nez v3, :cond_b

    const/4 v0, 0x1

    .line 374
    :cond_7
    :goto_3
    return v0

    .line 365
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getAcceptablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    const/4 v0, 0x1

    .local v0, "accept":Z
    goto :goto_1

    .end local v0    # "accept":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "accept":Z
    goto :goto_1

    .line 369
    .end local v0    # "accept":Z
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_a
    const/4 v0, 0x1

    .restart local v0    # "accept":Z
    goto :goto_2

    .line 372
    .end local v0    # "accept":Z
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "accept":Z
    goto :goto_3
.end method

.method isEdgeLightingDisabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 434
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "EdgeLighting is disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 438
    return v2

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 442
    if-nez p2, :cond_0

    .line 443
    return v3

    .line 445
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v2

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v2

    .line 447
    return v3

    .line 449
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 450
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    monitor-exit v2

    .line 451
    return v3

    .line 453
    :cond_3
    :try_start_2
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    .line 454
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_4
    monitor-exit v2

    .line 457
    return v3

    .line 445
    .end local v0    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method isEdgeLightingRestricted(I)Z
    .locals 4
    .param p1, "range"    # I

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getEdgeLightingRestrictState(I)I

    move-result v0

    .line 424
    .local v0, "restrictState":I
    if-eqz v0, :cond_0

    .line 425
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EdgeLighting is Restricted("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v1, 0x1

    return v1

    .line 428
    :cond_0
    return v1
.end method

.method public isEnabledHeadsUp()Z
    .locals 3

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    if-nez v0, :cond_0

    .line 303
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHUNPeeked : UseHeadsUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x0

    return v0

    .line 306
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isHUNPeeked()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isDeviceInVrMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "isHUNPeeked : Vr mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v2

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isDeviceInGearVrDocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "isHUNPeeked : gear vr docked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v2

    .line 293
    :cond_1
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isMirrorLinkOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "isHUNPeeked : mirror link on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v2

    .line 298
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isNotificationForEdgeLighting(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v4, 0x0

    .line 532
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 533
    .local v0, "n":Landroid/app/Notification;
    if-nez v0, :cond_0

    .line 534
    return v4

    .line 536
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    return v4

    .line 539
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_2

    .line 540
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNotificationForEdgeLighting : small icon is null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return v4

    .line 543
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public putNotification(Landroid/service/notification/StatusBarNotification;ZZ)Landroid/os/Bundle;
    .locals 20
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isHeadUp"    # Z
    .param p3, "isUpdate"    # Z

    .prologue
    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    if-nez v15, :cond_0

    .line 551
    const/4 v15, 0x0

    return-object v15

    .line 553
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget-object v3, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 554
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget-object v15, v15, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v15, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget-object v13, v15, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 555
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    .line 556
    .local v10, "smallIcon":Landroid/graphics/drawable/Icon;
    const/4 v14, 0x0

    .line 557
    .local v14, "titleText":Ljava/lang/CharSequence;
    const/4 v12, 0x0

    .line 558
    .local v12, "text":Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .line 559
    .local v11, "subText":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    .line 561
    .local v4, "groupKey":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 562
    const-string v15, "android.title"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 563
    .local v14, "titleText":Ljava/lang/CharSequence;
    const-string v15, "android.text"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 564
    .local v12, "text":Ljava/lang/CharSequence;
    const-string v15, "android.subText"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 566
    .end local v11    # "subText":Ljava/lang/CharSequence;
    .end local v12    # "text":Ljava/lang/CharSequence;
    .end local v14    # "titleText":Ljava/lang/CharSequence;
    :cond_1
    sget-boolean v15, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v15, :cond_5

    .line 567
    sget-object v15, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "putNotification tickerText:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",titleText:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",text:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",sub:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "cn= + "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->cleanUp()V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 573
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget v5, v15, Landroid/app/Notification;->ledARGB:I

    .line 574
    .local v5, "ledColor":I
    if-nez v5, :cond_2

    .line 575
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 576
    .local v7, "oldData":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    if-eqz v7, :cond_2

    .line 577
    iget-object v15, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string v17, "color"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 581
    .end local v7    # "oldData":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 582
    .local v8, "now":J
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 583
    .local v2, "data":Landroid/os/Bundle;
    const-string v15, "isHeadup"

    move/from16 v0, p2

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 584
    const-string v15, "isUpdate"

    move/from16 v0, p3

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 585
    const-string v15, "tickerText"

    invoke-virtual {v2, v15, v13}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 586
    const-string v15, "titleText"

    invoke-virtual {v2, v15, v14}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 587
    const-string v15, "text"

    invoke-virtual {v2, v15, v12}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 588
    const-string v15, "subText"

    invoke-virtual {v2, v15, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 589
    const-string v15, "smallIcon"

    invoke-virtual {v2, v15, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 590
    const-string v15, "flag"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 591
    const-string v15, "color"

    invoke-virtual {v2, v15, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 592
    const-string v15, "notification_color"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->color:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    const-string v15, "priority"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    const-string v17, "component"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v15, "component_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v15, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 596
    const-string v15, "group_key"

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v15, "content_intent"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 598
    const-string v15, "user_id"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    const-string v15, "noti_key"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    new-instance v6, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    invoke-direct {v6, v8, v9, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;-><init>(JLandroid/os/Bundle;)V

    .line 602
    .local v6, "newData":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    if-eqz v4, :cond_3

    .line 603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->updateNotificationData(Landroid/service/notification/StatusBarNotification;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;)V

    .line 605
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v16

    .line 606
    return-object v2

    .line 554
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v4    # "groupKey":Ljava/lang/String;
    .end local v5    # "ledColor":I
    .end local v6    # "newData":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .end local v8    # "now":J
    .end local v10    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_4
    const/4 v13, 0x0

    .local v13, "tickerText":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 569
    .end local v13    # "tickerText":Ljava/lang/CharSequence;
    .restart local v4    # "groupKey":Ljava/lang/String;
    .restart local v10    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_5
    sget-object v16, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "putNotification tickerText:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v13, :cond_6

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ",titleText:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v14, :cond_7

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ",text:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v12, :cond_8

    const/4 v15, 0x1

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ",sub:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v11, :cond_9

    const/4 v15, 0x1

    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "cn= + "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    :cond_7
    const/4 v15, 0x0

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    goto :goto_6

    .line 594
    .restart local v2    # "data":Landroid/os/Bundle;
    .restart local v5    # "ledColor":I
    .restart local v8    # "now":J
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 572
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v5    # "ledColor":I
    .end local v8    # "now":J
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method public removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->remove(Landroid/service/notification/StatusBarNotification;)V

    .line 546
    return-void
.end method

.method public setResumedComponent(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 665
    if-eqz p1, :cond_0

    .line 666
    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    .line 664
    :cond_0
    return-void
.end method

.method setRinging(Z)V
    .locals 0
    .param p1, "ringing"    # Z

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    .line 418
    return-void
.end method

.method public statusBarDisabled(II)V
    .locals 8
    .param p1, "state1"    # I
    .param p2, "state2"    # I

    .prologue
    const/4 v4, 0x1

    const/high16 v7, 0x40000

    const/4 v5, 0x0

    .line 461
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 462
    .local v2, "old1":I
    xor-int v0, p1, v2

    .line 463
    .local v0, "diff1":I
    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v1, "flagdbg":Ljava/lang/StringBuilder;
    const-string v3, "disable: < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    and-int v3, p1, v7

    if-eqz v3, :cond_1

    const-string v3, "ALERTS"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    and-int v3, v0, v7

    if-eqz v3, :cond_2

    const-string v3, "* "

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateEventHistory(Ljava/lang/String;)V

    .line 471
    and-int v3, v0, v7

    if-eqz v3, :cond_0

    .line 472
    and-int v3, p1, v7

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    .line 473
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 460
    :cond_0
    return-void

    .line 466
    :cond_1
    const-string v3, "alerts"

    goto :goto_0

    .line 467
    :cond_2
    const-string v3, " "

    goto :goto_1

    :cond_3
    move v3, v5

    .line 472
    goto :goto_2
.end method

.method public updateEdgeLightingPolicyFromHost(Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .locals 4
    .param p1, "policy"    # Lcom/samsung/android/edge/EdgeLightingPolicy;

    .prologue
    .line 265
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->clear()V

    .line 266
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->clear()V

    .line 267
    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyType()I

    move-result v2

    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    .line 268
    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyVersion()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 269
    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getEdgeLightingPolicyInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    .line 270
    .local v0, "info":Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    iget v2, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v2, v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_0

    .line 272
    :cond_1
    iget v2, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v2, v0}, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_0

    .line 264
    .end local v0    # "info":Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    :cond_2
    return-void
.end method
