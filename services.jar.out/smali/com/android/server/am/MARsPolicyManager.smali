.class public Lcom/android/server/am/MARsPolicyManager;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsPolicyManager$1;,
        Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;,
        Lcom/android/server/am/MARsPolicyManager$Policy;,
        Lcom/android/server/am/MARsPolicyManager$PolicyException;
    }
.end annotation


# static fields
.field public static final APPLOCKER_KILL_TYPE:I = 0xc

.field public static final ARES_KILL_TYPE:I = 0x2

.field public static final AUTORUN_KILL_TYPE:I = 0xa

.field static AppSleep_Enable:Z = false

.field static App_StartUp_History:Z = false

.field static DEBUG_MARs:Z = false

.field static DEBUG_SCPM:Z = false

.field public static final DEFAULT_KILL_TYPE:I = 0x9

.field static GlobalModelWithChinaSIM:Z = false

.field private static final IMPORTANT_PKG_DUMP_FLAG:I = 0x3fff

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_APPLOCKER:I = 0x476c

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_ARES:I = 0xffff

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_AUTORUN:I = 0xfff9

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_FORCE:I = 0x1f40

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_GAMEMODE:I = 0x476c

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_SBIKE:I = 0x476c

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_UDS:I = 0x476c

.field private static final IMPORTANT_PKG_TYPE_ACTIVE_MUSIC_RECORD:I = 0x40

.field private static final IMPORTANT_PKG_TYPE_ACTIVE_TRAFFIC:I = 0x80

.field private static final IMPORTANT_PKG_TYPE_DEVICE_ADMIN:I = 0x100

.field private static final IMPORTANT_PKG_TYPE_HOME:I = 0x800

.field private static final IMPORTANT_PKG_TYPE_IME:I = 0x400

.field private static final IMPORTANT_PKG_TYPE_LATEST_PROTECTED:I = 0x2

.field private static final IMPORTANT_PKG_TYPE_LOCK_SCREEN:I = 0x2000

.field private static final IMPORTANT_PKG_TYPE_MAX:I = 0x8000

.field private static final IMPORTANT_PKG_TYPE_NO_APP_ICON:I = 0x10

.field private static final IMPORTANT_PKG_TYPE_ONGOING_NOTIFICATION:I = 0x4

.field private static final IMPORTANT_PKG_TYPE_RECENTLY_USED:I = 0x1

.field private static final IMPORTANT_PKG_TYPE_RUNNING_LOCATION:I = 0x8000

.field private static final IMPORTANT_PKG_TYPE_SYSTEM:I = 0x4000

.field private static final IMPORTANT_PKG_TYPE_TOP:I = 0x1000

.field private static final IMPORTANT_PKG_TYPE_VPN_SERVICE:I = 0x20

.field private static final IMPORTANT_PKG_TYPE_WALLPAPER:I = 0x200

.field private static final IMPORTANT_PKG_TYPE_WIDGET:I = 0x8

.field public static final INTENT_ACTION_STRING_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field static IsChinaModel:Z = false

.field public static final KILL_TYPE_DEFAULT:I = 0x1

.field public static final KILL_TYPE_MAX:I = 0x8

.field public static final KILL_TYPE_PKG_RESTART:I = 0x8

.field public static final KILL_TYPE_SKIP_ADJ_NONE:I = 0x2

.field public static final KILL_TYPE_SKIP_ADJ_UNDER_SERVICE:I = 0x4

.field static final MARS_SCPM_OPTIMIZIED_TYPE_SKIP:I = 0x3

.field static final MARS_SCPM_RESTRICTED_TYPE_BLACKLIST:I = 0x0

.field static final MARS_SCPM_RESTRICTED_TYPE_BLACKLIST_ACTIVE_TRAFFIC:I = 0x4

.field static final MARS_SCPM_RESTRICTED_TYPE_BLOCK:I = 0x1

.field static final MARS_SCPM_RESTRICTED_TYPE_SKIP:I = 0x2

.field static MARs_DEBUG_ENABLE:Z = false

.field static MARs_ENABLE:Z = false

.field public static final POLICY_NUM_APPLOCKER:I = 0x1

.field public static final POLICY_NUM_ARES:I = 0x3

.field public static final POLICY_NUM_AUTORUN:I = 0x2

.field public static final POLICY_NUM_FORCE:I = 0x0

.field public static final POLICY_NUM_GAMEMODE:I = 0x6

.field public static final POLICY_NUM_SBIKE:I = 0x5

.field public static final POLICY_NUM_UDS:I = 0x4

.field public static final POLICY_TARGET_CATEGORY_ALL:I = 0x1

.field public static final POLICY_TARGET_CATEGORY_ALWAYS_OPTIMIZING:I = 0xc

.field public static final POLICY_TARGET_CATEGORY_ALWAYS_OPTIMIZING_AND_NOTUSEDRECENTLY:I = 0xd

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF:I = 0x14

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF_AND_NOTUSEDRECENTLY:I = 0x15

.field public static final POLICY_TARGET_CATEGORY_AUTO_OPTIMIZING:I = 0xa

.field public static final POLICY_TARGET_CATEGORY_GLOBAL_AUTORUN_OFF:I = 0x18

.field public static final POLICY_TARGET_CATEGORY_SBIKE:I = 0x17

.field public static final POLICY_TARGET_CATEGORY_TURNED_OFF:I = 0xb

.field public static final POLICY_TARGET_CATEGORY_UDS:I = 0x16

.field private static final PROTECTED_PACKAGES_LIMIT:I = 0x6

.field static final REQUEST_CNT_TRACKING_START_TIME:J = 0x493e0L

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_APPLOCKER:I = 0x157b8110

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_ARES:I = 0xf90880

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_AUTORUN:I = 0xf90880

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_GAMEMODE:I = 0x1000110

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_SBIKE:I = 0x1000112

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_UDS:I = 0x1000220

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCKALL:I = 0x1

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTFG:I = 0x2

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTSYSTEM:I = 0x4

.field public static final RESTRICTION_TYPE_BACKUP_BLOCKALL:I = 0x1000000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCKALL:I = 0x1000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_C2DM:I = 0x8000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_EDGE_INTENT:I = 0x80000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMFG:I = 0x2000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMLAUNCHER:I = 0x100000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMSYSTEM:I = 0x4000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_GEAR_INTENT:I = 0x10000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_HIGH_PRIORITY_GCM:I = 0x40000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_KIES_INTENT:I = 0x200000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_MEDIA_INTENT:I = 0x400000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_SELF_INTENT:I = 0x800000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_SPECIALINTENTS_FOR_SKT:I = 0x20000

.field public static final RESTRICTION_TYPE_EXCEPT_CARMODE_OFF:I = 0x8000000

.field public static final RESTRICTION_TYPE_EXCEPT_CARMODE_ON:I = 0x10000000

.field public static final RESTRICTION_TYPE_EXCEPT_LCD_OFF:I = 0x2000000

.field public static final RESTRICTION_TYPE_EXCEPT_LCD_ON:I = 0x4000000

.field public static final RESTRICTION_TYPE_NONE:I = 0x0

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCKALL:I = 0x100

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_AUTORUNBLOCK:I = 0x800

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTFG:I = 0x200

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTSYSTEM:I = 0x400

.field public static final RESTRICTION_TYPE_SERVICE_BLOCKALL:I = 0x10

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_AUTORUNBLOCK:I = 0x80

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTFG:I = 0x20

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTSYSTEM:I = 0x40

.field static final TAG:Ljava/lang/String; = "MARsPolicyManager"

.field static final TAG_KILL_SKIPADJ:Ljava/lang/String; = "MARs-Kill-SkipAdj-"

.field static final TAG_KILL_SKIPNONE:Ljava/lang/String; = "MARs-Kill-SkipNone-"

.field public static nonStickyKillAdj:I


# instance fields
.field private final TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J

.field private UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

.field private final UPDATE_PACKAGES_SCORE_INTERNAL_TIME:J

.field private appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private gameModePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field lastScreenOffStartTime:J

.field public lastTriggerTime:J

.field mAccessibilityContentObserver:Landroid/database/ContentObserver;

.field private mActiveAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveAdminsUpdated:Z

.field private mAllPoliciesOn:I

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAppSizeIncreased:J

.field private mAppUsedRecently:Z

.field private mBoundAppWidgetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCalibrationResetTime:J

.field private mCarModeOn:Z

.field mContext:Landroid/content/Context;

.field mCoreManager:Lcom/android/server/am/MARsCoreManager;

.field private mCurrentHomePackage:Ljava/lang/String;

.field mDBManager:Lcom/android/server/am/MARsDBManager;

.field private mDataConnectionIsConnected:Z

.field public mDataTrafficAmount:J

.field private mDefaultIMEPackage:Ljava/lang/String;

.field mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmergencyTime:J

.field private mEnabledAccessibilityPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTimeExcutingPolicy:Z

.field private mFirstTimeUpdatePackages:Z

.field mInputMethodObserver:Landroid/database/ContentObserver;

.field private mIsEmergencyKillEnabled:Z

.field private mIsImmediateKillEnabled:Z

.field private mIsLCDonKillEnabled:Z

.field private mIsManualMode:Z

.field public mLatestProtectedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchedAppBeforeInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;",
            ">;"
        }
    .end annotation
.end field

.field private mLockScreenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockingTimeChanged:Z

.field private final mMARsLock:Ljava/lang/Object;

.field private final mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mMARsUpdatePackagesThread:Ljava/lang/Thread;

.field private mManagedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationCountDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPeriodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationUpdateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mNotificationUpdatedCount:J

.field private mOngoingNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyExceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$PolicyException;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningLocationPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmBlackListValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmBlockValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmSkipOptimizationValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmSkipValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mSpecialSKTPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageStatDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageStatPeriodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU_RX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU_TX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mTrigger:Lcom/android/server/am/MARsTrigger;

.field private mUnusedAREsTime:J

.field public mUnusedAutoFreezeTime:J

.field private mUnusedLockingTime:J

.field private mVpnServicePackage:Ljava/lang/String;

.field private mWallpaperPackage:Ljava/lang/String;

.field private mWhiteListIntentsForSKT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/am/MARsPolicyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/MARsPolicyManager;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;
    .locals 1
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->checkCarModeState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getEnabledAccessibilityPackage()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateFromMARsThread()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateLaunchedBeforeInitToManaged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    .line 95
    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_SCPM:Z

    .line 97
    const-string/jumbo v0, "sys.config.mars"

    const-string/jumbo v3, "true"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 98
    const-string/jumbo v0, "sys.config.mars.debug"

    const-string/jumbo v3, "false"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_DEBUG_ENABLE:Z

    .line 101
    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    .line 104
    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 107
    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->IsChinaModel:Z

    .line 110
    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 671
    const/16 v0, 0x1f4

    sput v0, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillAdj:I

    .line 92
    return-void

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    :cond_1
    move v1, v2

    .line 98
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gameModePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 648
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 672
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->lastTriggerTime:J

    .line 674
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UPDATE_PACKAGES_SCORE_INTERNAL_TIME:J

    .line 682
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

    .line 683
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    .line 684
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    const-wide/32 v2, 0x36ee80

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 686
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 689
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J

    .line 692
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    .line 702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    .line 705
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    .line 706
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    .line 707
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    .line 708
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 716
    const-wide/32 v0, 0x2932e00

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAREsTime:J

    .line 717
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEmergencyTime:J

    .line 720
    const-string/jumbo v0, "sys.config.mars_immediate_kill"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsImmediateKillEnabled:Z

    .line 721
    const-string/jumbo v0, "sys.config.ares_lcdon_kill"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLCDonKillEnabled:Z

    .line 722
    const-string/jumbo v0, "sys.config.ares_emergency_kill"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsEmergencyKillEnabled:Z

    .line 731
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    .line 732
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    .line 733
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    .line 734
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    .line 735
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    .line 756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    .line 757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Ljava/util/ArrayList;

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockScreenList:Ljava/util/ArrayList;

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    .line 767
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsPolicyManager$1;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    .line 833
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 834
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 835
    new-instance v0, Lcom/android/server/am/MARsTrigger;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    .line 836
    new-instance v0, Lcom/android/server/am/MARsCoreManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/MARsCoreManager;-><init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsTrigger;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    .line 837
    new-instance v0, Lcom/android/server/am/MARsDBManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/MARsDBManager;-><init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsCoreManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    .line 839
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 832
    return-void

    .line 720
    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 721
    :cond_1
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 722
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_2
.end method

.method private checkCarModeState()V
    .locals 5

    .prologue
    .line 2031
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 2032
    .local v1, "mUiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 2033
    .local v0, "mCarMode":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    if-eq v2, v0, :cond_1

    .line 2034
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 2035
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Change the car mode state from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 2030
    :cond_1
    return-void

    .line 2032
    .end local v0    # "mCarMode":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "mCarMode":Z
    goto :goto_0
.end method

.method private convertDBValueToState(Lcom/android/server/am/MARsDBManager$SMDBValue;)I
    .locals 6
    .param p1, "srcpkg"    # Lcom/android/server/am/MARsDBManager$SMDBValue;

    .prologue
    .line 4165
    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SMDBValue;->strIsSMFreezed:Ljava/lang/String;

    .line 4166
    .local v3, "strIsSMFreezed":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    .line 4167
    .local v4, "strResetTime":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 4168
    .local v2, "strExtras":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    .line 4171
    .local v1, "strAutoRun":Ljava/lang/String;
    const/4 v0, 0x2

    .line 4174
    .local v0, "state":I
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_6

    .line 4175
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 4174
    if-eqz v5, :cond_6

    .line 4176
    const-string/jumbo v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4177
    const/4 v0, 0x2

    .line 4189
    :cond_0
    :goto_0
    return v0

    .line 4178
    :cond_1
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4179
    const/16 v0, 0x8

    goto :goto_0

    .line 4180
    :cond_2
    const-string/jumbo v5, "9"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4181
    const/4 v0, 0x1

    goto :goto_0

    .line 4182
    :cond_3
    const-string/jumbo v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4183
    const/16 v0, 0x10

    goto :goto_0

    .line 4184
    :cond_4
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4185
    const/16 v0, 0x10

    goto :goto_0

    .line 4186
    :cond_5
    const-string/jumbo v5, "9"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4187
    const/16 v0, 0x10

    goto :goto_0

    .line 4192
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v5, :cond_8

    :cond_7
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v5, :cond_e

    .line 4193
    :cond_8
    const-string/jumbo v5, "9"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4194
    const/4 v0, 0x1

    .line 4204
    :cond_9
    :goto_1
    return v0

    .line 4195
    :cond_a
    const-string/jumbo v5, "9"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 4196
    const/16 v0, 0x10

    goto :goto_1

    .line 4197
    :cond_b
    const-string/jumbo v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 4198
    const/4 v0, 0x2

    goto :goto_1

    .line 4199
    :cond_c
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 4200
    const/16 v0, 0x8

    goto :goto_1

    .line 4201
    :cond_d
    const-string/jumbo v5, "2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4202
    const/4 v0, 0x4

    goto :goto_1

    .line 4207
    :cond_e
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_12

    .line 4208
    const-string/jumbo v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4209
    const/16 v0, 0x10

    .line 4215
    :cond_f
    :goto_2
    return v0

    .line 4210
    :cond_10
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 4211
    const/16 v0, 0x8

    goto :goto_2

    .line 4212
    :cond_11
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string/jumbo v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 4213
    const/4 v0, 0x2

    goto :goto_2

    .line 4217
    :cond_12
    return v0
.end method

.method private convertDBValueToState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "strIsSMFreezed"    # Ljava/lang/String;
    .param p2, "strExtras"    # Ljava/lang/String;

    .prologue
    .line 4119
    const/4 v0, 0x2

    .line 4121
    .local v0, "state":I
    const-string/jumbo v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4122
    const/4 v0, 0x1

    .line 4134
    :cond_0
    :goto_0
    return v0

    .line 4123
    :cond_1
    const-string/jumbo v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4124
    const/16 v0, 0x10

    goto :goto_0

    .line 4126
    :cond_2
    const-string/jumbo v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4127
    const/4 v0, 0x2

    goto :goto_0

    .line 4128
    :cond_3
    const-string/jumbo v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4129
    const/16 v0, 0x8

    goto :goto_0

    .line 4130
    :cond_4
    const-string/jumbo v1, "2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4131
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private convertStateToAutorun(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 4271
    sparse-switch p1, :sswitch_data_0

    .line 4280
    return v0

    .line 4274
    :sswitch_0
    return v0

    .line 4278
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 4271
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private convertStateToDBExtrasValue(II)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I
    .param p2, "dbExtras"    # I

    .prologue
    .line 4246
    sparse-switch p1, :sswitch_data_0

    .line 4266
    :cond_0
    const-string/jumbo v0, "0"

    return-object v0

    .line 4248
    :sswitch_0
    const-string/jumbo v0, "0"

    return-object v0

    .line 4250
    :sswitch_1
    const-string/jumbo v0, "9"

    return-object v0

    .line 4252
    :sswitch_2
    const-string/jumbo v0, "1"

    return-object v0

    .line 4254
    :sswitch_3
    const-string/jumbo v0, "2"

    return-object v0

    .line 4256
    :sswitch_4
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 4257
    const-string/jumbo v0, "9"

    return-object v0

    .line 4258
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 4259
    const-string/jumbo v0, "0"

    return-object v0

    .line 4260
    :cond_2
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    .line 4261
    const-string/jumbo v0, "1"

    return-object v0

    .line 4262
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 4263
    const-string/jumbo v0, "9"

    return-object v0

    .line 4246
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private excludeTargetPackage(Lcom/android/server/am/MARsPackageStatus;)Z
    .locals 7
    .param p1, "targetPackage"    # Lcom/android/server/am/MARsPackageStatus;

    .prologue
    const/4 v6, 0x0

    .line 1433
    const/4 v2, 0x0

    .line 1434
    .local v2, "match":Z
    const/4 v1, 0x0

    .end local v2    # "match":Z
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v5, v5, Lcom/android/server/am/MARsCoreManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 1435
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v5, v5, Lcom/android/server/am/MARsCoreManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;

    iget v0, v5, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->condition:I

    .line 1436
    .local v0, "condition":I
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v5, v5, Lcom/android/server/am/MARsCoreManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;

    iget-object v4, v5, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    .line 1437
    .local v4, "pkgNameMatchType":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v5, v5, Lcom/android/server/am/MARsCoreManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;

    iget-object v3, v5, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    .line 1439
    .local v3, "pkgName":Ljava/lang/String;
    iget v5, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_0

    .line 1440
    iget-object v5, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1441
    .local v2, "match":Z
    if-eqz v2, :cond_0

    .line 1442
    const/4 v5, 0x1

    return v5

    .line 1434
    .end local v2    # "match":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1446
    .end local v0    # "condition":I
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "pkgNameMatchType":Ljava/lang/String;
    :cond_1
    return v6
.end method

.method private forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;

    .prologue
    .line 3490
    const/4 v7, 0x0

    .line 3491
    .local v7, "isDefaultKillType":Z
    const/4 v3, 0x0

    .line 3492
    .local v3, "needSkipAdj":Z
    const/4 v9, 0x0

    .line 3493
    .local v9, "skipAdjUnderService":Z
    const/4 v5, 0x0

    .line 3494
    .local v5, "needPackageRestart":Z
    const/4 v4, 0x0

    .line 3495
    .local v4, "skipAdjValue":I
    const/4 v2, 0x0

    .line 3497
    .local v2, "killReason":Ljava/lang/String;
    const/4 v10, 0x1

    .end local v2    # "killReason":Ljava/lang/String;
    .local v10, "step":I
    :goto_0
    const/16 v0, 0x8

    if-gt v10, v0, :cond_0

    .line 3498
    iget v0, p2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    and-int/2addr v0, v10

    packed-switch v0, :pswitch_data_0

    .line 3497
    :goto_1
    :pswitch_0
    shl-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3500
    :pswitch_1
    const/4 v7, 0x1

    goto :goto_1

    .line 3503
    :pswitch_2
    const/4 v3, 0x0

    .line 3504
    const/4 v4, 0x0

    .line 3505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MARs-Kill-SkipNone-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "killReason":Ljava/lang/String;
    goto :goto_1

    .line 3508
    .end local v2    # "killReason":Ljava/lang/String;
    :pswitch_3
    const/4 v3, 0x1

    .line 3509
    sget v4, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillAdj:I

    .line 3510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MARs-Kill-SkipAdj-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "killReason":Ljava/lang/String;
    goto :goto_1

    .line 3513
    .end local v2    # "killReason":Ljava/lang/String;
    :pswitch_4
    const/4 v5, 0x1

    goto :goto_1

    .line 3518
    :cond_0
    const/4 v8, 0x1

    .line 3520
    .local v8, "isStopped":Z
    if-eqz v7, :cond_1

    .line 3521
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 3532
    .end local v8    # "isStopped":Z
    :goto_2
    return v8

    .line 3523
    .restart local v8    # "isStopped":Z
    :cond_1
    iget-object v11, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3524
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZIZI)Z

    move-result v8

    .line 3525
    .local v8, "isStopped":Z
    if-nez v8, :cond_2

    .line 3526
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_2

    .line 3527
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "forceKillPackage: don\'t force stop package="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v11

    .line 3523
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2

    .end local v8    # "isStopped":Z
    :catchall_0
    move-exception v0

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 3498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private formatDateTime(J)Ljava/lang/String;
    .locals 7
    .param p1, "dateTime"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 4350
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%21s"

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "null"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4351
    :cond_0
    const-string/jumbo v0, "%21s"

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const v4, 0x20015

    invoke-static {v3, p1, p2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4354
    const-string/jumbo v3, "\""

    .line 4351
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPolicyManager$Policy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x1

    .line 1663
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1664
    .local v3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->targetCategory:I

    .line 1666
    .local v0, "category":I
    if-ne v0, v6, :cond_3

    .line 1667
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1734
    :cond_0
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-eq v4, v6, :cond_1

    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_15

    .line 1735
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_15

    .line 1736
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1737
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v6, :cond_2

    .line 1738
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1739
    add-int/lit8 v1, v1, -0x1

    .line 1735
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1669
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_3
    const/16 v4, 0xa

    if-ne v0, v4, :cond_5

    .line 1670
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1671
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1672
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 1673
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1676
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_5
    const/16 v4, 0xb

    if-ne v0, v4, :cond_7

    .line 1677
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1678
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1679
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v6, :cond_6

    .line 1680
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1683
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_7
    const/16 v4, 0xc

    if-ne v0, v4, :cond_9

    .line 1684
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1685
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1686
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v5, :cond_8

    .line 1687
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1684
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1690
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_9
    const/16 v4, 0xd

    if-ne v0, v4, :cond_c

    .line 1691
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1692
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1693
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-eq v4, v5, :cond_a

    .line 1694
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v7, :cond_b

    .line 1695
    :cond_a
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1699
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_c
    const/16 v4, 0x14

    if-ne v0, v4, :cond_e

    .line 1700
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1701
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1702
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v5, :cond_d

    .line 1703
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1706
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_e
    const/16 v4, 0x15

    if-ne v0, v4, :cond_11

    .line 1707
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1708
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1709
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-eq v4, v5, :cond_f

    .line 1710
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v7, :cond_10

    .line 1711
    :cond_f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1715
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_11
    const/16 v4, 0x16

    if-ne v0, v4, :cond_13

    .line 1716
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1717
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1718
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I

    if-ne v4, v6, :cond_12

    .line 1719
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1723
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_13
    const/16 v4, 0x17

    if-ne v0, v4, :cond_0

    .line 1724
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1725
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1726
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->sbike:I

    if-ne v4, v6, :cond_14

    .line 1727
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1744
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_15
    return-object v3
.end method

.method private getActiveAdminsPackages()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2095
    const/4 v1, 0x0

    .line 2096
    .local v1, "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 2097
    .local v5, "mDpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 2099
    .local v0, "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_1

    .line 2100
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2101
    .local v1, "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "cmpName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 2102
    .local v3, "cmpName":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2103
    .local v2, "adminPkgName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2104
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2108
    .end local v1    # "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "adminPkgName":Ljava/lang/String;
    .end local v3    # "cmpName":Landroid/content/ComponentName;
    .end local v4    # "cmpName$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method

.method private getBoundAppWidgetPackages()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2132
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 2133
    .local v2, "mAwm":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v5

    .line 2134
    .local v5, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 2136
    .local v6, "userId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 2137
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2138
    .local v4, "provider":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2139
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v3, v6}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v1

    .line 2140
    .local v1, "isBound":Z
    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2136
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2141
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2144
    .end local v1    # "isBound":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "provider":Landroid/content/ComponentName;
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    return-object v7
.end method

.method private getDBExtrasValue(Lcom/android/server/am/MARsDBManager$SMDBValue;)I
    .locals 3
    .param p1, "srcpkg"    # Lcom/android/server/am/MARsDBManager$SMDBValue;

    .prologue
    .line 4224
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 4227
    .local v1, "strExtras":Ljava/lang/String;
    const/4 v0, 0x1

    .line 4230
    .local v0, "dbExtras":I
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_3

    .line 4231
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 4230
    if-eqz v2, :cond_3

    .line 4232
    const-string/jumbo v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4233
    const/4 v0, 0x4

    .line 4239
    :cond_0
    :goto_0
    return v0

    .line 4234
    :cond_1
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4235
    const/16 v0, 0x8

    goto :goto_0

    .line 4236
    :cond_2
    const-string/jumbo v2, "9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4237
    const/4 v0, 0x2

    goto :goto_0

    .line 4242
    :cond_3
    return v0
.end method

.method private getDefaultIMEPackage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1778
    const/4 v0, 0x0

    .line 1779
    .local v0, "strPreferredIME":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1781
    .local v0, "strPreferredIME":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1783
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1784
    .local v1, "tmp":[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1785
    aget-object v0, v1, v4

    .line 1789
    .end local v1    # "tmp":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getEnabledAccessibilityPackage()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 2148
    const/4 v3, 0x0

    .line 2149
    .local v3, "strAccessibility":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2150
    .local v2, "pkgName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2151
    .local v4, "tmp":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2153
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "enabled_accessibility_services"

    invoke-static {v5, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2154
    .local v3, "strAccessibility":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2155
    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2156
    .local v1, "mAccessibilityServiceList":[Ljava/lang/String;
    array-length v7, v1

    move v5, v6

    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v4    # "tmp":[Ljava/lang/String;
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, v1, v5

    .line 2157
    .local v0, "accessibilityservice":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2158
    const-string/jumbo v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2159
    .local v4, "tmp":[Ljava/lang/String;
    aget-object v8, v4, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 2160
    aget-object v2, v4, v6

    .line 2161
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2162
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2163
    const-string/jumbo v8, "MARsPolicyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getEnabledAccessibilityPackage: add mEnabledAccessibilityPackages "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v4    # "tmp":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2168
    .end local v0    # "accessibilityservice":Ljava/lang/String;
    .end local v1    # "mAccessibilityServiceList":[Ljava/lang/String;
    .local v2, "pkgName":Ljava/lang/String;
    .local v4, "tmp":[Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2147
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v4    # "tmp":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 2169
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v4    # "tmp":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2170
    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2171
    .local v4, "tmp":[Ljava/lang/String;
    aget-object v5, v4, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 2172
    aget-object v2, v4, v6

    .line 2173
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2174
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2175
    const-string/jumbo v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getEnabledAccessibilityPackage: add mEnabledAccessibilityPackages "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3873
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 3874
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3875
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .line 3876
    .local v1, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3877
    return-object v1

    .line 3874
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3880
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_1
    return-object v3
.end method

.method private getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;
    .locals 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/MARsPackageStatus;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    const/4 v3, 0x0

    .line 1404
    if-eqz p1, :cond_1

    .line 1405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1406
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageStatus;

    .line 1407
    .local v1, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v2, v1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1408
    return-object v1

    .line 1405
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1411
    .end local v0    # "i":I
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    return-object v3
.end method

.method private getNotiUpdateCount(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2065
    const/4 v0, -0x1

    .line 2066
    .local v0, "updateCount":I
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2067
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2068
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    monitor-exit v2

    .line 2071
    return v0

    .line 2066
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getRunningProcessImprotance(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1793
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1794
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1795
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1796
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1797
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,getRunningProcessImprotance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    return v3

    .line 1803
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    :cond_1
    const/16 v3, 0x3e8

    return v3
.end method

.method public static getSmartManagerPkgName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1135
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 1136
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v2, "com.samsung.android.sm"

    .line 1135
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasOngoingNotification(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "checkNotificationListener"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1759
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1760
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1762
    return v2

    .line 1766
    :cond_0
    if-eqz p2, :cond_1

    .line 1767
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1768
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 1769
    return v2

    :cond_1
    monitor-exit v1

    .line 1774
    const/4 v0, 0x0

    return v0

    .line 1759
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invokeNMGetNotificationCountInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1853
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getNotiUpdateCount(Ljava/lang/String;)I

    move-result v0

    .line 1855
    .local v0, "notiUpdateCount":I
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1856
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1857
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1858
    .local v1, "prevNotiCount":I
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    .end local v1    # "prevNotiCount":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1852
    return-void

    .line 1855
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private invokePMGetPackageSizeInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1830
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1831
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsPolicyManager$2;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    .line 1848
    .local v0, "mStatsObserver":Landroid/content/pm/IPackageStatsObserver$Stub;
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 1829
    return-void
.end method

.method private isActiveTrafficPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 3
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    .line 2341
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isActiveTrafficExisting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2342
    if-nez p2, :cond_1

    .line 2343
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2344
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - isActiveTrafficExisting!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    :cond_0
    const-string/jumbo v0, "ActiveTrafficExisting"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2347
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2349
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2813
    if-nez p1, :cond_0

    .line 2814
    return v8

    .line 2816
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2817
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->resumedAppForMARsLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2820
    .local v0, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 2821
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 2820
    if-eqz v4, :cond_1

    monitor-exit v5

    .line 2816
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2822
    return v9

    .line 2825
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const v6, 0x7fffffff

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getServices(II)Ljava/util/List;

    move-result-object v1

    .line 2826
    .local v1, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2827
    .local v2, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v4, :cond_2

    .line 2828
    if-eqz p1, :cond_2

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    .line 2829
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v6, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 2828
    if-eqz v4, :cond_2

    monitor-exit v5

    .line 2816
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2830
    return v9

    .end local v2    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    monitor-exit v5

    .line 2816
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2835
    return v8

    .line 2816
    .end local v0    # "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v3    # "serviceInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method private isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 5
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "hostingType"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3043
    const/4 v1, 0x0

    .line 3044
    .local v1, "callerPkgName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3047
    .local v0, "calleePkgName":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 3048
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3056
    .local v1, "callerPkgName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3057
    return v3

    .line 3050
    .local v1, "callerPkgName":Ljava/lang/String;
    :cond_0
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_1

    .line 3051
    const-string/jumbo v2, "MARsPolicyManager"

    const-string/jumbo v3, "Blocked by AutoRun policy !! -- Caller is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    :cond_1
    return v4

    .line 3061
    .local v1, "callerPkgName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3062
    return v3

    .line 3066
    :cond_3
    const-string/jumbo v2, "startService"

    if-eq p3, v2, :cond_4

    const-string/jumbo v2, "bindService"

    if-ne p3, v2, :cond_5

    .line 3067
    :cond_4
    invoke-direct {p0, v1, v0, p4}, Lcom/android/server/am/MARsPolicyManager;->isShouldSkipCaseForAutoRun(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    .line 3066
    if-eqz v2, :cond_5

    .line 3068
    return v3

    .line 3072
    :cond_5
    invoke-direct {p0, v1, p5}, Lcom/android/server/am/MARsPolicyManager;->isSamsungService(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isLauncherableApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->isLauncherableApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3073
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_6

    .line 3074
    const-string/jumbo v2, "MARsPolicyManager"

    const-string/jumbo v3, "Blocked by AutoRun policy !!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    :cond_6
    return v4

    .line 3079
    :cond_7
    invoke-direct {p0, v1, v0, p4}, Lcom/android/server/am/MARsPolicyManager;->isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3080
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_8

    .line 3081
    const-string/jumbo v2, "MARsPolicyManager"

    const-string/jumbo v3, "Blocked by AutoRun policy -- shouldBlock cases!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    :cond_8
    return v4

    .line 3086
    :cond_9
    const-string/jumbo v2, "bindService"

    if-ne p3, v2, :cond_f

    .line 3087
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isJobSchedulerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3088
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_a

    .line 3089
    const-string/jumbo v2, "MARsPolicyManager"

    const-string/jumbo v3, "Blocked by AutoRun policy -- JobSchedulerPackage!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    :cond_a
    return v4

    .line 3092
    :cond_b
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/am/MARsPolicyManager;->isSyncManagerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3093
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_c

    .line 3094
    const-string/jumbo v2, "MARsPolicyManager"

    const-string/jumbo v3, "Blocked by AutoRun policy -- SyncManagerPackage!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    :cond_c
    return v4

    .line 3097
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isBindNotificationListenerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3098
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_e

    .line 3099
    const-string/jumbo v2, "MARsPolicyManager"

    const-string/jumbo v3, "Blocked by AutoRun policy -- isBindNotificationListenerPackage!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    :cond_e
    return v4

    .line 3104
    :cond_f
    return v3
.end method

.method private isBindNotificationListenerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 3153
    if-nez p1, :cond_0

    .line 3154
    return v4

    .line 3156
    :cond_0
    const/4 v0, 0x0

    .line 3157
    .local v0, "bindNotiListenerPermissionFound":Z
    const/4 v3, 0x0

    .line 3159
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3160
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1

    .line 3162
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 3163
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_1

    .line 3164
    const-string/jumbo v4, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3165
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3164
    if-eqz v4, :cond_1

    .line 3166
    const/4 v0, 0x1

    .line 3167
    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AutoRun Policy isBindNotificationListenerPackage -- package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3175
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    :goto_0
    return v0

    .line 3170
    :catch_0
    move-exception v1

    .line 3171
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBindNotificationListenerPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCurrentLauncherApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2933
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 2934
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2933
    if-eqz v0, :cond_0

    .line 2935
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call from Current Launcher app :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    const/4 v0, 0x1

    return v0

    .line 2938
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isDefaultIMEPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 3
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2391
    if-nez p2, :cond_1

    .line 2392
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2393
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -default inputMethod package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    :cond_0
    const-string/jumbo v0, "DefaultIME"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2396
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2398
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isDependsOnSystemPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 5
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2428
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "system"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2430
    .local v0, "prSystem":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    .line 2431
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2432
    if-nez p2, :cond_1

    .line 2433
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_0

    .line 2434
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CurrentImportantPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -dependsOnSystem package!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    :cond_0
    const-string/jumbo v1, "DependsOnSystem"

    iput-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2437
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 2440
    :cond_2
    return v4
.end method

.method private isDeviceAdminPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 4
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2354
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isDeviceAdmin:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isRemovableAdmin:Z

    if-eqz v0, :cond_3

    .line 2365
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-eqz v0, :cond_6

    .line 2366
    if-nez p2, :cond_2

    .line 2367
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1

    .line 2368
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -is active device admin package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    :cond_1
    const-string/jumbo v0, "ActiveDeviceAdmin"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2371
    :cond_2
    return v3

    .line 2355
    :cond_3
    if-nez p2, :cond_5

    .line 2356
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_4

    .line 2357
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -isForceStopDisabled package from EDM!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    :cond_4
    const-string/jumbo v0, "EDMForceStopDisabled"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2361
    :cond_5
    return v3

    .line 2373
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private isEdgeIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/am/MARsCoreManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isForegroundPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1748
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->resumedAppForMARsLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1749
    .local v0, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1752
    .local v1, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1753
    const/4 v2, 0x1

    return v2

    .line 1755
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isGearManagerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/am/MARsCoreManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isHomePackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 3
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2404
    if-nez p2, :cond_1

    .line 2405
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2406
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -current home package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_0
    const-string/jumbo v0, "CurrentHome"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2409
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2411
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z
    .locals 5
    .param p1, "targetPackage"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "policyNum"    # I

    .prologue
    const/4 v4, 0x1

    .line 1451
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    .line 1453
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->excludeTargetPackage(Lcom/android/server/am/MARsPackageStatus;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1454
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInPolicyExceptionList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is exclude target package."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    return v4

    .line 1460
    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isSCPMSkipOptimizationPackage(ILcom/android/server/am/MARsPackageStatus;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1461
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "--Shouldn\'t be killed!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    return v4

    .line 1464
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isJobSchedulerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 3108
    if-nez p1, :cond_0

    .line 3109
    return v4

    .line 3111
    :cond_0
    const/4 v1, 0x0

    .line 3112
    .local v1, "jobPermissionFound":Z
    const/4 v3, 0x0

    .line 3114
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3115
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1

    .line 3117
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 3118
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_1

    .line 3119
    const-string/jumbo v4, "android.permission.BIND_JOB_SERVICE"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3120
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3119
    if-eqz v4, :cond_1

    .line 3121
    const/4 v1, 0x1

    .line 3122
    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AutoRun Policy isJobSchedulerPackage -- package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3130
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    :goto_0
    return v1

    .line 3125
    :catch_0
    move-exception v0

    .line 3126
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isJobSchedulerPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isKiesIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/am/MARsCoreManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isLatestProtectedPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 3
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2247
    if-nez p2, :cond_1

    .line 2248
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2249
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -is Latest Protected Package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    :cond_0
    const-string/jumbo v0, "LatestProtected"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2252
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2254
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isLauncherableApp(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 2964
    const-string/jumbo v4, "com.baidu.searchbox_samsung"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "com.bst.floatingmsgproxy"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2965
    :cond_0
    return v7

    .line 2968
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2969
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2970
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_5

    .line 2971
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v3

    .line 2972
    .local v3, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-nez v3, :cond_3

    .line 2973
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_2

    .line 2974
    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AutoRun Policy isLauncherableApp -- Not launcherable system package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    :cond_2
    const/4 v4, 0x0

    return v4

    .line 2977
    :cond_3
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_4

    .line 2978
    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AutoRun Policy isLauncherableApp -- Not launcherable 3rd party package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2979
    :cond_4
    return v7

    .line 2982
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :catch_0
    move-exception v0

    .line 2983
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isLaucherableApp exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    return v7
.end method

.method private isLockScreenPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 4
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    .line 2460
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2461
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockScreenList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockScreenList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2462
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2463
    if-nez p2, :cond_1

    .line 2464
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2465
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CurrentImportantPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -LockScreen package!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :cond_0
    const-string/jumbo v0, "LockScreen"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2468
    :cond_1
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 2470
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockScreenList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    .line 2474
    const/4 v0, 0x0

    return v0

    .line 2460
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isMediaIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/am/MARsCoreManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMusicOrRecordActive(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1807
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1809
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 1810
    .local v1, "mMusicIsActive":Z
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v2

    .line 1812
    .local v2, "mRecordIsActive":Z
    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1813
    :cond_1
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/MARsPolicyManager;->hasOngoingNotification(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getRunningProcessImprotance(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_3

    .line 1814
    :cond_2
    return v5

    .line 1816
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private isMusicOrRecordActivePackage(Lcom/android/server/am/MARsPackageStatus;ZZ)Z
    .locals 3
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "force"    # Z
    .param p3, "dump"    # Z

    .prologue
    .line 2326
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v0, :cond_1

    .line 2336
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2327
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isMusicOrRecordActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2328
    if-nez p3, :cond_3

    .line 2329
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_2

    .line 2330
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - isMusicOrRecordActive!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_2
    const-string/jumbo v0, "MusicOrRecordActive"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2333
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private isNoAppIconPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 3
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    .line 2299
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2300
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    if-eqz v0, :cond_2

    .line 2308
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 2301
    :cond_2
    if-nez p2, :cond_4

    .line 2302
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_3

    .line 2303
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - has No Icon!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :cond_3
    const-string/jumbo v0, "hasNoIcon"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2306
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private isOngoingNotificationPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 4
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2259
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    .line 2260
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->hasOngoingNotification(Ljava/lang/String;Z)Z

    move-result v0

    .line 2259
    if-eqz v0, :cond_2

    .line 2261
    if-nez p2, :cond_1

    .line 2262
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2263
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -hasOngoingNotification!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    :cond_0
    const-string/jumbo v0, "hasOngoingNotification"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2266
    :cond_1
    return v3

    .line 2268
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isRecentlyUsedPackage(Lcom/android/server/am/MARsPackageStatus;ZIZ)Z
    .locals 9
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z
    .param p3, "policyNum"    # I
    .param p4, "emergency"    # Z

    .prologue
    const/4 v8, 0x1

    .line 2217
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    .line 2219
    .local v2, "unUsedTime":J
    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    .line 2220
    if-eqz p4, :cond_4

    .line 2221
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->getSluggishAgingTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    .line 2222
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->getSluggishAgingTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long v2, v4, v6

    .line 2230
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-wide v6, p1, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    const/4 v0, 0x1

    .line 2231
    .local v0, "isUnusedAppTimeExpired":Z
    :goto_1
    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    .line 2232
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 2233
    :cond_1
    if-eqz v0, :cond_6

    .line 2242
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 2224
    .end local v0    # "isUnusedAppTimeExpired":Z
    :cond_3
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mEmergencyTime:J

    goto :goto_0

    .line 2227
    :cond_4
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAREsTime:J

    goto :goto_0

    .line 2230
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isUnusedAppTimeExpired":Z
    goto :goto_1

    .line 2234
    :cond_6
    iput-boolean v8, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    .line 2235
    if-nez p2, :cond_8

    .line 2236
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_7

    .line 2237
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CurrentImportantPackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - Used in last "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v6, 0xea60

    div-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mins!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    :cond_7
    const-string/jumbo v1, "UsedRecently"

    iput-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2240
    :cond_8
    return v8
.end method

.method private isRunningLocationPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 3
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2445
    const-string/jumbo v0, "com.baidu.BaiduMap"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.autonavi.minimap"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2446
    const-string/jumbo v0, "com.autonavi.xmgd.navigator"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2445
    if-nez v0, :cond_0

    .line 2446
    const-string/jumbo v0, "com.tencent.map"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2445
    if-nez v0, :cond_0

    .line 2447
    const-string/jumbo v0, "com.sogou.map.android.maps"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2445
    if-nez v0, :cond_0

    .line 2447
    const-string/jumbo v0, "com.baidu.navi"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2445
    if-nez v0, :cond_0

    .line 2448
    const-string/jumbo v0, "com.mapbar.android.mapbarmap"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2445
    if-nez v0, :cond_0

    .line 2448
    const-string/jumbo v0, "com.uu.uunavi"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2444
    if-eqz v0, :cond_3

    .line 2449
    :cond_0
    if-nez p2, :cond_2

    .line 2450
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1

    .line 2451
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - isRunningLocationPackages!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    :cond_1
    const-string/jumbo v0, "RunningLocation"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2454
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 2456
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isRunningPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2683
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 2684
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2685
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2686
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2687
    const/4 v3, 0x1

    return v3

    .line 2691
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    :cond_1
    return v4
.end method

.method private isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .param p1, "type"    # I
    .param p2, "policy_num"    # I
    .param p3, "calleePackage"    # Ljava/lang/String;
    .param p4, "callerPackage"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 4948
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :goto_0
    if-nez v6, :cond_1

    .line 4949
    return v7

    :cond_0
    move v6, v7

    .line 4948
    goto :goto_0

    .line 4952
    :cond_1
    const/4 v2, 0x0

    .line 4953
    .local v2, "isManagedPackage":Z
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 4954
    .local v5, "scpmManagedValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;>;"
    if-nez p1, :cond_6

    .line 4955
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4964
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 4965
    .local v0, "action":Ljava/lang/String;
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4966
    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4969
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    if-ne p2, v8, :cond_4

    .line 4970
    const-string/jumbo v6, "AutoRun"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4971
    .local v3, "scpmAutoRunManagedValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v3, :cond_4

    .line 4972
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 4973
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4974
    .local v4, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    invoke-direct {p0, v4, p3, p4, v0}, Lcom/android/server/am/MARsPolicyManager;->isSCPMValueMatch(Lcom/android/server/am/MARsDBManager$SCPMDBValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4975
    const/4 v2, 0x1

    .line 4984
    .end local v1    # "i":I
    .end local v3    # "scpmAutoRunManagedValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_4
    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->DEBUG_SCPM:Z

    if-eqz v6, :cond_5

    .line 4985
    const-string/jumbo v6, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSCPMManagedPackage --- calleePackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , callerPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4986
    const-string/jumbo v8, " , type="

    .line 4985
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4986
    const-string/jumbo v8, " , isManagedPackage="

    .line 4985
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4988
    :cond_5
    return v2

    .line 4956
    :cond_6
    const/4 v6, 0x1

    if-ne p1, v6, :cond_7

    .line 4957
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto/16 :goto_1

    .line 4958
    :cond_7
    if-ne p1, v8, :cond_8

    .line 4959
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto/16 :goto_1

    .line 4960
    :cond_8
    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    .line 4961
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto/16 :goto_1

    .line 4972
    .restart local v1    # "i":I
    .restart local v3    # "scpmAutoRunManagedValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .restart local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private isSCPMSkipOptimizationPackage(ILcom/android/server/am/MARsPackageStatus;I)Z
    .locals 10
    .param p1, "type"    # I
    .param p2, "targetPackage"    # Lcom/android/server/am/MARsPackageStatus;
    .param p3, "policy_num"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 4908
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :goto_0
    if-nez v6, :cond_1

    .line 4909
    return v7

    :cond_0
    move v6, v7

    .line 4908
    goto :goto_0

    .line 4912
    :cond_1
    iget v6, p2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v8, 0x10

    if-ne v6, v8, :cond_2

    .line 4913
    return v7

    .line 4916
    :cond_2
    const/4 v1, 0x0

    .line 4917
    .local v1, "isSkipOptimizationPackage":Z
    iget-object v2, p2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    .line 4918
    .local v2, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 4920
    .local v5, "scpmSkipManagedValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;>;"
    const/4 v6, 0x3

    if-ne p1, v6, :cond_3

    .line 4921
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4926
    :cond_3
    const/4 v6, 0x2

    if-ne p3, v6, :cond_4

    .line 4927
    const-string/jumbo v6, "AutoRun"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4928
    .local v3, "scpmAutoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v3, :cond_4

    .line 4929
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 4930
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4931
    .local v4, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    invoke-direct {p0, v4, v2, v9, v9}, Lcom/android/server/am/MARsPolicyManager;->isSCPMValueMatch(Lcom/android/server/am/MARsDBManager$SCPMDBValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4932
    const/4 v1, 0x1

    .line 4940
    .end local v0    # "i":I
    .end local v3    # "scpmAutoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_4
    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->DEBUG_SCPM:Z

    if-eqz v6, :cond_5

    .line 4941
    const-string/jumbo v6, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSCPMSkipOptimizationPackage --- packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , isSkipOptimizationPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4942
    :cond_5
    return v1

    .line 4929
    .restart local v0    # "i":I
    .restart local v3    # "scpmAutoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .restart local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isSCPMValueMatch(Lcom/android/server/am/MARsDBManager$SCPMDBValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 4894
    const/4 v0, 0x0

    .line 4896
    .local v0, "isMatch":Z
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 4897
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 4898
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    if-eqz v1, :cond_4

    if-eqz p4, :cond_4

    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 4899
    :cond_5
    const/4 v0, 0x1

    .line 4901
    :cond_6
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_SCPM:Z

    if-eqz v1, :cond_7

    .line 4902
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSCPMValueMatch --- value.strCallee="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , value.strCaller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , value.strAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " .....isSCPMValueMatch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4903
    :cond_7
    return v0
.end method

.method private isSamsungService(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2943
    const-string/jumbo v0, "system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.sec."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2944
    :cond_0
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1

    .line 2945
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AutoRun Policy isSamsungService -- SamsungService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    :cond_1
    return v3

    .line 2949
    :cond_2
    const-string/jumbo v0, "com.baidu.BaiduMap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "com.baidu.searchbox_samsung"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2950
    const-string/jumbo v0, "com.baidu.netdisk_ss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2949
    if-eqz v0, :cond_4

    .line 2951
    :cond_3
    return v1

    .line 2954
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2955
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_5

    .line 2956
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AutoRun Policy isSamsungService -- SystemPackage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    :cond_5
    return v3

    .line 2960
    :cond_6
    return v1
.end method

.method private isSelfIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 2907
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2908
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2909
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSelfIntent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2912
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2989
    const/4 v6, 0x0

    .line 2990
    .local v6, "action":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2991
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2994
    .end local v6    # "action":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2995
    const-string/jumbo v0, "binderCallingUid"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2996
    .local v7, "binderCallingUid":I
    if-eq v7, v3, :cond_1

    .line 2997
    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v2, "isShouldBlockCase: block AccountAuthenticator"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    return v1

    .line 3000
    :cond_1
    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v3, "isShouldBlockCase: not block AccountAuthenticator"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    .end local v7    # "binderCallingUid":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v0, v2, p2, p1, v6}, Lcom/android/server/am/MARsCoreManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3005
    return v1

    :cond_3
    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    .line 3009
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3010
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldBlockCase: SCPM caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    return v1

    .line 3013
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private isShouldSkipCaseForAutoRun(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x2

    const/4 v7, 0x1

    .line 3017
    const/4 v6, 0x0

    .line 3018
    .local v6, "action":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3019
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 3022
    .end local v6    # "action":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v6, :cond_1

    .line 3023
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3022
    if-eqz v0, :cond_1

    .line 3024
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: Enable AccessibilityService callee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    return v7

    .line 3028
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v0, v7, p2, p1, v6}, Lcom/android/server/am/MARsCoreManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3030
    return v7

    :cond_2
    move-object v0, p0

    move v2, v1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    .line 3034
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3035
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: SCPM caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , callee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    return v7

    .line 3038
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isSpecialIntentsForSKT(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2917
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2918
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "theIntent$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2919
    .local v0, "theIntent":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2920
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_1

    .line 2921
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Specila Intent for speical SKT package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2922
    const-string/jumbo v4, " action = "

    .line 2921
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 2928
    .end local v0    # "theIntent":Ljava/lang/String;
    .end local v1    # "theIntent$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private isSyncManagerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3134
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 3135
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 3137
    :cond_1
    const/4 v1, 0x0

    .line 3140
    .local v1, "syncActionFound":Z
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.content.SyncAdapter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3141
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3140
    if-eqz v2, :cond_2

    .line 3142
    const/4 v1, 0x1

    .line 3143
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AutoRun Policy isSyncManagerPackage -- package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3149
    :cond_2
    :goto_0
    return v1

    .line 3145
    :catch_0
    move-exception v0

    .line 3146
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSyncManagerPackage exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2841
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2842
    if-eqz p1, :cond_0

    .line 2843
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v3, :cond_3

    monitor-exit v2

    .line 2841
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2844
    return v0

    .line 2847
    :cond_0
    if-eqz p3, :cond_1

    const/16 v3, 0x3e8

    if-ne p3, v3, :cond_2

    :cond_1
    :goto_0
    monitor-exit v2

    .line 2841
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2847
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    monitor-exit v2

    .line 2841
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2851
    return v1

    .line 2841
    :catchall_0
    move-exception v0

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private isSystemPackage(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 2856
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2857
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2859
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 2860
    return v7

    .line 2863
    :cond_0
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 2864
    return v7

    .line 2867
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2868
    const-string/jumbo v5, "android"

    .line 2867
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2870
    .local v2, "match":I
    if-ltz v2, :cond_2

    .line 2871
    const/4 v4, 0x1

    return v4

    .line 2874
    :cond_2
    return v7

    .line 2875
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "match":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 2876
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSystemPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    return v7
.end method

.method private isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetPkgName"    # Ljava/lang/String;
    .param p2, "matchType"    # Ljava/lang/String;
    .param p3, "excludePkgName"    # Ljava/lang/String;

    .prologue
    .line 1415
    const/4 v0, 0x0

    .line 1417
    .local v0, "match":Z
    const-string/jumbo v1, "equals"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1418
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1428
    .end local v0    # "match":Z
    :cond_0
    :goto_0
    return v0

    .line 1419
    .restart local v0    # "match":Z
    :cond_1
    const-string/jumbo v1, "contains"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1420
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .local v0, "match":Z
    goto :goto_0

    .line 1421
    .local v0, "match":Z
    :cond_2
    const-string/jumbo v1, "startsWith"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1422
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .local v0, "match":Z
    goto :goto_0

    .line 1423
    .local v0, "match":Z
    :cond_3
    const-string/jumbo v1, "endsWith"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1424
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .local v0, "match":Z
    goto :goto_0

    .line 1425
    .local v0, "match":Z
    :cond_4
    const-string/jumbo v1, "equalsIgnoreCase"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1426
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .local v0, "match":Z
    goto :goto_0
.end method

.method private isTopPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 3
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    .line 2416
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2417
    if-nez p2, :cond_1

    .line 2418
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2419
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -Top package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :cond_0
    const-string/jumbo v0, "Top"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2422
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2424
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isVpnServicePackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 3
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2313
    if-nez p2, :cond_1

    .line 2314
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2315
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -vpnService package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    :cond_0
    const-string/jumbo v0, "VpnService"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2318
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2320
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isWallPaperPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .locals 3
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "dump"    # Z

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2378
    if-nez p2, :cond_1

    .line 2379
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2380
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -wallpaper package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :cond_0
    const-string/jumbo v0, "Wallpaper"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2383
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2385
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isWidgetPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z
    .locals 5
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "policyNum"    # I
    .param p3, "dump"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2273
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    if-eqz v0, :cond_2

    if-ne p2, v4, :cond_2

    .line 2274
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2275
    if-nez p3, :cond_1

    .line 2276
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2277
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -first time excuting policy for Widget!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_0
    const-string/jumbo v0, "FirstTimeExcutingPolicy-Widget"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2280
    :cond_1
    return v3

    .line 2285
    :cond_2
    if-eq p2, v4, :cond_5

    .line 2286
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    if-lez v0, :cond_5

    .line 2287
    if-nez p3, :cond_4

    .line 2288
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_3

    .line 2289
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -has running widgets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "runningWidgets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2292
    :cond_4
    return v3

    .line 2295
    :cond_5
    return v2
.end method

.method private killAutoRunOnPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 3536
    return-void
.end method

.method private markAppStartUpResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "isRestricted"    # Z
    .param p2, "calleePackage"    # Ljava/lang/String;
    .param p3, "callerPackage"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;
    .param p5, "state"    # I

    .prologue
    .line 3460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3461
    .local v4, "currentTime":J
    const-string/jumbo v0, "activity"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3462
    return-void

    .line 3465
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3466
    return-void

    .line 3469
    :cond_1
    if-eqz p1, :cond_3

    .line 3470
    const/16 v0, 0x10

    if-ne p5, v0, :cond_2

    .line 3471
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move-object v1, p2

    move-object v2, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 3459
    :goto_0
    return-void

    .line 3473
    :cond_2
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markAppStartUpResult: auto run on case : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3476
    :cond_3
    const/4 v0, 0x2

    if-eq p5, v0, :cond_4

    .line 3477
    const/16 v0, 0x8

    if-ne p5, v0, :cond_5

    .line 3478
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move-object v1, p2

    move-object v2, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_0

    .line 3480
    :cond_5
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markAppStartUpResult: auto run off case : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private policyStateToExtraValue(II)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I
    .param p2, "dbExtras"    # I

    .prologue
    .line 4326
    sparse-switch p1, :sswitch_data_0

    .line 4346
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 4328
    :sswitch_0
    const-string/jumbo v0, "(extras 0)"

    return-object v0

    .line 4330
    :sswitch_1
    const-string/jumbo v0, "(extras 9)"

    return-object v0

    .line 4332
    :sswitch_2
    const-string/jumbo v0, "(extras 1)"

    return-object v0

    .line 4334
    :sswitch_3
    const-string/jumbo v0, "(extras 2)"

    return-object v0

    .line 4336
    :sswitch_4
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 4337
    const-string/jumbo v0, "(extras 9)"

    return-object v0

    .line 4338
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 4339
    const-string/jumbo v0, "(extras 0)"

    return-object v0

    .line 4340
    :cond_2
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    .line 4341
    const-string/jumbo v0, "(extras 1)"

    return-object v0

    .line 4342
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 4343
    const-string/jumbo v0, "(extras 9)"

    return-object v0

    .line 4326
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private policyStateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 4310
    sparse-switch p1, :sswitch_data_0

    .line 4322
    const/4 v0, 0x0

    return-object v0

    .line 4312
    :sswitch_0
    const-string/jumbo v0, "RESTRICT_AUTO"

    return-object v0

    .line 4314
    :sswitch_1
    const-string/jumbo v0, "RESTRICT_ALWAYS"

    return-object v0

    .line 4316
    :sswitch_2
    const-string/jumbo v0, "RESTRICT_NO"

    return-object v0

    .line 4318
    :sswitch_3
    const-string/jumbo v0, "RESTRICT_AUTO_EXPIRED"

    return-object v0

    .line 4320
    :sswitch_4
    const-string/jumbo v0, "WILLBESET_RESTRICT_AUTO"

    return-object v0

    .line 4310
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private registerDefaultInputMethodChanged()V
    .locals 5

    .prologue
    .line 2183
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$3;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    .line 2191
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2192
    const-string/jumbo v1, "default_input_method"

    .line 2191
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2192
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    .line 2191
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2182
    return-void
.end method

.method private registerEnabledAccessibilityServicesChanged()V
    .locals 5

    .prologue
    .line 2196
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$4;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    .line 2202
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2203
    const-string/jumbo v1, "enabled_accessibility_services"

    .line 2202
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2203
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    .line 2202
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2195
    return-void
.end method

.method private registerNotificationListener()V
    .locals 6

    .prologue
    .line 2208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 2209
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 2208
    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2206
    :goto_0
    return-void

    .line 2211
    :catch_0
    move-exception v0

    .line 2212
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private runMARsUpdatePackagesThread()V
    .locals 2

    .prologue
    .line 3819
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$7;

    const-string/jumbo v1, "MARsUpdatePackages"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$7;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsUpdatePackagesThread:Ljava/lang/Thread;

    .line 3869
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsUpdatePackagesThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3818
    return-void
.end method

.method private sendPackageRestartedIntent(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3543
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->finishForceStopPackageForMARsLocked(Ljava/lang/String;I)V

    .line 3542
    return-void
.end method

.method private switchPolicies(IZ)V
    .locals 3
    .param p1, "policy"    # I
    .param p2, "boot"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1238
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 1239
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v1, 0x15

    iput v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->targetCategory:I

    .line 1241
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1243
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_2

    .line 1247
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1248
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_3

    .line 1249
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    .line 1241
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    .line 1253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    .line 1254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdateMap:Ljava/util/Map;

    .line 1255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    .line 1256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    .line 1257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    .line 1258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    .line 1289
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-boolean v0, v0, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    if-eqz v0, :cond_13

    .line 1290
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1292
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1293
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_5
    monitor-exit v1

    .line 1290
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1295
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_6

    .line 1296
    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "switchPolicies---Clear mRestrictedPackages list"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_7

    .line 1317
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getBoundAppWidgetPackages()Ljava/util/ArrayList;

    .line 1237
    :cond_7
    return-void

    .line 1241
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1259
    :cond_8
    if-ne p1, v1, :cond_4

    .line 1260
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1262
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_9

    .line 1263
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1265
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_a

    .line 1266
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1267
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_b

    .line 1268
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_b
    monitor-exit v1

    .line 1260
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1271
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1272
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 1273
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1274
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 1275
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1276
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdateMap:Ljava/util/Map;

    if-eqz v0, :cond_e

    .line 1277
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1278
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 1279
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1280
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    if-eqz v0, :cond_10

    .line 1281
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1282
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    if-eqz v0, :cond_11

    .line 1283
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1284
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    if-eqz v0, :cond_12

    .line 1285
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_12
    monitor-exit v1

    goto/16 :goto_0

    .line 1260
    :catchall_1
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1271
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1290
    :catchall_3
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1298
    :cond_13
    if-nez p2, :cond_16

    .line 1300
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1301
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 1302
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1305
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 1306
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_15
    monitor-exit v1

    .line 1300
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1309
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager;->initManagedPackages()V

    .line 1311
    :cond_16
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_6

    .line 1312
    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "switchPolicies---mDBCreate is false, and call initManagedPackages"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1300
    :catchall_4
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private turnOffPolicies()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1218
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1219
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->IsChinaModel:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-eqz v0, :cond_2

    .line 1220
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 1226
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1229
    :cond_0
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1218
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1233
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsTrigger;->unregisterReceiver(Z)V

    .line 1217
    return-void

    .line 1223
    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1218
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private turnOnPolicies()V
    .locals 3

    .prologue
    .line 1209
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1210
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1209
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1214
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 1208
    return-void

    .line 1209
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private updateActiveAdminsToManaged()V
    .locals 5

    .prologue
    .line 2117
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 2118
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2120
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2121
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 2122
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_0

    .line 2123
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2124
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    monitor-exit v4

    .line 2118
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2116
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 2118
    :catchall_0
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method private updateFromMARsThread()V
    .locals 21

    .prologue
    .line 3907
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_0

    .line 3908
    const-string/jumbo v3, "MARsPolicyManager"

    const-string/jumbo v4, "updateFromMARsThread"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 3912
    .local v19, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    const/16 v17, 0x0

    .line 3914
    .local v17, "needTriggerAppLockerPolicy":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 3916
    .local v14, "currentTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3917
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_15

    .line 3918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/MARsPackageStatus;

    .line 3921
    .local v18, "ps":Lcom/android/server/am/MARsPackageStatus;
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-nez v3, :cond_4

    .line 3922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3921
    if-nez v3, :cond_4

    .line 3923
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3921
    if-nez v3, :cond_4

    .line 3924
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3921
    if-nez v3, :cond_4

    .line 3925
    :cond_3
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    if-lez v3, :cond_8

    .line 3927
    :cond_4
    :goto_1
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->dbExtras:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->convertStateToDBExtrasValue(II)Ljava/lang/String;

    move-result-object v6

    .line 3929
    .local v6, "extras":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_9

    .line 3930
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3935
    .local v2, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3937
    move-object/from16 v0, v18

    iput-wide v14, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3941
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v6    # "extras":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    .line 3942
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_b

    .line 3943
    :cond_6
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_a

    .line 3917
    :cond_7
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 3926
    :cond_8
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->hasOngoingNotification(Ljava/lang/String;Z)Z

    move-result v3

    .line 3921
    if-eqz v3, :cond_5

    goto :goto_1

    .line 3932
    .restart local v6    # "extras":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3933
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_2

    .line 3946
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v6    # "extras":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3947
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3948
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 3916
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v13    # "i":I
    .end local v18    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v3

    monitor-exit v20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 3951
    .restart local v13    # "i":I
    .restart local v18    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_b
    :try_start_1
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_c

    .line 3952
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_e

    .line 3953
    :cond_c
    move-object/from16 v0, v18

    iput-wide v14, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3954
    const/4 v3, 0x2

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3956
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_d

    .line 3957
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "0"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3962
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3959
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_d
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3960
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "0"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_4

    .line 3965
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_e
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-nez v3, :cond_11

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_11

    .line 3966
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 3965
    if-eqz v3, :cond_11

    .line 3967
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sub-long v4, v14, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_7

    .line 3969
    const/4 v3, 0x2

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3971
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_10

    .line 3972
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "0"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3977
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_f

    .line 3981
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 3985
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_7

    .line 3986
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 3974
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_10
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3975
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "0"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_5

    .line 3991
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_11
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    .line 3992
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    .line 3991
    if-eqz v3, :cond_13

    .line 3994
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_12

    .line 3995
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "0"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4000
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4002
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    goto/16 :goto_3

    .line 3997
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_12
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3998
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "0"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_6

    .line 4005
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_13
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 4006
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sub-long v4, v14, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    if-nez v3, :cond_7

    .line 4008
    const/16 v3, 0x8

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 4010
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_14

    .line 4011
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "1"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4016
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_7
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4019
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 4013
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_14
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 4014
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "1"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_7

    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v18    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_15
    monitor-exit v20

    .line 3916
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_16

    if-eqz v17, :cond_16

    .line 4028
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 4029
    .local v16, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4030
    const-string/jumbo v3, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4035
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    .line 4037
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 3906
    return-void
.end method

.method private updateLaunchedBeforeInitToManaged()V
    .locals 6

    .prologue
    .line 3884
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3885
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3886
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .line 3887
    .local v1, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 3888
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_0

    .line 3889
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3890
    iget v3, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    .line 3885
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3893
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 3884
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3883
    return-void

    .line 3884
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method


# virtual methods
.method cancelPolicy(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyNum"    # I

    .prologue
    .line 2773
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2774
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 2775
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 2776
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz p1, :cond_0

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2779
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 2780
    if-eqz p2, :cond_3

    .line 2781
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2782
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPolicyManager$Policy;

    iget v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v3, p2, :cond_7

    .line 2783
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2785
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    .line 2786
    :cond_1
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    .line 2788
    :cond_2
    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    .line 2789
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I

    .line 2797
    .end local v1    # "j":I
    :cond_3
    if-eqz p2, :cond_4

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 2798
    :cond_4
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 2801
    :cond_5
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 2802
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2803
    add-int/lit8 v0, v0, -0x1

    .line 2774
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2781
    .restart local v1    # "j":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "j":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_8
    monitor-exit v4

    .line 2773
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2772
    return-void

    .line 2773
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public checkSCPMParameters()V
    .locals 1

    .prologue
    .line 4789
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager;->checkSCPMParametersFromDB()V

    .line 4788
    return-void
.end method

.method public clearNotificationDiff()V
    .locals 2

    .prologue
    .line 2088
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2089
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2090
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2087
    return-void

    .line 2088
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clearNotificationUpdate()V
    .locals 2

    .prologue
    .line 2075
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2076
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2074
    return-void

    .line 2075
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clearStorageDiff()V
    .locals 2

    .prologue
    .line 2081
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2082
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2083
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2080
    return-void

    .line 2081
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public createPolicies()V
    .locals 30

    .prologue
    .line 1059
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v3, v3, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_5

    .line 1060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v3, v3, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    iget-object v4, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->name:Ljava/lang/String;

    .line 1061
    .local v4, "policyName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v3, v3, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    iget v5, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->num:I

    .line 1062
    .local v5, "policyNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v3, v3, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    iget v0, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->enabled:I

    move/from16 v28, v0

    .line 1063
    .local v28, "enabled":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v3, v3, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    iget v7, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->targetCategory:I

    .line 1064
    .local v7, "targetCategory":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v3, v3, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    iget v8, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->restriction:I

    .line 1065
    .local v8, "restriction":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v3, v3, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    iget v9, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->action:I

    .line 1067
    .local v9, "action":I
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_1

    .line 1068
    const/4 v6, 0x1

    .line 1072
    .local v6, "policyEnabled":Z
    :goto_1
    new-instance v2, Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    .line 1073
    .local v2, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    const/4 v3, 0x1

    if-ne v5, v3, :cond_2

    .line 1074
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1076
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v3, v3, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    iget-wide v12, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->firstTriggerTime:J

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    iput-wide v12, v10, Lcom/android/server/am/MARsTrigger;->mAppLockerPolicyInterval:J

    .line 1077
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v3, v3, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    iget-wide v12, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->repeatTriggerTime:J

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    iput-wide v12, v10, Lcom/android/server/am/MARsTrigger;->mAppLockerRepeatAlarmInterval:J

    .line 1059
    :cond_0
    :goto_2
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 1070
    .end local v2    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    .end local v6    # "policyEnabled":Z
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "policyEnabled":Z
    goto :goto_1

    .line 1078
    .restart local v2    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    :cond_2
    const/4 v3, 0x2

    if-ne v5, v3, :cond_4

    .line 1079
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getImmediateKillEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    const-wide/16 v10, 0x1388

    iput-wide v10, v3, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    .line 1086
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v3, v3, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    iget-wide v12, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->repeatTriggerTime:J

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    iput-wide v12, v10, Lcom/android/server/am/MARsTrigger;->mAutoRunRepeatAlarmInterval:J

    goto :goto_2

    .line 1084
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v3, v3, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    iget-wide v12, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->firstTriggerTime:J

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    iput-wide v12, v10, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    goto :goto_3

    .line 1087
    :cond_4
    const/4 v3, 0x3

    if-ne v5, v3, :cond_0

    .line 1088
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1090
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v3, v3, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    iget-wide v12, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->repeatTriggerTime:J

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    iput-wide v12, v10, Lcom/android/server/am/MARsTrigger;->mLCDOnTriggerTimeInterval:J

    goto :goto_2

    .line 1093
    .end local v2    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    .end local v4    # "policyName":Ljava/lang/String;
    .end local v5    # "policyNum":I
    .end local v6    # "policyEnabled":Z
    .end local v7    # "targetCategory":I
    .end local v8    # "restriction":I
    .end local v9    # "action":I
    .end local v28    # "enabled":I
    :cond_5
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "createPolicies---AppLocker = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " , AutoRun = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v10, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v3, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "UDS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    .line 1096
    .local v14, "udsPolicyEnabled":Z
    new-instance v10, Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v12, "udspolicy"

    .line 1097
    const/4 v13, 0x4

    .line 1099
    const/16 v15, 0x16

    .line 1100
    const v16, 0x1000220

    .line 1101
    const/16 v17, 0x9

    move-object/from16 v11, p0

    .line 1096
    invoke-direct/range {v10 .. v17}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1103
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v10, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v3, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "bikemode"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    .line 1104
    .local v19, "sbikePolicyEnabled":Z
    new-instance v15, Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v17, "sbkiepolicy"

    .line 1105
    const/16 v18, 0x5

    .line 1107
    const/16 v20, 0x17

    .line 1108
    const v21, 0x1000112

    .line 1109
    const/16 v22, 0x9

    move-object/from16 v16, p0

    .line 1104
    invoke-direct/range {v15 .. v22}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1111
    const/16 v24, 0x1

    .line 1112
    .local v24, "gameModePolicyEnabled":Z
    new-instance v20, Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v22, "gamemodepolicy"

    .line 1113
    const/16 v23, 0x6

    .line 1115
    const/16 v25, 0x1

    .line 1116
    const v26, 0x1000110

    .line 1117
    const/16 v27, 0xa

    move-object/from16 v21, p0

    .line 1112
    invoke-direct/range {v20 .. v27}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->gameModePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1057
    return-void
.end method

.method public dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 4358
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4359
    const-string/jumbo v6, "ACTIVITY MANAGER MARs (dumpsys activity mars)"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4360
    const-string/jumbo v6, "currentTime "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4361
    const-string/jumbo v6, "--lastTriggerTime "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/am/MARsPolicyManager;->lastTriggerTime:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4362
    const-string/jumbo v6, ""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4363
    const-string/jumbo v6, ""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4365
    const-string/jumbo v6, "mManagedPackages --- size "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4366
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 4369
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 4371
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v6, :cond_1

    .line 4372
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 4371
    if-eqz v6, :cond_2

    .line 4373
    :cond_1
    const-string/jumbo v6, "--State "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "%-27s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v9}, Lcom/android/server/am/MARsPolicyManager;->policyStateToString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4374
    const-string/jumbo v6, "%12s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    iget v10, v2, Lcom/android/server/am/MARsPackageStatus;->dbExtras:I

    invoke-direct {p0, v9, v10}, Lcom/android/server/am/MARsPolicyManager;->policyStateToExtraValue(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4377
    const-string/jumbo v6, "--resetTime "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4380
    :cond_2
    const-string/jumbo v6, "--PkgType "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "%3d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v2, Lcom/android/server/am/MARsPackageStatus;->packageType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4384
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v6, :cond_3

    .line 4385
    const-string/jumbo v6, "--Important(A/L) "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "%5d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x1

    invoke-virtual {p0, v2, v9}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackageForDump(Lcom/android/server/am/MARsPackageStatus;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4388
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v6, :cond_4

    .line 4389
    const-string/jumbo v6, "--Important(A/R) "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "%5d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x2

    invoke-virtual {p0, v2, v9}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackageForDump(Lcom/android/server/am/MARsPackageStatus;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4393
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v6, :cond_5

    .line 4394
    const-string/jumbo v6, "--AutoRun "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4397
    :cond_5
    const-string/jumbo v6, "--PkgName "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4400
    iget-object v6, v2, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 4401
    const-string/jumbo v6, "--SkipReason "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4405
    :cond_6
    iget-object v6, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4406
    const-string/jumbo v6, "--Running"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4408
    :cond_7
    const-string/jumbo v6, ""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4368
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 4411
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_8
    const-string/jumbo v6, "mRestrictedPackages --- size "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4412
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4413
    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_b

    .line 4414
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 4417
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string/jumbo v6, "--forceStopTime "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->forceStopTime:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4419
    const-string/jumbo v6, "--PkgName "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4420
    const-string/jumbo v6, "--appliedPolicies "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4421
    iget-object v6, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v6, :cond_9

    .line 4422
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v6, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 4423
    iget-object v6, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager$Policy;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4424
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4422
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4427
    .end local v1    # "j":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_9
    const-string/jumbo v6, "null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4430
    :cond_a
    const-string/jumbo v6, ""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4413
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4433
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_b
    const-string/jumbo v6, ""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4435
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    if-eqz v6, :cond_c

    .line 4436
    const-string/jumbo v6, "mLatestProtectedPackages "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4437
    const/4 v0, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_c

    .line 4438
    const-string/jumbo v6, "--PackageName "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4437
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4442
    :cond_c
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 4443
    const-string/jumbo v6, "mWallpaperPackage ---  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4445
    :cond_d
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    if-eqz v6, :cond_e

    .line 4446
    const-string/jumbo v6, "mVpnServicePackage ---  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4449
    :cond_e
    const-string/jumbo v6, "DefaultIMEPackage ---  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4451
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v6, :cond_f

    .line 4452
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 4453
    const-string/jumbo v6, "CurrentHomePackage ---  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4457
    :cond_f
    const-string/jumbo v6, "OngoingNotificationPackage ---  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4458
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4459
    const/4 v0, 0x0

    :goto_4
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_10

    .line 4460
    const-string/jumbo v6, "--PackageName "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4461
    const-string/jumbo v6, ""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4459
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    :try_start_2
    monitor-exit v8

    .line 4465
    const-string/jumbo v6, "LockScreenPackage ---  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4466
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4467
    const/4 v0, 0x0

    :goto_5
    :try_start_3
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLockScreenList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_11

    .line 4468
    const-string/jumbo v6, "--PackageName "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLockScreenList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4469
    const-string/jumbo v6, ""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4467
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4458
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v8

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4358
    .end local v0    # "i":I
    :catchall_1
    move-exception v6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .restart local v0    # "i":I
    :cond_11
    :try_start_5
    monitor-exit v8

    .line 4473
    const/4 v3, 0x0

    .line 4474
    .local v3, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const/4 v4, 0x0

    .line 4475
    .local v4, "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const-string/jumbo v6, "SCPMBlackListPackage ---  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4476
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    const-string/jumbo v8, "AutoRun"

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 4477
    .local v4, "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_12

    .line 4478
    const/4 v0, 0x0

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_12

    .line 4479
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4480
    .local v3, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string/jumbo v6, "--callee "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4481
    const-string/jumbo v6, "--caller "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4482
    const-string/jumbo v6, "--action "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4483
    const-string/jumbo v6, ""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4478
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4466
    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    :catchall_2
    move-exception v6

    monitor-exit v8

    throw v6

    .line 4487
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    :cond_12
    const-string/jumbo v6, "SCPMBlackListForActiveTrafficPackage ---  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4488
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    const-string/jumbo v8, "AutoRun"

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 4489
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_13

    .line 4490
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_13

    .line 4491
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4492
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string/jumbo v6, "--callee "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4493
    const-string/jumbo v6, "--caller "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4494
    const-string/jumbo v6, "--action "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4495
    const-string/jumbo v6, ""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4490
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4499
    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_13
    const-string/jumbo v6, "SCPMBlockPackage ---  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4500
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    const-string/jumbo v8, "AutoRun"

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 4501
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_14

    .line 4502
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_14

    .line 4503
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4504
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string/jumbo v6, "--callee "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4505
    const-string/jumbo v6, "--caller "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4506
    const-string/jumbo v6, "--action "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4507
    const-string/jumbo v6, ""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4502
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4511
    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_14
    const-string/jumbo v6, "SCPMSkipPackage ---  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4512
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    const-string/jumbo v8, "AutoRun"

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 4513
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_15

    .line 4514
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_15

    .line 4515
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4516
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string/jumbo v6, "--callee "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4517
    const-string/jumbo v6, "--caller "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4518
    const-string/jumbo v6, "--action "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4519
    const-string/jumbo v6, ""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4514
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4523
    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_15
    const-string/jumbo v6, "SCPMSkipOptimizationPackage ---  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4524
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    const-string/jumbo v8, "AutoRun"

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 4525
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_16

    .line 4526
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_16

    .line 4527
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4528
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string/jumbo v6, "--callee "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4529
    const-string/jumbo v6, "--caller "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4530
    const-string/jumbo v6, "--action "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4531
    const-string/jumbo v6, ""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4526
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_16
    monitor-exit v7

    .line 4358
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4357
    return-void
.end method

.method public dumpMARsPolicyInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 33
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 4538
    const-string/jumbo v26, "ACTIVITY MANAGER MARs Policy(dumpsys activity mars policyinfo)"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4539
    const-string/jumbo v26, "MainPolicy"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    :goto_0
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    aget-object v20, v27, v26

    .line 4541
    .local v20, "policyString":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 4542
    .local v19, "policyNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsCoreManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v18

    .line 4543
    .local v18, "policyName":Ljava/lang/String;
    const-string/jumbo v29, "1"

    const/16 v30, 0x1

    aget-object v30, v20, v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 4544
    .local v14, "isPolicyEnabled":Z
    const/16 v29, 0x2

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 4545
    .local v25, "targetCategory":I
    const/16 v29, 0x3

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 4546
    .local v21, "restriction":I
    const/16 v29, 0x4

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 4547
    .local v15, "killType":I
    const/16 v29, 0x5

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 4548
    .local v12, "firstTriggerTime":J
    const/16 v29, 0x6

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 4550
    .local v22, "repeatTriggerTime":J
    const-string/jumbo v29, "--policyName "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%10s"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v18, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4551
    const-string/jumbo v29, "--policyNum "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4552
    const-string/jumbo v29, "--isPolicyEnabled "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%6s"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4553
    const-string/jumbo v29, "--targetCategory "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%3d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4554
    const-string/jumbo v29, "--restriction "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%12d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4555
    const-string/jumbo v29, "--killType "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%3d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4556
    const-string/jumbo v29, "--firstTriggerTime "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%3d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4557
    const-string/jumbo v29, "--repeatTriggerTime "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%3d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4558
    const-string/jumbo v29, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4540
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_0

    .line 4561
    .end local v12    # "firstTriggerTime":J
    .end local v14    # "isPolicyEnabled":Z
    .end local v15    # "killType":I
    .end local v18    # "policyName":Ljava/lang/String;
    .end local v19    # "policyNum":I
    .end local v20    # "policyString":[Ljava/lang/String;
    .end local v21    # "restriction":I
    .end local v22    # "repeatTriggerTime":J
    .end local v25    # "targetCategory":I
    :cond_0
    const-string/jumbo v26, "AutoRunParameter"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4562
    const-string/jumbo v26, "--trafficInterval "

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    move-object/from16 v26, v0

    sget-object v26, Lcom/android/server/am/MARsCoreManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4563
    const-string/jumbo v26, "--unusedAutoFreezeTime "

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    move-object/from16 v26, v0

    sget-object v26, Lcom/android/server/am/MARsCoreManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/16 v27, 0x1

    aget-object v26, v26, v27

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4564
    const-string/jumbo v26, "--dataTrafficAmount "

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    move-object/from16 v26, v0

    sget-object v26, Lcom/android/server/am/MARsCoreManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/16 v27, 0x2

    aget-object v26, v26, v27

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4565
    const-string/jumbo v26, "--notificationUpdatedCount "

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    move-object/from16 v26, v0

    sget-object v26, Lcom/android/server/am/MARsCoreManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/16 v27, 0x3

    aget-object v26, v26, v27

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4566
    const-string/jumbo v26, "--appSizeIncreased "

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    move-object/from16 v26, v0

    sget-object v26, Lcom/android/server/am/MARsCoreManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/16 v27, 0x4

    aget-object v26, v26, v27

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4567
    const-string/jumbo v26, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4569
    const-string/jumbo v26, "AdjustTargetExcludePackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/server/am/MARsCoreManager;->mExcludePackageDefault:[[Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    aget-object v10, v27, v26

    .line 4571
    .local v10, "excludePackageString":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v29, v10, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 4572
    .restart local v19    # "policyNum":I
    const/16 v29, 0x1

    aget-object v29, v10, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4573
    .local v7, "condition":I
    const/16 v29, 0x2

    aget-object v17, v10, v29

    .line 4574
    .local v17, "pkgNameMatchType":Ljava/lang/String;
    const/16 v29, 0x3

    aget-object v16, v10, v29

    .line 4576
    .local v16, "packageName":Ljava/lang/String;
    const-string/jumbo v29, "--policyNum "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%2d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4577
    const-string/jumbo v29, "--condition "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%3d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4578
    const-string/jumbo v29, "--matchType "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%16s"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v17, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4579
    const-string/jumbo v29, "--packageName "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4580
    const-string/jumbo v29, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4570
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 4583
    .end local v7    # "condition":I
    .end local v10    # "excludePackageString":[Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "pkgNameMatchType":Ljava/lang/String;
    .end local v19    # "policyNum":I
    :cond_1
    const-string/jumbo v26, "AdjustTargetImportantPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/server/am/MARsCoreManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    :goto_2
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    aget-object v8, v27, v26

    .line 4585
    .local v8, "currentImportantString":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v29, v8, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 4586
    .restart local v19    # "policyNum":I
    const/16 v29, 0x1

    aget-object v9, v8, v29

    .line 4588
    .local v9, "currentImportantValue":Ljava/lang/String;
    const-string/jumbo v29, "--policyNum "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%2d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4589
    const-string/jumbo v29, "--currentImportantValue "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4590
    const-string/jumbo v29, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4584
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 4593
    .end local v8    # "currentImportantString":[Ljava/lang/String;
    .end local v9    # "currentImportantValue":Ljava/lang/String;
    .end local v19    # "policyNum":I
    :cond_2
    const-string/jumbo v26, "AdjustRestriction"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/server/am/MARsCoreManager;->mAdjustRestrictionDefault:[[Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    :goto_3
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    aget-object v4, v27, v26

    .line 4595
    .local v4, "adjustRestrictionString":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v29, v4, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 4596
    .local v24, "restrictionType":I
    const/16 v29, 0x1

    aget-object v11, v4, v29

    .line 4597
    .local v11, "isAllowed":Ljava/lang/String;
    const/16 v29, 0x2

    aget-object v5, v4, v29

    .line 4598
    .local v5, "callee":Ljava/lang/String;
    const/16 v29, 0x3

    aget-object v6, v4, v29

    .line 4599
    .local v6, "caller":Ljava/lang/String;
    const/16 v29, 0x4

    aget-object v3, v4, v29

    .line 4600
    .local v3, "actionMatchType":Ljava/lang/String;
    const/16 v29, 0x5

    aget-object v2, v4, v29

    .line 4602
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v29, "--restrictionType "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%4d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4603
    const-string/jumbo v29, "--isAllowed "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%6s"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v11, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4604
    const-string/jumbo v29, "--callee "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4605
    const-string/jumbo v29, "--caller "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4606
    const-string/jumbo v29, "--actionMatchType "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4607
    const-string/jumbo v29, "--action "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4608
    const-string/jumbo v29, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4594
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 4537
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "actionMatchType":Ljava/lang/String;
    .end local v4    # "adjustRestrictionString":[Ljava/lang/String;
    .end local v5    # "callee":Ljava/lang/String;
    .end local v6    # "caller":Ljava/lang/String;
    .end local v11    # "isAllowed":Ljava/lang/String;
    .end local v24    # "restrictionType":I
    :cond_3
    return-void
.end method

.method executePolicy(Lcom/android/server/am/MARsPolicyManager$Policy;Ljava/lang/String;)V
    .locals 9
    .param p1, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 2696
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2697
    if-eqz p1, :cond_2

    iget-boolean v3, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_2

    .line 2703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->lastTriggerTime:J

    .line 2705
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_0

    .line 2706
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "executePolicy policy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2713
    .local v1, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 2714
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 2715
    .local v2, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    iget v3, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2716
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2717
    const-string/jumbo v6, " inPolicyWhiteList, don\'t execute this policy "

    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2698
    .end local v0    # "i":I
    .end local v1    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .end local v2    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "executePolicy policy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not enabled!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 2696
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2699
    return-void

    .line 2722
    .restart local v0    # "i":I
    .restart local v1    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .restart local v2    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_3
    :try_start_1
    iget v3, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v3, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2727
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2728
    iget v3, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 2729
    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    .line 2732
    :cond_4
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/server/am/MARsPackageStatus;->forceStopTime:J

    .line 2739
    :cond_5
    iget v3, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v3, v8, :cond_6

    .line 2740
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    if-ne v3, v8, :cond_6

    .line 2741
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    .line 2742
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->sendPackageRestartedIntent(Ljava/lang/String;)V

    .line 2746
    :cond_6
    iget v3, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 2747
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 2748
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 2749
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2755
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2756
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2696
    .end local v0    # "i":I
    .end local v1    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .end local v2    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 2751
    .restart local v0    # "i":I
    .restart local v1    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .restart local v2    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_8
    :try_start_2
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2752
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2762
    .end local v2    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_a

    iget v3, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v3, v8, :cond_a

    .line 2763
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    monitor-exit v4

    .line 2696
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2695
    return-void
.end method

.method public forceRunPolicy(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILjava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "policyNum"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    .line 4616
    invoke-virtual {p0, p3}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    .line 4617
    .local v2, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_0

    .line 4623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->lastTriggerTime:J

    .line 4625
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4626
    const-string/jumbo v5, "all"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4627
    invoke-direct {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4634
    .local v3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_a

    .line 4635
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageStatus;

    .line 4636
    .local v4, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    if-nez v4, :cond_2

    .line 4637
    const-string/jumbo v5, "not our managed package!"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 4625
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4638
    return-void

    .line 4618
    .end local v0    # "i":I
    .end local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .end local v4    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    const-string/jumbo v5, "policy is not exist or not enabled!"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4619
    return-void

    .line 4629
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v5, p4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    .line 4630
    .local v1, "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4631
    .restart local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4625
    .end local v1    # "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    .end local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 4641
    .restart local v0    # "i":I
    .restart local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .restart local v4    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    :try_start_2
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v4, v5, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4642
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " is CurrentImportantPackage !!!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4634
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4647
    :cond_4
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4648
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/am/MARsPackageStatus;->forceStopTime:J

    .line 4655
    :cond_5
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v5, v10, :cond_6

    .line 4656
    iget v5, v4, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    if-ne v5, v10, :cond_6

    .line 4657
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    .line 4658
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->sendPackageRestartedIntent(Ljava/lang/String;)V

    .line 4662
    :cond_6
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 4663
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v5, :cond_9

    .line 4664
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 4665
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4671
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 4672
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4674
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "add mRestrictedPackages "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " policy --"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 4667
    :cond_9
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4668
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .end local v4    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_a
    monitor-exit v6

    .line 4625
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4612
    return-void
.end method

.method public forceRunPolicyForMemoryNotEnough(IZ)V
    .locals 8
    .param p1, "policyNum"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v7, 0x1

    .line 4738
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    .line 4739
    .local v1, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v1, :cond_1

    iget-boolean v3, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_1

    .line 4744
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4745
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 4746
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 4747
    .local v2, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    if-nez v2, :cond_2

    .line 4748
    const-string/jumbo v3, "MARsPolicyManager"

    const-string/jumbo v5, "not our managed package!"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4745
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4740
    .end local v0    # "i":I
    .end local v2    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    const-string/jumbo v3, "MARsPolicyManager"

    const-string/jumbo v4, "policy is not exist or not enabled!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    return-void

    .line 4752
    .restart local v0    # "i":I
    .restart local v2    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    :try_start_1
    iget v3, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v3, p2, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4757
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4758
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v3, v7, :cond_7

    .line 4759
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->killAutoRunOnPackage(Ljava/lang/String;)V

    .line 4766
    :cond_3
    :goto_2
    iget v3, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-eq v3, v7, :cond_0

    .line 4769
    :cond_4
    iget v3, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 4770
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 4771
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 4772
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4778
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4779
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4781
    :cond_6
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "add mRestrictedPackages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " policy --"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4744
    .end local v0    # "i":I
    .end local v2    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 4761
    .restart local v0    # "i":I
    .restart local v2    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_7
    const/4 v3, 0x2

    :try_start_2
    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    .line 4762
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;)Z

    goto :goto_2

    .line 4774
    :cond_8
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4775
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .end local v2    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_9
    monitor-exit v4

    .line 4744
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4735
    return-void
.end method

.method public forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V
    .locals 10
    .param p1, "policyNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4681
    .local p2, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4683
    .local v4, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    .line 4684
    .local v3, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v3, :cond_1

    iget-boolean v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v6, :cond_1

    .line 4690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->lastTriggerTime:J

    .line 4692
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4693
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 4694
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4695
    .local v1, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 4696
    .local v2, "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_0

    .line 4697
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4693
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4685
    .end local v0    # "i":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    const-string/jumbo v6, "MARsPolicyManager"

    const-string/jumbo v7, "policy is not exist or not enabled!"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4686
    return-void

    .line 4700
    .restart local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 4701
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageStatus;

    .line 4702
    .local v5, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    if-nez v5, :cond_4

    .line 4703
    const-string/jumbo v6, "MARsPolicyManager"

    const-string/jumbo v8, "not our managed package!"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4700
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4707
    :cond_4
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v5, v6, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZZ)Z

    move-result v6

    if-nez v6, :cond_3

    .line 4712
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/server/am/MARsPackageStatus;->forceStopTime:J

    .line 4718
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v5, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 4719
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v6, :cond_7

    .line 4720
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 4721
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4727
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 4728
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4730
    :cond_6
    const-string/jumbo v6, "MARsPolicyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "add mRestrictedPackages "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " policy --"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 4692
    .end local v0    # "i":I
    .end local v5    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 4723
    .restart local v0    # "i":I
    .restart local v5    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_7
    :try_start_2
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4724
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .end local v5    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_8
    monitor-exit v7

    .line 4692
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4679
    return-void
.end method

.method public getAppUsedRecentlyState()Z
    .locals 1

    .prologue
    .line 1995
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    return v0
.end method

.method public getCarModeOnState()Z
    .locals 1

    .prologue
    .line 2027
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    return v0
.end method

.method public getEmergencyKillEnabled()Z
    .locals 1

    .prologue
    .line 2061
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsEmergencyKillEnabled:Z

    return v0
.end method

.method public getImmediateKillEnabled()Z
    .locals 1

    .prologue
    .line 2045
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsImmediateKillEnabled:Z

    return v0
.end method

.method public getLCDonKillEnabled()Z
    .locals 1

    .prologue
    .line 2053
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLCDonKillEnabled:Z

    return v0
.end method

.method getManagedPackages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method getManagedSMDBValueList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1472
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_0

    .line 1473
    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v2, "getManagedSMDBValueList"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v8, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    iget-object v9, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1478
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 1479
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageStatus;

    .line 1480
    .local v7, "ps":Lcom/android/server/am/MARsPackageStatus;
    new-instance v0, Lcom/android/server/am/MARsDBManager$SMDBValue;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v7, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    .local v0, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v7    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    monitor-exit v9

    .line 1477
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1485
    return-object v8

    .line 1477
    .end local v6    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getPkgInfoFromSMToMARs(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1518
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1519
    if-eqz p1, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 1520
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_0

    .line 1521
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getPkgInfoFromSMToMARs size = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_0
    const/4 v10, 0x0

    .line 1524
    .local v10, "needTriggerAppLockerPolicy":Z
    const/4 v11, 0x0

    .line 1526
    .local v11, "needTriggerAutoRunPolicy":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_14

    .line 1527
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/MARsDBManager$SMDBValue;

    .line 1528
    .local v13, "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/am/MARsPolicyManager;->convertDBValueToState(Lcom/android/server/am/MARsDBManager$SMDBValue;)I

    move-result v5

    .line 1529
    .local v5, "newState":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v12

    .line 1532
    .local v12, "newAutoRun":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .local v2, "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_9

    .line 1539
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 1540
    const/16 v3, 0x10

    if-ne v5, v3, :cond_1

    .line 1542
    const/4 v10, 0x0

    .line 1546
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_2

    .line 1547
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1548
    const/4 v3, 0x1

    if-ne v5, v3, :cond_2

    .line 1549
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 1552
    :cond_2
    iput v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 1553
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/am/MARsPolicyManager;->getDBExtrasValue(Lcom/android/server/am/MARsDBManager$SMDBValue;)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->dbExtras:I

    .line 1556
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1557
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 1560
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_4

    .line 1561
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v3, :cond_5

    .line 1562
    iput v12, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 1526
    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1564
    :cond_5
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 1565
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_7

    .line 1566
    const/4 v3, 0x2

    if-eq v5, v3, :cond_6

    .line 1567
    const/16 v3, 0x8

    if-ne v5, v3, :cond_7

    .line 1568
    :cond_6
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 1570
    :cond_7
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1571
    iput v12, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1518
    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .end local v5    # "newState":I
    .end local v8    # "i":I
    .end local v10    # "needTriggerAppLockerPolicy":Z
    .end local v11    # "needTriggerAutoRunPolicy":Z
    .end local v12    # "newAutoRun":I
    .end local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :catchall_0
    move-exception v3

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 1573
    .restart local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .restart local v5    # "newState":I
    .restart local v8    # "i":I
    .restart local v10    # "needTriggerAppLockerPolicy":Z
    .restart local v11    # "needTriggerAutoRunPolicy":Z
    .restart local v12    # "newAutoRun":I
    .restart local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_8
    const/4 v3, 0x0

    :try_start_1
    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_1

    .line 1580
    :cond_9
    const-wide/16 v6, 0x0

    .line 1581
    .local v6, "time":J
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 1582
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1585
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v3, :cond_c

    const/16 v3, 0x10

    if-eq v5, v3, :cond_b

    .line 1586
    const/16 v3, 0x8

    if-ne v5, v3, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    if-eqz v3, :cond_11

    .line 1591
    :cond_c
    :goto_2
    new-instance v2, Lcom/android/server/am/MARsPackageStatus;

    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsPackageStatus;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 1594
    .restart local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 1595
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_d

    .line 1596
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->isDeviceAdmin:Z

    .line 1597
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getAdminRemovable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1598
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->isRemovableAdmin:Z

    .line 1602
    :cond_d
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 1603
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->packageType:I

    .line 1607
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_10

    .line 1608
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v3, :cond_12

    .line 1609
    iput v12, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 1617
    :goto_3
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 1618
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_f

    .line 1619
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    .line 1622
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v3, :cond_10

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_10

    .line 1623
    const/4 v11, 0x1

    .line 1627
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1588
    :cond_11
    const/4 v10, 0x1

    goto :goto_2

    .line 1611
    :cond_12
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    if-eqz v3, :cond_13

    .line 1612
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_3

    .line 1614
    :cond_13
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_3

    .line 1632
    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .end local v5    # "newState":I
    .end local v6    # "time":J
    .end local v12    # "newAutoRun":I
    .end local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    .line 1633
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->updateActiveAdminsToManaged()V

    .line 1634
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    .line 1637
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_16

    if-eqz v10, :cond_16

    .line 1639
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1640
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1641
    const-string/jumbo v3, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    move-result v15

    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1646
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_17

    if-eqz v11, :cond_17

    .line 1648
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1649
    .restart local v9    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1650
    const-string/jumbo v3, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    move-result v15

    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1653
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    .line 1656
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v8    # "i":I
    .end local v10    # "needTriggerAppLockerPolicy":Z
    .end local v11    # "needTriggerAutoRunPolicy":Z
    :cond_18
    monitor-exit v14

    .line 1518
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1517
    return-void
.end method

.method public getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 1178
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 1180
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 1182
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 1184
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1185
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 1186
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 1187
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 1188
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 1189
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gameModePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 1191
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenOnState()Z
    .locals 1

    .prologue
    .line 2009
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    return v0
.end method

.method public handelAlertToastWindowStarted(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3551
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v1, :cond_0

    .line 3552
    return-void

    .line 3553
    :cond_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 3554
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handelAlertToastWindowStarted pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    :cond_1
    move-object v0, p1

    .line 3558
    .local v0, "localPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/MARsPolicyManager$5;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/MARsPolicyManager$5;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 3550
    return-void
.end method

.method public handelNotificationBarClicked(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3572
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v1, :cond_0

    .line 3573
    return-void

    .line 3574
    :cond_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 3575
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handelNotificationBarClicked pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    :cond_1
    move-object v0, p1

    .line 3579
    .local v0, "localPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/MARsPolicyManager$6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/MARsPolicyManager$6;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 3571
    return-void
.end method

.method public handleAppWidgetManagerActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 3597
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3598
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 3599
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAppWidgetManagerActions pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3600
    const-string/jumbo v5, " action = "

    .line 3599
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    :cond_0
    if-eqz p1, :cond_4

    .line 3604
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 3605
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-result-object v0

    .line 3606
    .local v0, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    if-nez v0, :cond_1

    .line 3607
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 3608
    .restart local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3611
    :cond_1
    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3612
    iget v2, v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 3597
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3614
    return-void

    .line 3616
    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    .line 3617
    .local v1, "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v1, :cond_4

    .line 3618
    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3619
    iget v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    .line 3621
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    :goto_0
    monitor-exit v3

    .line 3597
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3596
    return-void

    .line 3623
    .restart local v1    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_5
    :try_start_2
    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3624
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3597
    .end local v1    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 3626
    .restart local v1    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_6
    :try_start_3
    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3627
    iget v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public handleDeviceAdminActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 3640
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3641
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_0

    .line 3642
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDeviceAdminActions pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    :cond_0
    if-eqz p1, :cond_1

    .line 3645
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 3646
    .local v0, "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v0, :cond_1

    .line 3647
    const-string/jumbo v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3648
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 3649
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    :goto_0
    monitor-exit v2

    .line 3640
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3639
    return-void

    .line 3650
    .restart local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    :try_start_1
    const-string/jumbo v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3651
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3640
    .end local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public handlePackageResumedFG(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "strCallerPkgName"    # Ljava/lang/String;
    .param p3, "isFullScreen"    # Z
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 3747
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    .line 3750
    .local v1, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_1

    .line 3751
    if-eqz p4, :cond_0

    .line 3752
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3753
    invoke-virtual {p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 3752
    if-eqz v2, :cond_0

    .line 3754
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current Home Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Resumed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    .line 3759
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez v2, :cond_7

    .line 3779
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_2

    .line 3781
    if-eqz v1, :cond_2

    .line 3782
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3783
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3784
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3794
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v2, :cond_4

    .line 3795
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 3794
    if-eqz v2, :cond_c

    .line 3796
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p3, :cond_a

    .line 3800
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 3801
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-result-object v0

    .line 3802
    .local v0, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    if-nez v0, :cond_6

    .line 3803
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 3804
    .restart local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3806
    :cond_6
    return-void

    .line 3774
    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_7
    if-eqz v1, :cond_1

    .line 3775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    goto :goto_0

    .line 3785
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_9

    .line 3786
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3787
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3789
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3797
    :cond_a
    return-void

    .line 3809
    :cond_b
    if-eqz v1, :cond_c

    .line 3810
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3746
    :cond_c
    return-void
.end method

.method public handlePackageStatusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "isReInstall"    # Z

    .prologue
    .line 3708
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3709
    :cond_0
    return-void

    .line 3712
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3713
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3716
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->insertPackageToDB(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v2

    .line 3712
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3707
    return-void

    .line 3718
    :cond_3
    :try_start_1
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3719
    if-eqz p3, :cond_4

    .line 3720
    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v3, "handlePackageStatusChange isReInstall don\'t care!"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 3712
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3721
    return-void

    .line 3724
    :cond_4
    const/4 v0, 0x0

    .line 3725
    .local v0, "removedPkg":Lcom/android/server/am/MARsPackageStatus;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .local v0, "removedPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v0, :cond_6

    .line 3726
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3729
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3730
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3737
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->deletePackageInDB(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3712
    .end local v0    # "removedPkg":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3733
    .restart local v0    # "removedPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_6
    :try_start_3
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected !! Uninstalled package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3734
    const-string/jumbo v4, " is not in mManagedPackages list !"

    .line 3733
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public handlePowerOff()V
    .locals 2

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpHistory(Z)V

    .line 3485
    return-void
.end method

.method public handleSpecialBindServiceActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 3679
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3680
    :cond_0
    return-void

    .line 3683
    :cond_1
    const-string/jumbo v1, "android.view.InputMethod"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3684
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 3685
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3688
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    const-string/jumbo v1, "android.net.VpnService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3689
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    .line 3692
    :cond_3
    const-string/jumbo v1, "android.service.wallpaper.WallpaperService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3693
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    .line 3694
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 3695
    .restart local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3698
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    const-string/jumbo v1, "android.service.notification.NotificationListenerService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3699
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 3700
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3701
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3678
    :cond_5
    return-void
.end method

.method public handleSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3664
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3665
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3666
    return-void

    .line 3667
    :cond_0
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3668
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3667
    if-nez v1, :cond_1

    .line 3669
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3667
    if-eqz v1, :cond_3

    .line 3670
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->handleAppWidgetManagerActions(Ljava/lang/String;Ljava/lang/String;)V

    .line 3663
    :cond_2
    :goto_0
    return-void

    .line 3672
    :cond_3
    const-string/jumbo v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3673
    const-string/jumbo v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3672
    if-eqz v1, :cond_2

    .line 3674
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->handleDeviceAdminActions(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Z)V
    .locals 4
    .param p1, "boot"    # Z

    .prologue
    const/4 v3, 0x1

    .line 951
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1}, Lcom/android/server/am/MARsTrigger;->registerEmStateReceiver()V

    .line 954
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppOptUIAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 955
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 956
    return-void

    .line 958
    :cond_0
    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 962
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppSleepUIAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 963
    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v2, "AppSleepUI is available"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    .line 969
    :cond_1
    :try_start_0
    const-string/jumbo v1, "sys.config.mars_version"

    const-string/jumbo v2, "2.00"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->getMARsPolicyCondition(Z)V

    .line 978
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, v3}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 980
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerDefaultInputMethodChanged()V

    .line 981
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerEnabledAccessibilityServicesChanged()V

    .line 984
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getActiveAdminsPackages()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Ljava/util/ArrayList;

    .line 986
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->initSettingFromUI()V

    .line 987
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->initManagedPackages()V

    .line 988
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->initSKTPackagesWhiteList()V

    .line 991
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->checkSCPMParameters()V

    .line 994
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    .line 997
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerNotificationListener()V

    .line 949
    return-void

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v2, "init(), we cannot set system property"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initInternal(Z)V
    .locals 7
    .param p1, "boot"    # Z

    .prologue
    const/4 v6, 0x1

    .line 844
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 845
    .local v2, "isChinaNal":Ljava/lang/String;
    const-string/jumbo v3, "ChinaNalSecurity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 846
    sput-boolean v6, Lcom/android/server/am/MARsPolicyManager;->IsChinaModel:Z

    .line 848
    :cond_0
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isChinaNal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->IsChinaModel:Z

    if-eqz v3, :cond_4

    .line 851
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1

    .line 852
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-eqz v3, :cond_10

    .line 853
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 860
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_2

    .line 861
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 864
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_3

    .line 865
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 867
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    .line 868
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    .line 869
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdateMap:Ljava/util/Map;

    .line 870
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    .line 871
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    .line 872
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    .line 873
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    .line 877
    :cond_4
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_DEBUG_ENABLE:Z

    if-eqz v3, :cond_6

    .line 878
    const-string/jumbo v3, "ChinaNalSecurity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 879
    const-string/jumbo v3, "sys.config.mars_autorun"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v1, 0x1

    .line 880
    .local v1, "autoRunPolicyEnabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_5

    .line 881
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v1, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 882
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initInternal --- AutoRun enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_5
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-eqz v3, :cond_6

    .line 886
    const-string/jumbo v3, "sys.config.mars_applocker"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v0, 0x1

    .line 887
    .local v0, "appLockerPolicyEnabled":Z
    :goto_2
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_6

    .line 888
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v0, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 889
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initInternal for enabling app sleep --- AppLocker enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .end local v0    # "appLockerPolicyEnabled":Z
    .end local v1    # "autoRunPolicyEnabled":Z
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppStartUpHistoryEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 903
    const-string/jumbo v3, "MARsPolicyManager"

    const-string/jumbo v4, "App StartUp History is enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    sput-boolean v6, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 908
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_8

    .line 909
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v3}, Lcom/android/server/am/MARsTrigger;->registerUDSReceiver()V

    .line 913
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_9

    .line 914
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v3}, Lcom/android/server/am/MARsTrigger;->registerSBikeReceiver()V

    .line 918
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->gameModePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->gameModePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_a

    .line 919
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v3}, Lcom/android/server/am/MARsTrigger;->registerGameModeReceiver()V

    .line 924
    :cond_a
    if-eqz p1, :cond_d

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_c

    .line 925
    :cond_b
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 924
    if-eqz v3, :cond_d

    .line 926
    :cond_c
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->runMARsUpdatePackagesThread()V

    .line 930
    :cond_d
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_e

    .line 932
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getBoundAppWidgetPackages()Ljava/util/ArrayList;

    .line 935
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getEnabledAccessibilityPackage()V

    .line 938
    :cond_e
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_f

    .line 939
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->gameModePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_f

    .line 940
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "appLockerPolicy.enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 941
    const-string/jumbo v5, ", autoRunPolicy.enabled = "

    .line 940
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 941
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 940
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 942
    const-string/jumbo v5, ", udsPolicy.enabled = "

    .line 940
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 942
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 940
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 943
    const-string/jumbo v5, ", sbikePolicy.enabled = "

    .line 940
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 943
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 940
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 944
    const-string/jumbo v5, ", gameModePolicy.enabled = "

    .line 940
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 944
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->gameModePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 940
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 945
    const-string/jumbo v5, ", aresPolicy.enabled = "

    .line 940
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 945
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 940
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_f
    return-void

    .line 855
    :cond_10
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    goto/16 :goto_0

    .line 879
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "autoRunPolicyEnabled":Z
    goto/16 :goto_1

    .line 886
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "appLockerPolicyEnabled":Z
    goto/16 :goto_2

    .line 893
    .end local v0    # "appLockerPolicyEnabled":Z
    .end local v1    # "autoRunPolicyEnabled":Z
    :cond_13
    const-string/jumbo v3, "sys.config.mars_applocker"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v0, 0x1

    .line 894
    .restart local v0    # "appLockerPolicyEnabled":Z
    :goto_4
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_6

    .line 895
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v0, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 896
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initInternal --- AppLocker enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 893
    .end local v0    # "appLockerPolicyEnabled":Z
    :cond_14
    const/4 v0, 0x0

    .restart local v0    # "appLockerPolicyEnabled":Z
    goto :goto_4
.end method

.method public isActiveTrafficExisting(Ljava/lang/String;)Z
    .locals 23
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1924
    const/16 v22, 0x1

    .line 1925
    .local v22, "retCode":Z
    const/4 v13, 0x0

    .line 1926
    .local v13, "currTrafficTX":Ljava/lang/Long;
    const/16 v21, 0x0

    .line 1927
    .local v21, "prevTrafficTX":Ljava/lang/Long;
    const/4 v12, 0x0

    .line 1928
    .local v12, "currTrafficRX":Ljava/lang/Long;
    const/16 v20, 0x0

    .line 1932
    .local v20, "prevTrafficRX":Ljava/lang/Long;
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1933
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 1934
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isActiveTrafficExisting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -scpm blacklist package, force stop it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1939
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1940
    .local v19, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 1941
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_2

    .line 1942
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1943
    .local v13, "currTrafficTX":Ljava/lang/Long;
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1950
    .end local v12    # "currTrafficRX":Ljava/lang/Long;
    .end local v13    # "currTrafficTX":Ljava/lang/Long;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1951
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v21, v0

    .line 1955
    .end local v21    # "prevTrafficTX":Ljava/lang/Long;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "prevTrafficRX":Ljava/lang/Long;
    check-cast v20, Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v3

    .line 1960
    if-eqz v21, :cond_5

    if-nez v13, :cond_6

    .line 1962
    :cond_5
    const/4 v2, 0x0

    return v2

    .line 1945
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "currTrafficRX":Ljava/lang/Long;
    .restart local v20    # "prevTrafficRX":Ljava/lang/Long;
    .restart local v21    # "prevTrafficTX":Ljava/lang/Long;
    :catch_0
    move-exception v18

    .line 1946
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NameNotFoundException occurred for package :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const/4 v2, 0x0

    return v2

    .line 1950
    .end local v12    # "currTrafficRX":Ljava/lang/Long;
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v20    # "prevTrafficRX":Ljava/lang/Long;
    .end local v21    # "prevTrafficTX":Ljava/lang/Long;
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1961
    :cond_6
    if-eqz v20, :cond_5

    if-eqz v12, :cond_5

    .line 1965
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v16, v2, v4

    .line 1966
    .local v16, "diffTX":J
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v14, v2, v4

    .line 1968
    .local v14, "diffRX":J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_7

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_c

    .line 1969
    :cond_7
    :goto_0
    const/16 v22, 0x0

    .line 1972
    :cond_8
    if-eqz v22, :cond_b

    .line 1973
    const-wide/16 v10, 0x0

    .line 1974
    .local v10, "StorageDiff":J
    const/4 v8, 0x0

    .line 1975
    .local v8, "NotiDiff":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1976
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1979
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    :cond_a
    monitor-exit v3

    .line 1983
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    cmp-long v2, v10, v2

    if-gtz v2, :cond_b

    int-to-long v2, v8

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_b

    .line 1984
    const/16 v22, 0x0

    .line 1987
    .end local v8    # "NotiDiff":I
    .end local v10    # "StorageDiff":J
    :cond_b
    return v22

    .line 1968
    :cond_c
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    cmp-long v2, v16, v2

    if-gez v2, :cond_8

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    cmp-long v2, v14, v2

    if-gez v2, :cond_8

    goto :goto_0

    .line 1975
    .restart local v8    # "NotiDiff":I
    .restart local v10    # "StorageDiff":J
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method isAppOptUIAvailable()Z
    .locals 5

    .prologue
    .line 1124
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    .line 1125
    .local v0, "APP_OPTIMIZATION_INTENT":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1128
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1129
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 1131
    .local v2, "isAppOptUI":Z
    :goto_0
    return v2

    .line 1130
    .end local v2    # "isAppOptUI":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isAppSleepUIAvailable()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1143
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_SLEEP_UNUSED_APPS"

    .line 1144
    .local v0, "APP_SLEEP_INTENT":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1146
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1147
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.sm.ACTION_SLEEP_UNUSED_APPS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1150
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1152
    const/4 v4, 0x1

    return v4

    .line 1155
    :cond_0
    return v5
.end method

.method isAppStartUpHistoryEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1161
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_AUTO_RUN"

    .line 1162
    .local v0, "APP_STARTUP_HISTORY_INTENT":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1164
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1165
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.android.sm.ACTION_AUTO_RUN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1168
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v4, :cond_0

    .line 1170
    const/4 v4, 0x1

    return v4

    .line 1173
    :cond_0
    return v5
.end method

.method public isAutoRunBlockedApp(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1490
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :goto_0
    if-nez v1, :cond_1

    .line 1491
    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v3, "Auto Run Policy not enabled"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    return v2

    :cond_0
    move v1, v2

    .line 1490
    goto :goto_0

    .line 1495
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1496
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 1497
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-nez v0, :cond_2

    .line 1498
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Auto run ON."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1495
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1499
    return v2

    .line 1502
    :cond_2
    :try_start_1
    iget v1, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v4, 0x10

    if-eq v1, v4, :cond_3

    .line 1503
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Auto run ON."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1495
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1504
    return v2

    .line 1507
    :cond_3
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1508
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " skip current important package."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 1495
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1509
    return v2

    .line 1511
    :cond_4
    :try_start_3
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " Auto run OFF."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 1495
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1512
    return v6

    .line 1495
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v1

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZZ)Z
    .locals 10
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "policyNum"    # I
    .param p3, "force"    # Z
    .param p4, "emergency"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2478
    const/4 v6, 0x0

    .line 2479
    .local v6, "forceValue":I
    const/4 v7, 0x0

    .line 2480
    .local v7, "importantValue":I
    const/4 v8, 0x0

    .line 2481
    .local v8, "isImportant":Z
    iput-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 2484
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 2485
    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2486
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2487
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CurrentImportantPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -is blacklist package!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    :cond_0
    return v1

    .line 2493
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v0, v0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2494
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v0, v0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2499
    :goto_0
    if-eqz p3, :cond_2

    .line 2500
    if-eqz p4, :cond_4

    .line 2501
    xor-int/lit8 v7, v7, 0x1

    .line 2502
    xor-int/lit8 v7, v7, 0x2

    .line 2510
    :cond_2
    :goto_1
    const/4 v9, 0x1

    .end local v8    # "isImportant":Z
    .local v9, "step":I
    :goto_2
    const v0, 0x8000

    if-gt v9, v0, :cond_6

    .line 2511
    and-int v0, v7, v9

    sparse-switch v0, :sswitch_data_0

    .line 2563
    :goto_3
    :sswitch_0
    if-eqz v8, :cond_5

    .line 2564
    const/4 v0, 0x1

    return v0

    .line 2496
    .end local v9    # "step":I
    .restart local v8    # "isImportant":Z
    :cond_3
    const/16 v7, 0x476c

    goto :goto_0

    .line 2505
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v0, v0, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2506
    and-int/2addr v7, v6

    goto :goto_1

    .line 2513
    .end local v8    # "isImportant":Z
    .restart local v9    # "step":I
    :sswitch_1
    invoke-direct {p0, p1, v1, p2, p4}, Lcom/android/server/am/MARsPolicyManager;->isRecentlyUsedPackage(Lcom/android/server/am/MARsPackageStatus;ZIZ)Z

    move-result v8

    .local v8, "isImportant":Z
    goto :goto_3

    .line 2516
    .end local v8    # "isImportant":Z
    :sswitch_2
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->isLatestProtectedPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2519
    .end local v8    # "isImportant":Z
    :sswitch_3
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->isOngoingNotificationPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2522
    .end local v8    # "isImportant":Z
    :sswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->isWidgetPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2525
    .end local v8    # "isImportant":Z
    :sswitch_5
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->isNoAppIconPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2528
    .end local v8    # "isImportant":Z
    :sswitch_6
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->isVpnServicePackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2531
    .end local v8    # "isImportant":Z
    :sswitch_7
    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/am/MARsPolicyManager;->isMusicOrRecordActivePackage(Lcom/android/server/am/MARsPackageStatus;ZZ)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2534
    .end local v8    # "isImportant":Z
    :sswitch_8
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->isActiveTrafficPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2537
    .end local v8    # "isImportant":Z
    :sswitch_9
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->isDeviceAdminPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2540
    .end local v8    # "isImportant":Z
    :sswitch_a
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->isWallPaperPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2543
    .end local v8    # "isImportant":Z
    :sswitch_b
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->isDefaultIMEPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2546
    .end local v8    # "isImportant":Z
    :sswitch_c
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->isHomePackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2549
    .end local v8    # "isImportant":Z
    :sswitch_d
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->isTopPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2556
    .end local v8    # "isImportant":Z
    :sswitch_e
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->isDependsOnSystemPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2559
    .end local v8    # "isImportant":Z
    :sswitch_f
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->isRunningLocationPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v8

    .restart local v8    # "isImportant":Z
    goto :goto_3

    .line 2510
    .end local v8    # "isImportant":Z
    :cond_5
    shl-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2568
    :cond_6
    return v1

    .line 2511
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
        0x20 -> :sswitch_6
        0x40 -> :sswitch_7
        0x80 -> :sswitch_8
        0x100 -> :sswitch_9
        0x200 -> :sswitch_a
        0x400 -> :sswitch_b
        0x800 -> :sswitch_c
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
    .end sparse-switch
.end method

.method public isCurrentImportantPackageForDump(Lcom/android/server/am/MARsPackageStatus;I)I
    .locals 9
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "policyNum"    # I

    .prologue
    const v8, 0x8000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2572
    const/4 v2, 0x0

    .line 2573
    .local v2, "pkgImportValue":I
    const/4 v1, 0x0

    .line 2576
    .local v1, "isImportant":Z
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v4, v4, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2578
    .local v0, "importantValue":I
    const/4 v3, 0x1

    .end local v1    # "isImportant":Z
    .local v3, "step":I
    :goto_0
    if-gt v3, v8, :cond_1

    .line 2579
    and-int v4, v0, v3

    sparse-switch v4, :sswitch_data_0

    .line 2578
    :cond_0
    :goto_1
    :sswitch_0
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2581
    :sswitch_1
    invoke-direct {p0, p1, v6, p2, v7}, Lcom/android/server/am/MARsPolicyManager;->isRecentlyUsedPackage(Lcom/android/server/am/MARsPackageStatus;ZIZ)Z

    move-result v1

    .line 2583
    .local v1, "isImportant":Z
    if-eqz v1, :cond_0

    .line 2584
    or-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2587
    .end local v1    # "isImportant":Z
    :sswitch_2
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isLatestProtectedPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    .line 2589
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2590
    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 2593
    .end local v1    # "isImportant":Z
    :sswitch_3
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isOngoingNotificationPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    .line 2595
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2596
    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 2599
    .end local v1    # "isImportant":Z
    :sswitch_4
    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/MARsPolicyManager;->isWidgetPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v1

    .line 2601
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2602
    or-int/lit8 v2, v2, 0x8

    goto :goto_1

    .line 2605
    .end local v1    # "isImportant":Z
    :sswitch_5
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isNoAppIconPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    .line 2607
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2608
    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    .line 2611
    .end local v1    # "isImportant":Z
    :sswitch_6
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isVpnServicePackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    .line 2613
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2614
    or-int/lit8 v2, v2, 0x20

    goto :goto_1

    .line 2617
    .end local v1    # "isImportant":Z
    :sswitch_7
    invoke-direct {p0, p1, v7, v6}, Lcom/android/server/am/MARsPolicyManager;->isMusicOrRecordActivePackage(Lcom/android/server/am/MARsPackageStatus;ZZ)Z

    move-result v1

    .line 2619
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2620
    or-int/lit8 v2, v2, 0x40

    goto :goto_1

    .line 2623
    .end local v1    # "isImportant":Z
    :sswitch_8
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isActiveTrafficPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    .line 2625
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2626
    or-int/lit16 v2, v2, 0x80

    goto :goto_1

    .line 2629
    .end local v1    # "isImportant":Z
    :sswitch_9
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isDeviceAdminPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    .line 2631
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2632
    or-int/lit16 v2, v2, 0x100

    goto :goto_1

    .line 2635
    .end local v1    # "isImportant":Z
    :sswitch_a
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isWallPaperPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    .line 2637
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2638
    or-int/lit16 v2, v2, 0x200

    goto :goto_1

    .line 2641
    .end local v1    # "isImportant":Z
    :sswitch_b
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isDefaultIMEPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    .line 2643
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2644
    or-int/lit16 v2, v2, 0x400

    goto :goto_1

    .line 2647
    .end local v1    # "isImportant":Z
    :sswitch_c
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isHomePackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    .line 2649
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2650
    or-int/lit16 v2, v2, 0x800

    goto :goto_1

    .line 2653
    .end local v1    # "isImportant":Z
    :sswitch_d
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isTopPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    .line 2655
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2656
    or-int/lit16 v2, v2, 0x1000

    goto :goto_1

    .line 2666
    .end local v1    # "isImportant":Z
    :sswitch_e
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isDependsOnSystemPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    .line 2668
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2669
    or-int/lit16 v2, v2, 0x4000

    goto :goto_1

    .line 2672
    .end local v1    # "isImportant":Z
    :sswitch_f
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isRunningLocationPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    .line 2674
    .restart local v1    # "isImportant":Z
    if-eqz v1, :cond_0

    .line 2675
    or-int/2addr v2, v8

    goto/16 :goto_1

    .line 2679
    .end local v1    # "isImportant":Z
    :cond_1
    return v2

    .line 2579
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
        0x20 -> :sswitch_6
        0x40 -> :sswitch_7
        0x80 -> :sswitch_8
        0x100 -> :sswitch_9
        0x200 -> :sswitch_a
        0x400 -> :sswitch_b
        0x800 -> :sswitch_c
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
    .end sparse-switch
.end method

.method public isPolicyEnabled(I)Z
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 1195
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    .line 1196
    .local v0, "pl":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v0, :cond_0

    .line 1197
    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    return v1

    .line 1199
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3181
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager;->isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 26
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "queueName"    # Ljava/lang/String;

    .prologue
    .line 3188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 3189
    .local v18, "now":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3190
    .local v12, "calleePackage":Ljava/lang/String;
    const/4 v13, 0x0

    .line 3191
    .local v13, "callerPackage":Ljava/lang/String;
    const/16 v24, 0x0

    .line 3192
    .local v24, "target":Lcom/android/server/am/MARsPackageStatus;
    const/4 v7, 0x0

    .line 3194
    .local v7, "isRestricted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v25, v0

    monitor-enter v25

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3196
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_2

    .line 3197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/MARsPackageStatus;

    .line 3198
    .local v21, "ps":Lcom/android/server/am/MARsPackageStatus;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 3199
    const-string/jumbo v4, "MARsPolicyManager"

    const-string/jumbo v6, "Abnomal case in isRestrictedPackage package name is null"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3203
    :cond_1
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 3204
    const/4 v7, 0x1

    .line 3205
    move-object/from16 v24, v21

    .line 3210
    .end local v21    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v24    # "target":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    if-nez v7, :cond_3

    .line 3211
    const/4 v4, 0x0

    monitor-exit v25

    .line 3194
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3211
    return v4

    .line 3215
    :cond_3
    :try_start_1
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_4

    .line 3216
    const/4 v4, 0x0

    monitor-exit v25

    .line 3194
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3216
    return v4

    .line 3219
    :cond_4
    :try_start_2
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    if-eq v4, v6, :cond_6

    .line 3220
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_5

    .line 3221
    const-string/jumbo v4, "MARsPolicyManager"

    const-string/jumbo v6, "we will return, because userid is not same"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3222
    :cond_5
    const/4 v4, 0x0

    monitor-exit v25

    .line 3194
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3222
    return v4

    .line 3226
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 3227
    .local v5, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v5, :cond_7

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_7

    .line 3228
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3231
    .end local v13    # "callerPackage":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    .line 3232
    const/16 v20, 0x0

    .line 3233
    .local v20, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    const/16 v22, 0x0

    .line 3234
    .local v22, "receivedGCM":Z
    const/4 v14, 0x0

    move/from16 v17, v7

    .end local v7    # "isRestricted":Z
    .end local v20    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    .local v17, "isRestricted":Z
    :goto_1
    :try_start_4
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_2c

    .line 3235
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3236
    .local v20, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->restriction:I

    move/from16 v23, v0

    .line 3238
    .local v23, "restrictions":I
    const/high16 v4, 0x2000000

    and-int v4, v4, v23

    if-eqz v4, :cond_9

    .line 3239
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez v4, :cond_9

    .line 3240
    const/4 v7, 0x0

    .line 3234
    .end local v17    # "isRestricted":Z
    :cond_8
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move/from16 v17, v7

    .restart local v17    # "isRestricted":Z
    goto :goto_1

    .line 3245
    :cond_9
    const/high16 v4, 0x4000000

    and-int v4, v4, v23

    if-eqz v4, :cond_a

    .line 3246
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v4, :cond_a

    .line 3247
    const/4 v7, 0x0

    .line 3248
    .end local v17    # "isRestricted":Z
    .restart local v7    # "isRestricted":Z
    goto :goto_2

    .line 3252
    .end local v7    # "isRestricted":Z
    .restart local v17    # "isRestricted":Z
    :cond_a
    const/high16 v4, 0x8000000

    and-int v4, v4, v23

    if-eqz v4, :cond_b

    .line 3253
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    if-nez v4, :cond_b

    .line 3254
    const/4 v7, 0x0

    .line 3255
    .end local v17    # "isRestricted":Z
    .restart local v7    # "isRestricted":Z
    goto :goto_2

    .line 3259
    .end local v7    # "isRestricted":Z
    .restart local v17    # "isRestricted":Z
    :cond_b
    const/high16 v4, 0x10000000

    and-int v4, v4, v23

    if-eqz v4, :cond_c

    .line 3260
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    if-eqz v4, :cond_c

    .line 3261
    const/4 v7, 0x0

    .line 3262
    .end local v17    # "isRestricted":Z
    .restart local v7    # "isRestricted":Z
    goto :goto_2

    .line 3266
    .end local v7    # "isRestricted":Z
    .restart local v17    # "isRestricted":Z
    :cond_c
    const/4 v15, 0x0

    .line 3267
    .local v15, "isAllowed":Z
    const/16 v16, 0x0

    .line 3268
    .local v16, "isNeedExcept":Z
    const-string/jumbo v4, "activity"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v0, p5

    if-ne v0, v4, :cond_14

    .line 3269
    and-int/lit8 v4, v23, 0x1

    if-eqz v4, :cond_12

    .line 3270
    const/4 v15, 0x0

    .line 3428
    :cond_d
    :goto_3
    if-nez v16, :cond_e

    .line 3429
    const/4 v15, 0x1

    .line 3431
    :cond_e
    if-eqz v15, :cond_2b

    const/4 v7, 0x0

    .line 3434
    .local v7, "isRestricted":Z
    :goto_4
    if-eqz v7, :cond_8

    .line 3440
    .end local v7    # "isRestricted":Z
    .end local v15    # "isAllowed":Z
    .end local v16    # "isNeedExcept":Z
    .end local v17    # "isRestricted":Z
    .end local v20    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    .end local v23    # "restrictions":I
    :goto_5
    if-nez v7, :cond_f

    if-eqz v22, :cond_f

    .line 3441
    const/4 v4, 0x1

    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 3442
    const/16 v22, 0x0

    .line 3445
    :cond_f
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_10

    if-eqz v7, :cond_10

    .line 3446
    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " hostingType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3447
    const-string/jumbo v8, " is Restricted by policy: "

    .line 3446
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3447
    const-string/jumbo v8, " caller is: "

    .line 3446
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    :cond_10
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz v4, :cond_11

    .line 3451
    move-object/from16 v0, v24

    iget v11, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v6, p0

    move-object v8, v12

    move-object v9, v13

    move-object/from16 v10, p5

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/MARsPolicyManager;->markAppStartUpResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_11
    monitor-exit v25

    .line 3194
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3454
    return v7

    .line 3273
    .restart local v15    # "isAllowed":Z
    .restart local v16    # "isNeedExcept":Z
    .restart local v17    # "isRestricted":Z
    .restart local v20    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    .restart local v23    # "restrictions":I
    :cond_12
    and-int/lit8 v4, v23, 0x2

    if-eqz v4, :cond_13

    .line 3274
    const/16 v16, 0x1

    .line 3275
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3276
    const/4 v15, 0x1

    .line 3279
    :cond_13
    and-int/lit8 v4, v23, 0x4

    if-eqz v4, :cond_d

    .line 3280
    const/16 v16, 0x1

    .line 3281
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3282
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 3286
    :cond_14
    const-string/jumbo v4, "startService"

    move-object/from16 v0, p5

    if-eq v0, v4, :cond_15

    const-string/jumbo v4, "bindService"

    move-object/from16 v0, p5

    if-ne v0, v4, :cond_19

    .line 3287
    :cond_15
    and-int/lit8 v4, v23, 0x10

    if-eqz v4, :cond_16

    .line 3288
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 3291
    :cond_16
    and-int/lit8 v4, v23, 0x20

    if-eqz v4, :cond_17

    .line 3292
    const/16 v16, 0x1

    .line 3293
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3294
    const/4 v15, 0x1

    .line 3297
    :cond_17
    and-int/lit8 v4, v23, 0x40

    if-eqz v4, :cond_18

    .line 3298
    const/16 v16, 0x1

    .line 3299
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3300
    const/4 v15, 0x1

    .line 3303
    :cond_18
    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_d

    .line 3304
    const/16 v16, 0x1

    .line 3305
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 3306
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 3310
    :cond_19
    const-string/jumbo v4, "provider"

    move-object/from16 v0, p5

    if-ne v0, v4, :cond_1d

    .line 3311
    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_1a

    .line 3312
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 3315
    :cond_1a
    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_1b

    .line 3316
    const/16 v16, 0x1

    .line 3317
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3318
    const/4 v15, 0x1

    .line 3321
    :cond_1b
    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_1c

    .line 3322
    const/16 v16, 0x1

    .line 3323
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 3324
    const/4 v15, 0x1

    .line 3327
    :cond_1c
    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_d

    .line 3328
    const/16 v16, 0x1

    .line 3329
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 3330
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 3334
    :cond_1d
    const-string/jumbo v4, "broadcast"

    move-object/from16 v0, p5

    if-ne v0, v4, :cond_2a

    .line 3335
    if-eqz p6, :cond_1e

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_1f

    .line 3336
    :cond_1e
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 3339
    :cond_1f
    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_20

    .line 3340
    const/16 v16, 0x1

    .line 3341
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3342
    const/4 v15, 0x1

    .line 3345
    :cond_20
    move/from16 v0, v23

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_21

    .line 3346
    const/16 v16, 0x1

    .line 3347
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3348
    const/4 v15, 0x1

    .line 3352
    :cond_21
    const v4, 0x8000

    and-int v4, v4, v23

    if-eqz v4, :cond_22

    .line 3353
    const/16 v16, 0x1

    .line 3354
    const-string/jumbo v4, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3355
    const/16 v22, 0x1

    .line 3356
    const/4 v15, 0x1

    .line 3361
    :cond_22
    const/high16 v4, 0x10000

    and-int v4, v4, v23

    if-eqz v4, :cond_23

    .line 3362
    const/16 v16, 0x1

    .line 3363
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v4}, Lcom/android/server/am/MARsPolicyManager;->isGearManagerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 3364
    const/4 v15, 0x1

    .line 3368
    :cond_23
    const/high16 v4, 0x20000

    and-int v4, v4, v23

    if-eqz v4, :cond_24

    .line 3369
    const/16 v16, 0x1

    .line 3370
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/android/server/am/MARsPolicyManager;->isSpecialIntentsForSKT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3371
    const/4 v15, 0x1

    .line 3375
    :cond_24
    const/high16 v4, 0x40000

    and-int v4, v4, v23

    if-eqz v4, :cond_25

    .line 3376
    const/16 v16, 0x1

    .line 3378
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_25

    .line 3379
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_25

    .line 3380
    const-string/jumbo v4, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 3378
    if-eqz v4, :cond_25

    .line 3381
    const-string/jumbo v4, "foreground"

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3378
    if-eqz v4, :cond_25

    .line 3382
    const/4 v15, 0x1

    .line 3387
    :cond_25
    const/high16 v4, 0x80000

    and-int v4, v4, v23

    if-eqz v4, :cond_26

    .line 3388
    const/16 v16, 0x1

    .line 3389
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v4}, Lcom/android/server/am/MARsPolicyManager;->isEdgeIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3390
    const/4 v15, 0x1

    .line 3394
    :cond_26
    const/high16 v4, 0x200000

    and-int v4, v4, v23

    if-eqz v4, :cond_27

    .line 3395
    const/16 v16, 0x1

    .line 3396
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v4}, Lcom/android/server/am/MARsPolicyManager;->isKiesIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 3397
    const/4 v15, 0x1

    .line 3401
    :cond_27
    const/high16 v4, 0x400000

    and-int v4, v4, v23

    if-eqz v4, :cond_28

    .line 3402
    const/16 v16, 0x1

    .line 3403
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v4}, Lcom/android/server/am/MARsPolicyManager;->isMediaIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3404
    const/4 v15, 0x1

    .line 3408
    :cond_28
    const/high16 v4, 0x800000

    and-int v4, v4, v23

    if-eqz v4, :cond_29

    .line 3409
    const/16 v16, 0x1

    .line 3410
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/am/MARsPolicyManager;->isSelfIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 3411
    const/4 v15, 0x1

    .line 3415
    :cond_29
    const/high16 v4, 0x100000

    and-int v4, v4, v23

    if-eqz v4, :cond_d

    .line 3416
    const/16 v16, 0x1

    .line 3417
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentLauncherApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3418
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 3422
    :cond_2a
    const-string/jumbo v4, "backup"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v0, p5

    if-ne v0, v4, :cond_d

    .line 3423
    const/high16 v4, 0x1000000

    and-int v4, v4, v23

    if-eqz v4, :cond_d

    .line 3424
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 3431
    :cond_2b
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 3194
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "i":I
    .end local v15    # "isAllowed":Z
    .end local v16    # "isNeedExcept":Z
    .end local v17    # "isRestricted":Z
    .end local v20    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    .end local v22    # "receivedGCM":Z
    .end local v23    # "restrictions":I
    :catchall_0
    move-exception v4

    :goto_6
    monitor-exit v25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "i":I
    .restart local v17    # "isRestricted":Z
    .restart local v22    # "receivedGCM":Z
    :catchall_1
    move-exception v4

    move/from16 v7, v17

    .end local v17    # "isRestricted":Z
    .local v7, "isRestricted":Z
    goto :goto_6

    .end local v7    # "isRestricted":Z
    .restart local v17    # "isRestricted":Z
    :cond_2c
    move/from16 v7, v17

    .end local v17    # "isRestricted":Z
    .restart local v7    # "isRestricted":Z
    goto/16 :goto_5
.end method

.method public onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V
    .locals 7
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;

    .prologue
    const/4 v0, 0x0

    .line 4047
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4048
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v2, :cond_1

    .line 4049
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 4048
    if-eqz v2, :cond_4

    .line 4050
    :cond_1
    if-eqz p1, :cond_4

    .line 4052
    iget v2, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 4054
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-eqz v2, :cond_2

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    :cond_2
    if-nez v0, :cond_3

    .line 4055
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 4056
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 4058
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    iget v6, p1, Lcom/android/server/am/MARsPackageStatus;->dbExtras:I

    invoke-direct {p0, v3, v6}, Lcom/android/server/am/MARsPolicyManager;->convertStateToDBExtrasValue(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/android/server/am/MARsDBManager;->updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;)V

    .line 4067
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 4068
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v1

    .line 4047
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4046
    return-void

    .line 4060
    :cond_6
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 4061
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4047
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onAppUsedForTimeChanged(J)V
    .locals 13
    .param p1, "changedTime"    # J

    .prologue
    .line 4080
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v5, :cond_0

    .line 4081
    const-string/jumbo v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAppUsedForTimeChanged -- SystemTime Changed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x1b7740

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 4085
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v5, :cond_1

    .line 4086
    const-string/jumbo v5, "MARsPolicyManager"

    const-string/jumbo v6, "SystemTime Changed Less than 30 min, didn\'t care!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    :cond_1
    return-void

    .line 4091
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4093
    .local v3, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4094
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 4095
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 4097
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_3

    .line 4098
    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    add-long/2addr v8, p1

    iput-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 4101
    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    iget v7, v2, Lcom/android/server/am/MARsPackageStatus;->dbExtras:I

    invoke-direct {p0, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->convertStateToDBExtrasValue(II)Ljava/lang/String;

    move-result-object v0

    .line 4102
    .local v0, "extras":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/MARsDBManager$SMDBValue;

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v7, v8, v0}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4103
    .local v4, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4094
    .end local v0    # "extras":Ljava/lang/String;
    .end local v4    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4107
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v5, v3}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 4093
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4079
    return-void

    .line 4093
    .end local v1    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method public screenOnStateChanged(Z)V
    .locals 2
    .param p1, "onoff"    # Z

    .prologue
    .line 2016
    if-nez p1, :cond_0

    .line 2017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->lastScreenOffStartTime:J

    .line 2015
    :cond_0
    return-void
.end method

.method setAllPoliciesOnOffState(IZ)V
    .locals 5
    .param p1, "on"    # I
    .param p2, "boot"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1339
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 1340
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllPoliciesOnOffState on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_0
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    if-eq v0, p1, :cond_1

    .line 1344
    sparse-switch p1, :sswitch_data_0

    .line 1385
    :goto_0
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 1338
    :cond_1
    return-void

    .line 1346
    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOffPolicies()V

    .line 1348
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_2

    .line 1349
    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 1351
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_0

    .line 1354
    :sswitch_1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->IsChinaModel:Z

    if-nez v0, :cond_4

    .line 1355
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_3

    .line 1356
    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 1358
    :cond_3
    invoke-direct {p0, v4, p2}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    .line 1360
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOnPolicies()V

    .line 1361
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_0

    .line 1364
    :sswitch_2
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->IsChinaModel:Z

    if-nez v0, :cond_6

    .line 1365
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_5

    .line 1366
    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 1368
    :cond_5
    invoke-direct {p0, v4, p2}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    .line 1370
    :cond_6
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOnPolicies()V

    .line 1371
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_0

    .line 1374
    :sswitch_3
    sput-boolean v4, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 1377
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 1378
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    goto :goto_0

    .line 1381
    :sswitch_4
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOffPolicies()V

    .line 1382
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_0

    .line 1344
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x98967f -> :sswitch_4
    .end sparse-switch
.end method

.method public setAppUsedRecentlyState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1999
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    .line 1998
    return-void
.end method

.method public setAutoRunDownloadParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "trafficDuration"    # Ljava/lang/String;
    .param p2, "trafficAmount"    # Ljava/lang/String;
    .param p3, "notiUpdateCount"    # Ljava/lang/String;
    .param p4, "appSizeIncreased"    # Ljava/lang/String;

    .prologue
    .line 4799
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    .line 4800
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    .line 4801
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    .line 4802
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    .line 4803
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_SCPM:Z

    if-eqz v0, :cond_0

    .line 4804
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoRunDownloadParameter --- trafficDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget-wide v2, v2, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4805
    const-string/jumbo v2, " , trafficAmount = "

    .line 4804
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4805
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    .line 4804
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4805
    const-string/jumbo v2, " , notiUpdateCount = "

    .line 4804
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4805
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    .line 4804
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4805
    const-string/jumbo v2, " ,appSizeIncreased = "

    .line 4804
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4805
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    .line 4804
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    :cond_0
    return-void
.end method

.method public setAutoRunParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "triggerPeriod"    # Ljava/lang/String;
    .param p2, "unusedPeriod"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x3c

    .line 4793
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    mul-long/2addr v2, v6

    iput-wide v2, v0, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    .line 4794
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v4

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    .line 4795
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoRunParameter --- TriggerPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget-wide v2, v2, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , UnusedPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    return-void
.end method

.method public setCarModeOnState(Z)V
    .locals 0
    .param p1, "onoff"    # Z

    .prologue
    .line 2023
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 2022
    return-void
.end method

.method public setDataConnectionConnected()V
    .locals 5

    .prologue
    .line 1821
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1822
    .local v0, "mConnManagerDoNotUseDirectly":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1823
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    .line 1824
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 1825
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DataConnection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_0
    return-void

    .line 1823
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setEmergencyKillEnabled(Z)V
    .locals 0
    .param p1, "onoff"    # Z

    .prologue
    .line 2057
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsEmergencyKillEnabled:Z

    .line 2056
    return-void
.end method

.method public setGameModeStatus(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gameModePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gameModePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean p1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 1202
    :cond_0
    return-void
.end method

.method public setImmediateKillEnabled(Z)V
    .locals 0
    .param p1, "onoff"    # Z

    .prologue
    .line 2041
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsImmediateKillEnabled:Z

    .line 2040
    return-void
.end method

.method public setLCDonKillEnabled(Z)V
    .locals 0
    .param p1, "onoff"    # Z

    .prologue
    .line 2049
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLCDonKillEnabled:Z

    .line 2048
    return-void
.end method

.method setPackagesUnusedLockingTime(I)V
    .locals 6
    .param p1, "hours"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1322
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 1323
    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackagesUnusedLockingTime hours = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    mul-int/lit8 v2, p1, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 1330
    :cond_1
    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    .line 1331
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    const-wide/32 v2, 0x36ee80

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    .line 1321
    return-void
.end method

.method public setSCPMBlackListForActiveTrafficValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4860
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4861
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4864
    .local v0, "autoRunBlackListForActiveTraffic":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4865
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    const-string/jumbo v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4866
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4864
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4872
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    const-string/jumbo v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 4860
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4859
    return-void

    .line 4860
    .end local v0    # "autoRunBlackListForActiveTraffic":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public setSCPMBlackListValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4843
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4844
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4847
    .local v0, "autoRunBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4848
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    const-string/jumbo v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4849
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4847
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4855
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    const-string/jumbo v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 4843
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4842
    return-void

    .line 4843
    .end local v0    # "autoRunBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public setSCPMBlockValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4809
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4810
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4813
    .local v0, "autoRunBlockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4814
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    const-string/jumbo v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4815
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4813
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4821
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    const-string/jumbo v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 4809
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4808
    return-void

    .line 4809
    .end local v0    # "autoRunBlockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public setSCPMSkipOptimizationValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4877
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4878
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4880
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4881
    .local v0, "autoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4882
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    const-string/jumbo v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4883
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4881
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4889
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    const-string/jumbo v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 4877
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4876
    return-void

    .line 4877
    .end local v0    # "autoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public setSCPMSkipValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4826
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4827
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4830
    .local v0, "autoRunSkipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4831
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    const-string/jumbo v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4832
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4830
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4838
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    const-string/jumbo v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 4826
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4825
    return-void

    .line 4826
    .end local v0    # "autoRunSkipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method setSKTSpeicalPackages(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1390
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1391
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1392
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1390
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1389
    return-void

    .line 1390
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setScreenOnState(Z)V
    .locals 1
    .param p1, "onoff"    # Z

    .prologue
    .line 2003
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eq v0, p1, :cond_0

    .line 2004
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->screenOnStateChanged(Z)V

    .line 2005
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 2002
    return-void
.end method

.method setWhiteListIntentsForSKT(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1397
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1398
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1399
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1397
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1396
    return-void

    .line 1397
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public switchUser(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1005
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 1006
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 1009
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1012
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_0
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 1018
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->unregisterContentObserver()V

    .line 1019
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->setContext(Landroid/content/Context;)V

    .line 1020
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, v3}, Lcom/android/server/am/MARsTrigger;->unregisterReceiver(Z)V

    .line 1021
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsTrigger;->setContext(Landroid/content/Context;)V

    .line 1022
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1023
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1024
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1025
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1026
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1027
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 1028
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v2

    .line 1022
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1030
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1031
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 1032
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1033
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 1034
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1035
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 1036
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1037
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 1038
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1039
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 1040
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1041
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 1042
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1043
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 1044
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1045
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    .line 1046
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1047
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 1048
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1049
    :cond_d
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 1050
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_e
    monitor-exit v2

    .line 1052
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 1054
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->init(Z)V

    .line 1004
    return-void

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1022
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1030
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateRunningLocationPackages(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1915
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1916
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1917
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1918
    const-string/jumbo v1, "packagelist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    .line 1914
    :cond_0
    return-void
.end method

.method public updateSBikePackages(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4301
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4302
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageStatus;

    .line 4303
    .local v1, "ps":Lcom/android/server/am/MARsPackageStatus;
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->sbike:I

    .line 4301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4300
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    return-void
.end method

.method public updateTrafficStat()V
    .locals 19

    .prologue
    .line 1866
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.GET_RUNNING_LOCATION"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1867
    .local v5, "intentGetLocaitonPkg":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getUserId()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v5, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1869
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    if-eqz v11, :cond_4

    .line 1870
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1872
    .local v9, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1873
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 1874
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v16

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1877
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 1878
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/MARsPackageStatus;

    .line 1879
    .local v10, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v8, v10, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1881
    .local v8, "pkgName":Ljava/lang/String;
    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v9, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1882
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_2

    .line 1883
    const/4 v7, 0x0

    .line 1884
    .local v7, "isTXContains":Z
    const/4 v6, 0x0

    .line 1886
    .local v6, "isRXContains":Z
    iget v11, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v14

    .line 1887
    .local v14, "txbytestime":J
    iget v11, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v12

    .line 1889
    .local v12, "rxbytestime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1890
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 1891
    .local v7, "isTXContains":Z
    if-nez v7, :cond_0

    .line 1892
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 1896
    .local v6, "isRXContains":Z
    if-nez v6, :cond_1

    .line 1897
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    monitor-exit v17

    .line 1901
    if-nez v6, :cond_2

    .line 1902
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/am/MARsPolicyManager;->invokePMGetPackageSizeInfo(Ljava/lang/String;)V

    .line 1903
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/am/MARsPolicyManager;->invokeNMGetNotificationCountInfo(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1877
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "isRXContains":Z
    .end local v7    # "isTXContains":Z
    .end local v12    # "rxbytestime":J
    .end local v14    # "txbytestime":J
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1872
    .end local v4    # "i":I
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v10    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v11

    monitor-exit v16

    throw v11

    .line 1889
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "i":I
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v10    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .restart local v12    # "rxbytestime":J
    .restart local v14    # "txbytestime":J
    :catchall_1
    move-exception v11

    :try_start_5
    monitor-exit v17

    throw v11
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1906
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "rxbytestime":J
    .end local v14    # "txbytestime":J
    :catch_0
    move-exception v3

    .line 1907
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string/jumbo v11, "MARsPolicyManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Exception for package "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 1876
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "i":I
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v10    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :catchall_2
    move-exception v11

    monitor-exit v16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v11

    .restart local v4    # "i":I
    :cond_3
    monitor-exit v16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1864
    .end local v4    # "i":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    return-void
.end method

.method public updateUDSPackages(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4286
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 4287
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4288
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 4289
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 4290
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_0

    .line 4291
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I

    .line 4286
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4285
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
