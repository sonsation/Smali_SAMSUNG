.class public Lcom/android/server/am/MARsDBManager;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsDBManager$DBHandler;,
        Lcom/android/server/am/MARsDBManager$DBThread;,
        Lcom/android/server/am/MARsDBManager$SCPMDBValue;,
        Lcom/android/server/am/MARsDBManager$SMDBValue;,
        Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;,
        Lcom/android/server/am/MARsDBManager$SmartManagerObserver;,
        Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final ACTION_MATCH_TYPE:Ljava/lang/String; = "matchType"

.field private static final ADJUST_TARGET_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field private static final APP_SIZE_INCREASED:Ljava/lang/String; = "appSizeIncreased"

.field private static final AUTORUN:Ljava/lang/String; = "autoRun"

.field public static final AUTORUN_CATEGORY:Ljava/lang/String; = "AutoRun"

.field private static final AUTORUN_OPTIMIZATION_TYPE_SKIP:Ljava/lang/String; = "SkipOptimization"

.field private static final AUTORUN_PARAMETER:Ljava/lang/String; = "AutoRunParameter"

.field private static final AUTORUN_RESTRICTION_TYPE_BLACKLIST:Ljava/lang/String; = "BlackList"

.field private static final AUTORUN_RESTRICTION_TYPE_BLACKLIST_ACTIVE_TRAFFIC:Ljava/lang/String; = "BlackListForActiveTraffic"

.field private static final AUTORUN_RESTRICTION_TYPE_BLOCK:Ljava/lang/String; = "Block"

.field private static final AUTORUN_RESTRICTION_TYPE_SKIP:Ljava/lang/String; = "Skip"

.field private static final CALLEE:Ljava/lang/String; = "callee"

.field private static final CALLEEPKG:Ljava/lang/String; = "calleepackage"

.field private static final CALLER:Ljava/lang/String; = "caller"

.field private static final CALLERPKG:Ljava/lang/String; = "callerpackage"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final CURRENT_IMPORTANT_VALUE:Ljava/lang/String; = "currentImportantValue"

.field private static final DATA1:Ljava/lang/String; = "data1"

.field private static final DATA2:Ljava/lang/String; = "data2"

.field private static final DATA3:Ljava/lang/String; = "data3"

.field private static final DATA4:Ljava/lang/String; = "data4"

.field private static final DATA5:Ljava/lang/String; = "data5"

.field private static final DATA6:Ljava/lang/String; = "data6"

.field private static final DATA_TRAFFIC_AMOUNT:Ljava/lang/String; = "dataTrafficAmount"

.field private static final DOWNLOAD_PARAMETER:Ljava/lang/String; = "DownLoadParameter"

.field private static final EXTRAS:Ljava/lang/String; = "extras"

.field private static final FIRST_TRIGGER_TIME:Ljava/lang/String; = "firstTriggerTime"

.field private static final ISAPPOPTTARGET:Ljava/lang/String; = "isAppOptTarget"

.field private static final IS_ALLOWED:Ljava/lang/String; = "isAllowed"

.field private static final IS_BLOCKED:Ljava/lang/String; = "isblocked"

.field private static final IS_DEFAULT_FREEZED:Ljava/lang/String; = "isDefaultFreezed"

.field private static final IS_POLICY_ENABLED:Ljava/lang/String; = "isPolicyEnabled"

.field private static final IS_SM_FREEZED:Ljava/lang/String; = "isSMFreezed"

.field private static final IS_USER_FORCESTOPPED:Ljava/lang/String; = "isUserForceStopped"

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final KILL_TYPE:Ljava/lang/String; = "killType"

.field private static final LAST_USED_TIME:Ljava/lang/String; = "lastUsedTime"

.field private static final MAIN_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field private static final MARS_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.mars"

.field static final MARS_CHECK_SCPM_PARAMETERS_MSG:I = 0xb

.field static final MARS_DB_DELETE_PACKAGE_MSG:I = 0x9

.field static final MARS_DB_GETPOLICYCONDITION_MSG:I = 0xd

.field static final MARS_DB_INITMANAGEDPACKAGES_MSG:I = 0x1

.field static final MARS_DB_INITPOLICYCONDITION_MSG:I = 0xc

.field static final MARS_DB_INITSETTING_MSG:I = 0x2

.field static final MARS_DB_INIT_SKT_PACKAGE_MSG:I = 0xa

.field static final MARS_DB_INSERT_PACKAGE_MSG:I = 0x8

.field static final MARS_DB_REQUEST_FILLINDB_MSG:I = 0x7

.field static final MARS_DB_UPDATE_APP_STARTUP_MSG:I = 0xe

.field static final MARS_DB_UPDATE_RESETTIME_MSG:I = 0x3

.field static final MARS_DB_UPDATE_RESETTIME_SPECIFIC_MSG:I = 0x4

.field static final MARS_SMART_MGR_DB_CHANGED:I = 0x5

.field static final MARS_SMART_MGR_SETTINGS_DB_CHANGED:I = 0x6

.field private static final NOTIFICATION_UPDATED_COUNT:Ljava/lang/String; = "notificationUpdatedCount"

.field private static final NOTIFIEDCOUNT:Ljava/lang/String; = "notifiedCount"

.field private static final PACKAGENAME:Ljava/lang/String; = "package_name"

.field private static final PACKAGETYPE:Ljava/lang/String; = "packageType"

.field private static final PACKAGE_NAME_MATCH_TYPE:Ljava/lang/String; = "matchType"

.field public static final PACKAGE_TYPE_3RD_PARTY:I = 0x2

.field public static final PACKAGE_TYPE_DEVICE_ADMIN:I = 0x8

.field public static final PACKAGE_TYPE_DISABLEABLE:I = 0x20

.field public static final PACKAGE_TYPE_EXCEPTION_AUTORUN_DEFAULT_OFF:I = 0x20000

.field public static final PACKAGE_TYPE_HAS_ICON:I = 0x1

.field public static final PACKAGE_TYPE_INTENT_RECEIVING:I = 0x10

.field public static final PACKAGE_TYPE_REMOVEABLE:I = 0x4

.field public static final PACKAGE_TYPE_SYSTEM:I = 0x40

.field public static final PACKAGE_TYPE_UPDATED_SYSTEM:I = 0x80

.field private static final READCOUNT:Ljava/lang/String; = "readCount"

.field private static final REPEAT_TRIGGER_TIME:Ljava/lang/String; = "repeatTriggerTime"

.field private static final REQUEST_TIME:Ljava/lang/String; = "requestTime"

.field private static final RESETTIME:Ljava/lang/String; = "resetTime"

.field private static final RESTRICTION:Ljava/lang/String; = "restriction"

.field private static final RESTRICTION_TYPE:Ljava/lang/String; = "restrictionType"

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "MARs"

.field static final TAG:Ljava/lang/String; = "MARsDBManager"

.field private static final TARGET_CATEGORY:Ljava/lang/String; = "targetCategory"

.field private static final TARGET_PACKAGE_CONDITION:Ljava/lang/String; = "condition"

.field private static final TARGET_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TARGET_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field private static final TRAFFIC_INTERVAL:Ljava/lang/String; = "trafficInterval"

.field private static final UNUSED_AUTO_FREEZE_TIME:Ljava/lang/String; = "unusedAutoFreezeTime"

.field static final UPDATE_SMDB_COLUMN_AUTORUN:I = 0x8

.field static final UPDATE_SMDB_COLUMN_EXTRAS:I = 0x2

.field static final UPDATE_SMDB_COLUMN_PKGTYPE:I = 0x4

.field static final UPDATE_SMDB_COLUMN_RESETTIME:I = 0x1

.field private static final VERSION_MGMT:Ljava/lang/String; = "versionMgmt"


# instance fields
.field public final MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

.field public final MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

.field public final MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

.field public final MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

.field public final MARS_POLICY_DEFINITION:Landroid/net/Uri;

.field public final SCPM_URI_MARS:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field public final SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

.field public final SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

.field public final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field public final SMART_MGR_URI:Landroid/net/Uri;

.field mAppStartUpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mCoreManager:Lcom/android/server/am/MARsCoreManager;

.field public mDBCreate:Z

.field private mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

.field private mDBUpdated:Z

.field public mOldVersion:Z

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field public mPreScpmVersion:Ljava/lang/String;

.field private mPreviousPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation
.end field

.field mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

.field mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

.field mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

.field private mUpdateResetTimeValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/am/MARsDBManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/MARsDBManager;Lcom/android/server/am/MARsDBManager$DBHandler;)Lcom/android/server/am/MARsDBManager$DBHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/am/MARsDBManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->deletePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "columns"    # I
    .param p3, "value"    # Lcom/android/server/am/MARsDBManager$SMDBValue;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MARsDBManager;->updateDBSpecific(Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "isBlocked"    # Z
    .param p4, "requestTime"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/MARsDBManager;->updateInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/MARsDBManager;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "columns"    # I
    .param p2, "values"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsDBManager;->doUpdateFromMARsToSM(ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/MARsDBManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getExcludedAppDBValues()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/am/MARsDBManager;Z)V
    .locals 0
    .param p1, "boot"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->getPolicyDefaultInfoFromSMToMARs(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/am/MARsDBManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getSCPMParametersFromDB()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/am/MARsDBManager;Z)V
    .locals 0
    .param p1, "boot"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->getSettingsValueFromDB(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/am/MARsDBManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initManagedPackagesInternal()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->insertPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;Z)V
    .locals 0
    .param p1, "generate"    # Z
    .param p2, "packages"    # Ljava/util/ArrayList;
    .param p3, "onUpgrade"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MARsDBManager;->insertPkgInfoFromMARsToSM(ZLjava/util/ArrayList;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsCoreManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "policyManager"    # Lcom/android/server/am/MARsPolicyManager;
    .param p2, "coreManager"    # Lcom/android/server/am/MARsCoreManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    .line 122
    const-string/jumbo v1, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    .line 123
    const-string/jumbo v1, "content://com.samsung.android.sm/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 124
    const-string/jumbo v1, "content://com.samsung.android.sm/excluded_app"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    .line 125
    const-string/jumbo v1, "content://com.samsung.android.sm.appstart/appstart_record"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    .line 154
    const-string/jumbo v1, "content://com.samsung.android.sm.mars/MARs_Policy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    .line 155
    const-string/jumbo v1, "content://com.samsung.android.sm.mars/MARs_AutoRunParameter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

    .line 156
    const-string/jumbo v1, "content://com.samsung.android.sm.mars/MARs_ExcludeTarget"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    .line 157
    const-string/jumbo v1, "content://com.samsung.android.sm.mars/MARs_IsCurrentImportant"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    .line 158
    const-string/jumbo v1, "content://com.samsung.android.sm.mars/MARs_AdjustRestriction"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    .line 207
    const-string/jumbo v1, "content://com.samsung.android.sm.policy/policy_item/MARs"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SCPM_URI_MARS:Landroid/net/Uri;

    .line 208
    const-string/jumbo v1, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    .line 273
    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    .line 274
    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    .line 276
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;

    .line 278
    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    .line 280
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPreScpmVersion:Ljava/lang/String;

    .line 452
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 453
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    .line 454
    iput-object p3, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    .line 456
    new-instance v0, Lcom/android/server/am/MARsDBManager$DBThread;

    const-string/jumbo v1, "MARsDBThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsDBManager$DBThread;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    .line 457
    .local v0, "mDBThread":Lcom/android/server/am/MARsDBManager$DBThread;
    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager$DBThread;->start()V

    .line 451
    return-void
.end method

.method private checkSmDBVersion()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 639
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.sm.mars"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    .line 638
    return-void
.end method

.method private deletePackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1579
    const-string/jumbo v3, "package_name=?"

    .line 1580
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    .line 1581
    .local v2, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1583
    .local v1, "row":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1588
    :goto_0
    if-gez v1, :cond_0

    .line 1589
    const-string/jumbo v4, "MARsDBManager"

    const-string/jumbo v5, "deletePackage error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_0
    return-void

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception with contentResolver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doUpdateFromMARsToSM(ILjava/util/ArrayList;)V
    .locals 19
    .param p1, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1452
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :try_start_0
    const-string/jumbo v2, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doUpdateFromMARsToSM : begin --size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 1454
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/MARsDBManager$SMDBValue;

    .line 1455
    .local v16, "dbvalue":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    .line 1456
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1457
    .local v10, "resetTime":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 1458
    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    .line 1460
    .end local v10    # "resetTime":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .line 1461
    .local v9, "extras":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    .line 1462
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 1464
    .end local v9    # "extras":Ljava/lang/String;
    :cond_1
    const/4 v13, 0x0

    .line 1465
    .local v13, "packageType":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2

    .line 1466
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    .line 1468
    .end local v13    # "packageType":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    .line 1469
    .local v14, "autoRun":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    .line 1470
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    .line 1473
    .end local v14    # "autoRun":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 1474
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1475
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1476
    const/4 v15, 0x0

    move-object/from16 v2, p0

    .line 1474
    invoke-direct/range {v2 .. v15}, Lcom/android/server/am/MARsDBManager;->updateDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1480
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v16    # "dbvalue":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_5
    const-string/jumbo v2, "MARsDBManager"

    const-string/jumbo v4, "doUpdateFromMARsToSM : end"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    .end local v18    # "i":I
    :goto_1
    return-void

    .line 1481
    :catch_0
    move-exception v17

    .line 1482
    .local v17, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception on handling DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getExcludedAppDBValues()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 1154
    const-string/jumbo v6, "exclude_category"

    .line 1155
    .local v6, "EXCLUDE_CATEGORY":Ljava/lang/String;
    const-string/jumbo v7, "exclude_type"

    .line 1156
    .local v7, "EXCLUDE_TYPE":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v10, "sktSpeicalPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .local v11, "whiteListIntentsForSKT":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 1161
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    .line 1162
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "package_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v6, v2, v3

    const/4 v3, 0x2

    aput-object v7, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1161
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1168
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_3

    .line 1169
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1170
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1172
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1173
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    const-string/jumbo v0, "2"

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    const-string/jumbo v0, "6"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1176
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1163
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1164
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1177
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v0, "7"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1183
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1185
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v10}, Lcom/android/server/am/MARsPolicyManager;->setSKTSpeicalPackages(Ljava/util/ArrayList;)V

    .line 1186
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v11}, Lcom/android/server/am/MARsPolicyManager;->setWhiteListIntentsForSKT(Ljava/util/ArrayList;)V

    .line 1153
    return-void
.end method

.method public static getLongFromString(Ljava/lang/String;J)J
    .locals 5
    .param p0, "strValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 1640
    if-eqz p0, :cond_0

    .line 1641
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1643
    :catch_0
    move-exception v0

    .line 1644
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MARsDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "err : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-wide p1
.end method

.method private getManagedPackagesFromDB()Ljava/util/ArrayList;
    .locals 17
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
    .line 1065
    const/4 v14, 0x0

    .line 1066
    .local v14, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 1067
    .local v4, "selection":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1068
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1070
    .local v3, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_0

    .line 1071
    const-string/jumbo v1, "MARsDBManager"

    const-string/jumbo v2, "getManagedPackagesFromDB!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_0
    const-string/jumbo v4, "isAppOptTarget=?"

    .line 1075
    .local v4, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .end local v5    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v1, "1"

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 1076
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    .end local v3    # "projection":[Ljava/lang/String;
    const-string/jumbo v1, "package_name"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const-string/jumbo v1, "isSMFreezed"

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string/jumbo v1, "extras"

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const-string/jumbo v1, "resetTime"

    const/4 v2, 0x3

    aput-object v1, v3, v2

    .line 1077
    const-string/jumbo v1, "packageType"

    const/4 v2, 0x4

    aput-object v1, v3, v2

    const-string/jumbo v1, "autoRun"

    const/4 v2, 0x5

    aput-object v1, v3, v2

    const-string/jumbo v1, "isAppOptTarget"

    const/4 v2, 0x6

    aput-object v1, v3, v2

    .line 1080
    .local v3, "projection":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    .line 1081
    const/4 v6, 0x0

    .line 1080
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1087
    .end local v14    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v14, :cond_3

    .line 1088
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .local v16, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :cond_1
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1090
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1091
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1092
    .local v8, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1093
    .local v9, "strIsSMFreezed":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1094
    .local v11, "strExtras":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1095
    .local v10, "strResetTime":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1096
    .local v12, "strPkgType":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1098
    .local v13, "strAutoRun":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1099
    new-instance v6, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    .local v6, "pkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1082
    .end local v6    # "pkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "strIsSMFreezed":Ljava/lang/String;
    .end local v10    # "strResetTime":Ljava/lang/String;
    .end local v11    # "strExtras":Ljava/lang/String;
    .end local v12    # "strPkgType":Ljava/lang/String;
    .end local v13    # "strAutoRun":Ljava/lang/String;
    .end local v16    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .line 1083
    .local v15, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MARsDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception with contentResolver : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1104
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v16    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1105
    return-object v16

    .line 1107
    .end local v16    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :cond_3
    const-string/jumbo v1, "MARsDBManager"

    const-string/jumbo v2, "getManagedPackagesFromDB no database!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPackageType(Landroid/content/pm/PackageInfo;)I
    .locals 5
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1310
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1311
    .local v2, "sourceDir":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1312
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1315
    .local v0, "packageType":I
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/MARsDBManager;->isShowIconPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1316
    const/4 v0, 0x1

    .line 1320
    :cond_0
    if-eqz v2, :cond_1

    const-string/jumbo v3, "/data/app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1321
    :cond_1
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    .line 1322
    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_3

    .line 1323
    or-int/lit8 v0, v0, 0x2

    .line 1327
    :cond_3
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 1328
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_5

    .line 1329
    :cond_4
    or-int/lit8 v0, v0, 0x4

    .line 1333
    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, v1}, Lcom/android/server/am/MARsDBManager;->isDeviceAdminPackages(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1334
    or-int/lit8 v0, v0, 0x8

    .line 1338
    :cond_6
    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isIntentReceivingPackages(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1339
    or-int/lit8 v0, v0, 0x10

    .line 1343
    :cond_7
    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isDisablePossiblePackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1344
    or-int/lit8 v0, v0, 0x20

    .line 1348
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1349
    or-int/lit8 v0, v0, 0x40

    .line 1353
    :cond_9
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_a

    .line 1354
    or-int/lit16 v0, v0, 0x80

    .line 1358
    :cond_a
    if-eqz v1, :cond_b

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isAutoRunDefaultOffExceptionPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1359
    const/high16 v3, 0x20000

    or-int/2addr v0, v3

    .line 1362
    :cond_b
    return v0
.end method

.method private getPolicyDefaultInfoFromSMToMARs(Z)V
    .locals 6
    .param p1, "boot"    # Z

    .prologue
    .line 855
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initPolicyDefinitionInternal()Ljava/util/ArrayList;

    move-result-object v3

    .line 856
    .local v3, "policyValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$PolicyInfo;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 857
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v5, v3}, Lcom/android/server/am/MARsCoreManager;->setPolicy(Ljava/util/ArrayList;)V

    .line 867
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initAutoRunParameterInternal()Z

    move-result v2

    .line 868
    .local v2, "isGetParameter":Z
    if-nez v2, :cond_0

    .line 871
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v5}, Lcom/android/server/am/MARsCoreManager;->getAutoRunParameterFromDefaultValue()V

    .line 874
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->insertAutoRunParameterFromMARsToSM()V

    .line 877
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initAdjustTargetExcludePackageInternal()Ljava/util/ArrayList;

    move-result-object v1

    .line 878
    .local v1, "excludePackagesValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 879
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v5, v1}, Lcom/android/server/am/MARsCoreManager;->setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V

    .line 889
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initAdjustTargetIsCurrentImportantInternal()Ljava/util/ArrayList;

    move-result-object v0

    .line 890
    .local v0, "currentImportantValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 891
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v5, v0}, Lcom/android/server/am/MARsCoreManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    .line 901
    :goto_2
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initAdjustRestrictionInternal()Ljava/util/ArrayList;

    move-result-object v4

    .line 902
    .local v4, "restrictionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustRestriction;>;"
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 903
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v5, v4}, Lcom/android/server/am/MARsCoreManager;->setAdjustRestriction(Ljava/util/ArrayList;)V

    .line 912
    :goto_3
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager;->createPolicies()V

    .line 913
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5, p1}, Lcom/android/server/am/MARsPolicyManager;->initInternal(Z)V

    .line 854
    return-void

    .line 861
    .end local v0    # "currentImportantValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;>;"
    .end local v1    # "excludePackagesValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;>;"
    .end local v2    # "isGetParameter":Z
    .end local v4    # "restrictionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustRestriction;>;"
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v5}, Lcom/android/server/am/MARsCoreManager;->getPolicyFromDefaultValue()V

    .line 864
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->insertMainPolicyFromMARsToSM()V

    goto :goto_0

    .line 883
    .restart local v1    # "excludePackagesValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;>;"
    .restart local v2    # "isGetParameter":Z
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v5}, Lcom/android/server/am/MARsCoreManager;->getExcludeTargetFromDefaultValue()V

    .line 886
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->insertExcludePackageFromMARsToSM()V

    goto :goto_1

    .line 895
    .restart local v0    # "currentImportantValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;>;"
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v5}, Lcom/android/server/am/MARsCoreManager;->getIsCurrentImportantFromDefaultValue()V

    .line 898
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->insertCurrentImportantFromMARsToSM()V

    goto :goto_2

    .line 905
    .restart local v4    # "restrictionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustRestriction;>;"
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v5}, Lcom/android/server/am/MARsCoreManager;->getAdjustRestrictionFromDefaultValue()V

    .line 908
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->insertRestrictionFromMARsToSM()V

    goto :goto_3
.end method

.method private getSCPMParametersFromDB()V
    .locals 2

    .prologue
    .line 1783
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->isSCPMClientExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    return-void

    .line 1787
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getSCPMPolicyItemFromDB()V

    .line 1782
    :goto_0
    return-void

    .line 1790
    :cond_1
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "scpm policy version is old, don\'t update scpm policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSCPMPolicyItemFromDB()V
    .locals 31

    .prologue
    .line 1687
    const/16 v16, 0x0

    .line 1688
    .local v16, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x7

    new-array v5, v3, [Ljava/lang/String;

    const-string/jumbo v3, "item"

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string/jumbo v3, "category"

    const/4 v4, 0x1

    aput-object v3, v5, v4

    const-string/jumbo v3, "data1"

    const/4 v4, 0x2

    aput-object v3, v5, v4

    const-string/jumbo v3, "data2"

    const/4 v4, 0x3

    aput-object v3, v5, v4

    const-string/jumbo v3, "data3"

    const/4 v4, 0x4

    aput-object v3, v5, v4

    const-string/jumbo v3, "data4"

    const/4 v4, 0x5

    aput-object v3, v5, v4

    const-string/jumbo v3, "data5"

    const/4 v4, 0x6

    aput-object v3, v5, v4

    .line 1690
    .local v5, "projection":[Ljava/lang/String;
    const/16 v29, 0x0

    .line 1691
    .local v29, "triggerPeriod":Ljava/lang/String;
    const/16 v30, 0x0

    .line 1692
    .local v30, "unusedPeriod":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1693
    .local v20, "dataTrafficDuration":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1694
    .local v19, "dataTrafficAmount":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1695
    .local v23, "notificatonUpdateCount":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1698
    .local v13, "appSizeIncreased":Ljava/lang/String;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1699
    .local v26, "scpmBlockValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1700
    .local v28, "scpmSkipValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1701
    .local v25, "scpmBlackListValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    .local v24, "scpmBlackListForActiveTrafficValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1704
    .local v27, "scpmSkipOptimizationListValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 1705
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 1706
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 1707
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 1708
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 1711
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->SCPM_URI_MARS:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 1717
    .end local v16    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v16, :cond_a

    .line 1718
    .end local v13    # "appSizeIncreased":Ljava/lang/String;
    .end local v19    # "dataTrafficAmount":Ljava/lang/String;
    .end local v20    # "dataTrafficDuration":Ljava/lang/String;
    .end local v23    # "notificatonUpdateCount":Ljava/lang/String;
    .end local v29    # "triggerPeriod":Ljava/lang/String;
    .end local v30    # "unusedPeriod":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1719
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1720
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1721
    .local v22, "item":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1722
    .local v8, "category":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1723
    .local v17, "data1":Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1724
    .local v9, "data2":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1725
    .local v10, "data3":Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1726
    .local v11, "data4":Ljava/lang/String;
    const/4 v3, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1728
    .local v18, "data5":Ljava/lang/String;
    const-string/jumbo v3, "AutoRunParameter"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "AutoRun"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1729
    move-object/from16 v29, v17

    .line 1730
    .local v29, "triggerPeriod":Ljava/lang/String;
    move-object/from16 v30, v9

    .local v30, "unusedPeriod":Ljava/lang/String;
    goto :goto_1

    .line 1712
    .end local v8    # "category":Ljava/lang/String;
    .end local v9    # "data2":Ljava/lang/String;
    .end local v10    # "data3":Ljava/lang/String;
    .end local v11    # "data4":Ljava/lang/String;
    .end local v17    # "data1":Ljava/lang/String;
    .end local v18    # "data5":Ljava/lang/String;
    .end local v22    # "item":Ljava/lang/String;
    .restart local v13    # "appSizeIncreased":Ljava/lang/String;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "dataTrafficAmount":Ljava/lang/String;
    .restart local v20    # "dataTrafficDuration":Ljava/lang/String;
    .restart local v23    # "notificatonUpdateCount":Ljava/lang/String;
    .local v29, "triggerPeriod":Ljava/lang/String;
    .local v30, "unusedPeriod":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 1713
    .local v21, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception with contentResolver : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1731
    .end local v13    # "appSizeIncreased":Ljava/lang/String;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v19    # "dataTrafficAmount":Ljava/lang/String;
    .end local v20    # "dataTrafficDuration":Ljava/lang/String;
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v23    # "notificatonUpdateCount":Ljava/lang/String;
    .end local v29    # "triggerPeriod":Ljava/lang/String;
    .end local v30    # "unusedPeriod":Ljava/lang/String;
    .restart local v8    # "category":Ljava/lang/String;
    .restart local v9    # "data2":Ljava/lang/String;
    .restart local v10    # "data3":Ljava/lang/String;
    .restart local v11    # "data4":Ljava/lang/String;
    .restart local v17    # "data1":Ljava/lang/String;
    .restart local v18    # "data5":Ljava/lang/String;
    .restart local v22    # "item":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "DownLoadParameter"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "AutoRun"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1732
    move-object/from16 v20, v17

    .line 1733
    .local v20, "dataTrafficDuration":Ljava/lang/String;
    move-object/from16 v19, v9

    .line 1734
    .local v19, "dataTrafficAmount":Ljava/lang/String;
    move-object/from16 v23, v10

    .line 1735
    .local v23, "notificatonUpdateCount":Ljava/lang/String;
    move-object v13, v11

    .local v13, "appSizeIncreased":Ljava/lang/String;
    goto/16 :goto_1

    .line 1737
    .end local v13    # "appSizeIncreased":Ljava/lang/String;
    .end local v19    # "dataTrafficAmount":Ljava/lang/String;
    .end local v20    # "dataTrafficDuration":Ljava/lang/String;
    .end local v23    # "notificatonUpdateCount":Ljava/lang/String;
    :cond_2
    move-object v14, v9

    .line 1738
    .local v14, "callee":Ljava/lang/String;
    move-object v15, v10

    .line 1739
    .local v15, "caller":Ljava/lang/String;
    move-object v12, v11

    .line 1741
    .local v12, "action":Ljava/lang/String;
    new-instance v6, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/MARsDBManager$SCPMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    .local v6, "pkg":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string/jumbo v3, "Block"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1744
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_SCPM:Z

    if-eqz v3, :cond_0

    .line 1757
    const-string/jumbo v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSCPMPolicyItemFromDB --- category = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " , restriction: data1 = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1758
    const-string/jumbo v7, " , callee = "

    .line 1757
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1758
    const-string/jumbo v7, " , caller = "

    .line 1757
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1758
    const-string/jumbo v7, " , action = "

    .line 1757
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1745
    :cond_3
    const-string/jumbo v3, "Skip"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1746
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1747
    :cond_4
    const-string/jumbo v3, "BlackList"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1748
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1749
    :cond_5
    const-string/jumbo v3, "BlackListForActiveTraffic"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1750
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1751
    :cond_6
    const-string/jumbo v3, "SkipOptimization"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1752
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1754
    :cond_7
    const-string/jumbo v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSCPMPolicyItemFromDB --- restrictType = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " , it is error!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1762
    .end local v6    # "pkg":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    .end local v8    # "category":Ljava/lang/String;
    .end local v9    # "data2":Ljava/lang/String;
    .end local v10    # "data3":Ljava/lang/String;
    .end local v11    # "data4":Ljava/lang/String;
    .end local v12    # "action":Ljava/lang/String;
    .end local v14    # "callee":Ljava/lang/String;
    .end local v15    # "caller":Ljava/lang/String;
    .end local v17    # "data1":Ljava/lang/String;
    .end local v18    # "data5":Ljava/lang/String;
    .end local v22    # "item":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1764
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_SCPM:Z

    if-eqz v3, :cond_9

    .line 1765
    const-string/jumbo v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSCPMPolicyItemFromDB --- triggerPeriod = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " , unusedPeriod = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1766
    const-string/jumbo v7, " , dataTrafficDuration = "

    .line 1765
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1766
    const-string/jumbo v7, " , dataTrafficAmount = "

    .line 1765
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1767
    const-string/jumbo v7, " , notificatonUpdateCount = "

    .line 1765
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1767
    const-string/jumbo v7, " , appSizeIncreased = "

    .line 1765
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setAutoRunParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v3, v0, v1, v2, v13}, Lcom/android/server/am/MARsPolicyManager;->setAutoRunDownloadParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsPolicyManager;->setSCPMBlockValue(Ljava/util/ArrayList;)V

    .line 1772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsPolicyManager;->setSCPMSkipValue(Ljava/util/ArrayList;)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsPolicyManager;->setSCPMBlackListValue(Ljava/util/ArrayList;)V

    .line 1774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsPolicyManager;->setSCPMBlackListForActiveTrafficValue(Ljava/util/ArrayList;)V

    .line 1775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsPolicyManager;->setSCPMSkipOptimizationValue(Ljava/util/ArrayList;)V

    .line 1686
    :goto_3
    return-void

    .line 1777
    .local v13, "appSizeIncreased":Ljava/lang/String;
    .local v19, "dataTrafficAmount":Ljava/lang/String;
    .local v20, "dataTrafficDuration":Ljava/lang/String;
    .local v23, "notificatonUpdateCount":Ljava/lang/String;
    .restart local v29    # "triggerPeriod":Ljava/lang/String;
    .restart local v30    # "unusedPeriod":Ljava/lang/String;
    :cond_a
    const-string/jumbo v3, "MARsDBManager"

    const-string/jumbo v4, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getSettingsValueFromDB(Z)V
    .locals 14
    .param p1, "boot"    # Z

    .prologue
    const/4 v13, 0x0

    .line 1114
    const-string/jumbo v6, "key"

    .line 1115
    .local v6, "SETTING_KEY":Ljava/lang/String;
    const-string/jumbo v7, "value"

    .line 1116
    .local v7, "SETTING_VALUE":Ljava/lang/String;
    const/4 v11, -0x1

    .line 1117
    .local v11, "nLockingTime":I
    const/4 v12, -0x1

    .line 1119
    .local v12, "nSpcmSwitch":I
    const/4 v8, 0x0

    .line 1122
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 1123
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "key"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "value"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1122
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 1129
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_3

    .line 1130
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1131
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1134
    .local v10, "key":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v0, "spcm_locking_time"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1136
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v11}, Lcom/android/server/am/MARsPolicyManager;->setPackagesUnusedLockingTime(I)V

    .line 1139
    :cond_1
    const-string/jumbo v0, "spcm_switch"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1141
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v12, p1}, Lcom/android/server/am/MARsPolicyManager;->setAllPoliciesOnOffState(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1143
    :catch_0
    move-exception v9

    .line 1144
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception with parseInt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1124
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "key":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v9

    .line 1125
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1148
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1113
    :cond_3
    return-void
.end method

.method private initAdjustRestrictionInternal()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$AdjustRestriction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    const/4 v12, 0x0

    .line 816
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "restrictionType"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "isAllowed"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v0, "callee"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string/jumbo v0, "caller"

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-string/jumbo v0, "matchType"

    const/4 v1, 0x4

    aput-object v0, v2, v1

    const-string/jumbo v0, "action"

    const/4 v1, 0x5

    aput-object v0, v2, v1

    .line 818
    .local v2, "projection":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v11, "adjustRestrictionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustRestriction;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 828
    .end local v12    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v12, :cond_2

    .line 829
    :cond_0
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 831
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 832
    .local v5, "restrictionType":I
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 833
    .local v6, "isAllowed":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 834
    .local v7, "callee":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 835
    .local v8, "caller":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 836
    .local v9, "actionMatchType":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 839
    .local v10, "action":Ljava/lang/String;
    new-instance v3, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v3 .. v10}, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;-><init>(Lcom/android/server/am/MARsCoreManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .local v3, "adjustRestriction":Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initAdjustRestrictionInternal --- restrictionType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", isAllowed = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " , callee = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 844
    const-string/jumbo v4, " , caller = "

    .line 843
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 844
    const-string/jumbo v4, " , actionMatchType = "

    .line 843
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 844
    const-string/jumbo v4, " , action = "

    .line 843
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 824
    .end local v3    # "adjustRestriction":Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
    .end local v5    # "restrictionType":I
    .end local v6    # "isAllowed":Ljava/lang/String;
    .end local v7    # "callee":Ljava/lang/String;
    .end local v8    # "caller":Ljava/lang/String;
    .end local v9    # "actionMatchType":Ljava/lang/String;
    .end local v10    # "action":Ljava/lang/String;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 825
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initAdjustRestrictionInternal: Exception : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 847
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 851
    :goto_2
    return-object v11

    .line 849
    :cond_2
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "initAdjustRestrictionInternal error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initAdjustTargetExcludePackageInternal()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    const/4 v9, 0x0

    .line 736
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "policyNum"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "condition"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v0, "matchType"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string/jumbo v0, "packageName"

    const/4 v1, 0x3

    aput-object v0, v2, v1

    .line 738
    .local v2, "projection":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v11, "excludeTargetValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 748
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v9, :cond_2

    .line 749
    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 751
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 752
    .local v5, "policyNum":I
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 753
    .local v6, "condition":I
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 754
    .local v7, "pkgNameMatchType":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 757
    .local v8, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;-><init>(Lcom/android/server/am/MARsCoreManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 759
    .local v3, "excludeTarget":Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initAdjustTargetExcludePackageInternal --- policyNum = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", condition = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 762
    const-string/jumbo v4, ", pkgNameMatchType = "

    .line 761
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 762
    const-string/jumbo v4, ", packageName = "

    .line 761
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 744
    .end local v3    # "excludeTarget":Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;
    .end local v5    # "policyNum":I
    .end local v6    # "condition":I
    .end local v7    # "pkgNameMatchType":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 745
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initAdjustTargetExcludePackageInternal: Exception : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 765
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 769
    :goto_2
    return-object v11

    .line 767
    :cond_2
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "initAdjustTargetExcludePackageInternal error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initAdjustTargetIsCurrentImportantInternal()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 777
    const/4 v6, 0x0

    .line 778
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "policyNum"

    aput-object v0, v2, v12

    const-string/jumbo v0, "currentImportantValue"

    aput-object v0, v2, v13

    .line 780
    .local v2, "projection":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v10, "isCurrentImportantValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 790
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_2

    .line 791
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 794
    .local v11, "policyNum":I
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 796
    .local v8, "importantValue":I
    new-instance v9, Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v0, v11, v8}, Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;-><init>(Lcom/android/server/am/MARsCoreManager;II)V

    .line 798
    .local v9, "isCurrentImportant":Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initAdjustTargetIsCurrentImportantInternal --- policyNum = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", importantValue = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 786
    .end local v8    # "importantValue":I
    .end local v9    # "isCurrentImportant":Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;
    .end local v11    # "policyNum":I
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 787
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initAdjustTargetIsCurrentImportantInternal: Exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 803
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 807
    :goto_2
    return-object v10

    .line 805
    :cond_2
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "initAdjustTargetIsCurrentImportantInternal error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initAutoRunParameterInternal()Z
    .locals 18

    .prologue
    .line 695
    const/16 v16, 0x0

    .line 696
    .local v16, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "trafficInterval"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "unusedAutoFreezeTime"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v2, "dataTrafficAmount"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    .line 697
    const-string/jumbo v2, "notificationUpdatedCount"

    const/4 v3, 0x3

    aput-object v2, v4, v3

    const-string/jumbo v2, "appSizeIncreased"

    const/4 v3, 0x4

    aput-object v2, v4, v3

    .line 700
    .local v4, "projection":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 705
    .end local v16    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v16, :cond_2

    .line 706
    :cond_0
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 708
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 709
    .local v6, "trafficInterval":J
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 710
    .local v8, "unusedAutoFreezeTime":J
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 711
    .local v10, "dataTrafficAmount":J
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 712
    .local v12, "notificationUpdatedCount":J
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 714
    .local v14, "appSizeIncreased":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual/range {v5 .. v15}, Lcom/android/server/am/MARsCoreManager;->setAutoRunParameter(JJJJJ)V

    .line 717
    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initAutoRunParameterInternal --- trafficInterval = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", unusedAutoFreezeTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 718
    const-string/jumbo v5, " , dataTrafficAmount = "

    .line 717
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 718
    const-string/jumbo v5, ", notificationUpdatedCount = "

    .line 717
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 719
    const-string/jumbo v5, " , appSizeIncreased = "

    .line 717
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 701
    .end local v6    # "trafficInterval":J
    .end local v8    # "unusedAutoFreezeTime":J
    .end local v10    # "dataTrafficAmount":J
    .end local v12    # "notificationUpdatedCount":J
    .end local v14    # "appSizeIncreased":J
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v17

    .line 702
    .local v17, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initAutoRunParameterInternal: Exception : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 722
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 723
    const/4 v2, 0x1

    return v2

    .line 725
    :cond_2
    const-string/jumbo v2, "MARsDBManager"

    const-string/jumbo v3, "initAutoRunParameterInternal error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v2, 0x0

    return v2
.end method

.method private initManagedPackagesInternal()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1033
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->checkSmDBVersion()V

    .line 1035
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v1

    .line 1036
    .local v1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1037
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsPolicyManager;->getPkgInfoFromSMToMARs(Ljava/util/ArrayList;)V

    .line 1039
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v2, :cond_0

    .line 1040
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getManagedSMDBValueList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    .line 1057
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    if-nez v2, :cond_1

    .line 1058
    new-instance v2, Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/MARsDBManager$SmartManagerObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    .line 1059
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    .line 1060
    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1059
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1031
    :cond_1
    return-void

    .line 1041
    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 1042
    iget-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    if-nez v2, :cond_0

    .line 1043
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->isAppOptUIAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1044
    invoke-direct {p0, v3, v4, v3}, Lcom/android/server/am/MARsDBManager;->insertPkgInfoFromMARsToSM(ZLjava/util/ArrayList;Z)V

    .line 1050
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->getPkgInfoFromSMToMARs(Ljava/util/ArrayList;)V

    .line 1051
    iput-boolean v6, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    goto :goto_0

    .line 1046
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    .local v0, "ownPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    invoke-direct {p0, v6, v0, v3}, Lcom/android/server/am/MARsDBManager;->insertPkgInfoFromMARsToSM(ZLjava/util/ArrayList;Z)V

    goto :goto_1

    .line 1054
    .end local v0    # "ownPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :cond_4
    const-string/jumbo v2, "MARsDBManager"

    const-string/jumbo v3, "Packages database not exist, and not created!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPolicyDefinitionInternal()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsCoreManager$PolicyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    const/16 v18, 0x0

    .line 648
    .local v18, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "policyNum"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "isPolicyEnabled"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v2, "targetCategory"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    const-string/jumbo v2, "restriction"

    const/4 v3, 0x3

    aput-object v2, v4, v3

    .line 649
    const-string/jumbo v2, "killType"

    const/4 v3, 0x4

    aput-object v2, v4, v3

    const-string/jumbo v2, "firstTriggerTime"

    const/4 v3, 0x5

    aput-object v2, v4, v3

    const-string/jumbo v2, "repeatTriggerTime"

    const/4 v3, 0x6

    aput-object v2, v4, v3

    .line 651
    .local v4, "projection":[Ljava/lang/String;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v20, "policyDefinitionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsCoreManager$PolicyInfo;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 656
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 661
    .end local v18    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v18, :cond_2

    .line 662
    :cond_0
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 664
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 665
    .local v9, "policyNum":I
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 666
    .local v10, "isPolicyEnable":I
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 667
    .local v11, "targetCatgery":I
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 668
    .local v12, "restriction":I
    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 669
    .local v13, "killType":I
    const/4 v2, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 670
    .local v14, "firstTriggerTime":J
    const/4 v2, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 671
    .local v16, "repeatTriggerTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v2, v9}, Lcom/android/server/am/MARsCoreManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v8

    .line 672
    .local v8, "policyName":Ljava/lang/String;
    new-instance v6, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v6 .. v17}, Lcom/android/server/am/MARsCoreManager$PolicyInfo;-><init>(Lcom/android/server/am/MARsCoreManager;Ljava/lang/String;IIIIIJJ)V

    .line 675
    .local v6, "policy":Lcom/android/server/am/MARsCoreManager$PolicyInfo;
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initPolicyDefinitionInternal --- policyName = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", policyNum = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " , isPolicyEnable = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 678
    const-string/jumbo v5, " , targetCatgery = "

    .line 677
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 678
    const-string/jumbo v5, " , restriction = "

    .line 677
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 678
    const-string/jumbo v5, " , killType = "

    .line 677
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 678
    const-string/jumbo v5, " , firstTriggerTime = "

    .line 677
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 679
    const-string/jumbo v5, " , repeatTriggerTime = "

    .line 677
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 657
    .end local v6    # "policy":Lcom/android/server/am/MARsCoreManager$PolicyInfo;
    .end local v8    # "policyName":Ljava/lang/String;
    .end local v9    # "policyNum":I
    .end local v10    # "isPolicyEnable":I
    .end local v11    # "targetCatgery":I
    .end local v12    # "restriction":I
    .end local v13    # "killType":I
    .end local v14    # "firstTriggerTime":J
    .end local v16    # "repeatTriggerTime":J
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v19

    .line 658
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initPolicyDefinitionInternal: Exception : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 682
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 687
    :goto_2
    return-object v20

    .line 684
    :cond_2
    const-string/jumbo v2, "MARsDBManager"

    const-string/jumbo v3, "initPolicyDefinitionInternal error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private insertAutoRunParameterFromMARsToSM()V
    .locals 6

    .prologue
    .line 940
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 942
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "trafficInterval"

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-wide v4, v3, Lcom/android/server/am/MARsCoreManager;->mTrafficInterval:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string/jumbo v2, "unusedAutoFreezeTime"

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-wide v4, v3, Lcom/android/server/am/MARsCoreManager;->mUnusedTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string/jumbo v2, "dataTrafficAmount"

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-wide v4, v3, Lcom/android/server/am/MARsCoreManager;->mTrafficAmount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string/jumbo v2, "notificationUpdatedCount"

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-wide v4, v3, Lcom/android/server/am/MARsCoreManager;->mNotifiUpdatedCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const-string/jumbo v2, "appSizeIncreased"

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-wide v4, v3, Lcom/android/server/am/MARsCoreManager;->mApplicationSizeIncreased:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertAutoRunParameterFromMARsToSM exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insertCurrentImportantFromMARsToSM()V
    .locals 8

    .prologue
    .line 976
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v5, v5, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 977
    .local v3, "maxSize":I
    new-array v4, v3, [Landroid/content/ContentValues;

    .line 979
    .local v4, "values":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 980
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v5, v5, Lcom/android/server/am/MARsCoreManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;

    .line 981
    .local v2, "importantValues":Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v4, v1

    .line 982
    aget-object v5, v4, v1

    const-string/jumbo v6, "policyNum"

    iget v7, v2, Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;->policyNum:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    aget-object v5, v4, v1

    const-string/jumbo v6, "currentImportantValue"

    iget v7, v2, Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;->importantValue:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 987
    .end local v2    # "importantValues":Lcom/android/server/am/MARsCoreManager$AdjustTargetCurrentImportant;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :goto_1
    return-void

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MARsDBManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertCurrentImportantFromMARsToSM exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private insertExcludePackageFromMARsToSM()V
    .locals 8

    .prologue
    .line 956
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v5, v5, Lcom/android/server/am/MARsCoreManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 957
    .local v3, "maxSize":I
    new-array v4, v3, [Landroid/content/ContentValues;

    .line 959
    .local v4, "values":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 960
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v5, v5, Lcom/android/server/am/MARsCoreManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;

    .line 961
    .local v1, "excludePackage":Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v4, v2

    .line 962
    aget-object v5, v4, v2

    const-string/jumbo v6, "policyNum"

    iget v7, v1, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->policyNum:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    aget-object v5, v4, v2

    const-string/jumbo v6, "condition"

    iget v7, v1, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->condition:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    aget-object v5, v4, v2

    const-string/jumbo v6, "matchType"

    iget-object v7, v1, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    aget-object v5, v4, v2

    const-string/jumbo v6, "packageName"

    iget-object v7, v1, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 969
    .end local v1    # "excludePackage":Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :goto_1
    return-void

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MARsDBManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertExcludePackageFromMARsToSM exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private insertMainPolicyFromMARsToSM()V
    .locals 10

    .prologue
    .line 917
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v5, v5, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 918
    .local v2, "maxSize":I
    new-array v4, v2, [Landroid/content/ContentValues;

    .line 920
    .local v4, "values":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 921
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v5, v5, Lcom/android/server/am/MARsCoreManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;

    .line 922
    .local v3, "policy":Lcom/android/server/am/MARsCoreManager$PolicyInfo;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v4, v1

    .line 923
    aget-object v5, v4, v1

    const-string/jumbo v6, "policyNum"

    iget v7, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->num:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    aget-object v5, v4, v1

    const-string/jumbo v6, "isPolicyEnabled"

    iget v7, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->enabled:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    aget-object v5, v4, v1

    const-string/jumbo v6, "targetCategory"

    iget v7, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->targetCategory:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    aget-object v5, v4, v1

    const-string/jumbo v6, "restriction"

    iget v7, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->restriction:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    aget-object v5, v4, v1

    const-string/jumbo v6, "killType"

    iget v7, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->action:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    aget-object v5, v4, v1

    const-string/jumbo v6, "firstTriggerTime"

    iget-wide v8, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->firstTriggerTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    aget-object v5, v4, v1

    const-string/jumbo v6, "repeatTriggerTime"

    iget-wide v8, v3, Lcom/android/server/am/MARsCoreManager$PolicyInfo;->repeatTriggerTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 933
    .end local v3    # "policy":Lcom/android/server/am/MARsCoreManager$PolicyInfo;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :goto_1
    return-void

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MARsDBManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertMainPolicyFromMARsToSM exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private insertPackage(Ljava/lang/String;)V
    .locals 22
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-wide v0, v4, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    move-wide/from16 v20, v0

    sub-long v14, v2, v20

    .line 1524
    .local v14, "newResetTime":J
    const/16 v16, 0x0

    .line 1525
    .local v16, "packageType":I
    const/16 v17, 0x0

    .line 1526
    .local v17, "pi":Landroid/content/pm/PackageInfo;
    const/16 v12, 0x100f

    .line 1529
    .local v12, "flags":I
    const/4 v8, 0x0

    .line 1530
    .local v8, "cursor":Landroid/database/Cursor;
    const-string/jumbo v5, "package_name=?"

    .line 1531
    .local v5, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    .line 1532
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1536
    .local v9, "duplicated":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v7, "package_name"

    const/16 v20, 0x0

    aput-object v7, v4, v20

    .line 1537
    const/4 v7, 0x0

    .line 1536
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1539
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 1540
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1541
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1542
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1543
    .local v13, "packageName":Ljava/lang/String;
    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1544
    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is already exist in DB!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/4 v9, 0x1

    goto :goto_0

    .line 1549
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1550
    if-eqz v9, :cond_2

    .line 1551
    return-void

    .line 1554
    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1554
    move-object/from16 v0, p1

    invoke-interface {v2, v0, v12, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 1557
    .local v17, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    .line 1558
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsDBManager;->getPackageType(Landroid/content/pm/PackageInfo;)I

    move-result v16

    .line 1560
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1562
    .local v19, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "package_name"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string/jumbo v2, "isSMFreezed"

    const-string/jumbo v3, "0"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string/jumbo v2, "resetTime"

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string/jumbo v2, "packageType"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 1569
    .local v18, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1522
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v17    # "pi":Landroid/content/pm/PackageInfo;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-void

    .line 1573
    :catch_0
    move-exception v11

    .line 1574
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception with contentResolver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1571
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 1572
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error getting package info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private insertPkgInfoFromMARsToSM(ZLjava/util/ArrayList;Z)V
    .locals 22
    .param p1, "generate"    # Z
    .param p3, "onUpgrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p2, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v19, v0

    sget-boolean v19, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v19, :cond_0

    .line 1374
    const-string/jumbo v19, "MARsDBManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "insertPkgInfoFromMARsToSM, --- generate = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " --onUpgrade = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1379
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x100f

    .line 1382
    .local v4, "flags":I
    invoke-virtual {v13, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8

    .line 1390
    .local v8, "installedPackagesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .local v18, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v6, 0x0

    .line 1392
    .local v6, "index":I
    const/4 v14, 0x0

    .line 1395
    .local v14, "split":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_6

    .line 1396
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 1397
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1398
    .local v12, "pkgname":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1400
    .local v9, "packageType":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/am/MARsDBManager;->getPackageType(Landroid/content/pm/PackageInfo;)I

    move-result v9

    .line 1402
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1403
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v19, "package_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const-string/jumbo v19, "isSMFreezed"

    const-string/jumbo v20, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const-string/jumbo v19, "packageType"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    if-nez v6, :cond_1

    .line 1408
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    .local v15, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1412
    .end local v15    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 1413
    .local v16, "tmpList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v16, :cond_5

    .line 1414
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1421
    add-int/lit8 v6, v6, 0x1

    .line 1389
    const/16 v19, 0x64

    .line 1423
    move/from16 v0, v19

    if-eq v6, v0, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_3

    .line 1424
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v7, v0, [Landroid/content/ContentValues;

    .line 1425
    .local v7, "insertValues":[Landroid/content/ContentValues;
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1389
    const/16 v19, 0x64

    .line 1430
    move/from16 v0, v19

    if-ne v6, v0, :cond_3

    .line 1431
    add-int/lit8 v14, v14, 0x1

    .line 1432
    const/4 v6, 0x0

    .line 1436
    .end local v7    # "insertValues":[Landroid/content/ContentValues;
    :cond_3
    if-eqz p1, :cond_4

    and-int/lit8 v19, v9, 0x2

    if-eqz v19, :cond_4

    .line 1437
    new-instance v11, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    .line 1438
    .local v11, "pkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    .end local v11    # "pkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1417
    :cond_5
    const-string/jumbo v19, "MARsDBManager"

    const-string/jumbo v20, "Unfortunately error !!!! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1441
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v9    # "packageType":I
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    .end local v12    # "pkgname":Ljava/lang/String;
    .end local v14    # "split":I
    .end local v16    # "tmpList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v17    # "values":Landroid/content/ContentValues;
    .end local v18    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :catch_0
    move-exception v3

    .line 1442
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "MARsDBManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Exception on handling DB : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1372
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    return-void
.end method

.method private insertPolicyInfoFromMARsToSM()V
    .locals 2

    .prologue
    .line 1016
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "insertPolicyInfoFromMARsToSM!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->insertMainPolicyFromMARsToSM()V

    .line 1018
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->insertAutoRunParameterFromMARsToSM()V

    .line 1019
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->insertExcludePackageFromMARsToSM()V

    .line 1020
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->insertCurrentImportantFromMARsToSM()V

    .line 1021
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->insertRestrictionFromMARsToSM()V

    .line 1015
    return-void
.end method

.method private insertRestrictionFromMARsToSM()V
    .locals 8

    .prologue
    .line 994
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v5, v5, Lcom/android/server/am/MARsCoreManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 995
    .local v2, "maxSize":I
    new-array v4, v2, [Landroid/content/ContentValues;

    .line 997
    .local v4, "values":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 998
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mCoreManager:Lcom/android/server/am/MARsCoreManager;

    iget-object v5, v5, Lcom/android/server/am/MARsCoreManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;

    .line 999
    .local v3, "restriction":Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v4, v1

    .line 1000
    aget-object v5, v4, v1

    const-string/jumbo v6, "restrictionType"

    iget v7, v3, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->restrictionType:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    aget-object v5, v4, v1

    const-string/jumbo v6, "isAllowed"

    iget-object v7, v3, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->isAllowed:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    aget-object v5, v4, v1

    const-string/jumbo v6, "callee"

    iget-object v7, v3, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->callee:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    aget-object v5, v4, v1

    const-string/jumbo v6, "caller"

    iget-object v7, v3, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->caller:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    aget-object v5, v4, v1

    const-string/jumbo v6, "matchType"

    iget-object v7, v3, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    aget-object v5, v4, v1

    const-string/jumbo v6, "action"

    iget-object v7, v3, Lcom/android/server/am/MARsCoreManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1009
    .end local v3    # "restriction":Lcom/android/server/am/MARsCoreManager$AdjustRestriction;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :goto_1
    return-void

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MARsDBManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertRestrictionFromMARsToSM exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isAutoRunDefaultOffExceptionPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 7
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, "PermissionFound":Z
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1286
    .local v3, "perms":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 1288
    aget-object v4, v3, v1

    if-eqz v4, :cond_2

    aget-object v4, v3, v1

    const-string/jumbo v5, "com.sec.android.EXCEPTION_AUTORUN_DEFAULT_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1289
    const/4 v0, 0x1

    .line 1296
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 1297
    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "android"

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1299
    .local v2, "match":I
    if-ltz v2, :cond_3

    .line 1300
    const/4 v0, 0x1

    .line 1306
    .end local v2    # "match":I
    :cond_1
    :goto_1
    return v0

    .line 1287
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1302
    .end local v1    # "i":I
    .restart local v2    # "match":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isDeviceAdminPackages(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1263
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1267
    const v3, 0x8080

    .line 1266
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1268
    .local v0, "Packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1269
    const/4 v2, 0x1

    return v2

    .line 1271
    :cond_0
    return v4
.end method

.method private isDisablePossiblePackage(Landroid/content/pm/PackageInfo;)Z
    .locals 8
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v7, 0x0

    .line 1191
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1192
    return v7

    .line 1195
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1198
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1200
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_2

    .line 1201
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ri$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1202
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1203
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1204
    return v7

    .line 1210
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "ri$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x1

    return v5
.end method

.method private isIntentReceivingPackages(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v2, 0x0

    .line 1275
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 1277
    .local v0, "receivers":[Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1278
    const/4 v1, 0x1

    return v1

    .line 1280
    :cond_0
    return v2
.end method

.method private isNeedUpdateSCPMPolicy()Z
    .locals 11

    .prologue
    .line 1651
    const/4 v6, 0x0

    .line 1652
    .local v6, "cursorPolicy":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1654
    .local v8, "isNeedUpdate":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1656
    .local v6, "cursorPolicy":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1657
    const-string/jumbo v0, "policyName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1658
    .local v9, "policyName":Ljava/lang/String;
    const-string/jumbo v0, "policyVersion"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1659
    .local v10, "policyVersion":Ljava/lang/String;
    const-string/jumbo v0, "MARs"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1660
    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , policyVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , mPreScpmVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPreScpmVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPreScpmVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1662
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPreScpmVersion:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/server/am/MARsDBManager;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v10, v2, v3}, Lcom/android/server/am/MARsDBManager;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1663
    iput-object v10, p0, Lcom/android/server/am/MARsDBManager;->mPreScpmVersion:Ljava/lang/String;

    .line 1664
    const/4 v8, 0x1

    goto :goto_0

    .line 1666
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1669
    :cond_2
    iput-object v10, p0, Lcom/android/server/am/MARsDBManager;->mPreScpmVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1670
    const/4 v8, 0x1

    goto :goto_0

    .line 1677
    .end local v9    # "policyName":Ljava/lang/String;
    .end local v10    # "policyVersion":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 1678
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1682
    .end local v6    # "cursorPolicy":Landroid/database/Cursor;
    :cond_4
    :goto_1
    return v8

    .line 1674
    :catch_0
    move-exception v7

    .line 1675
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "policy list is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1677
    if-eqz v6, :cond_4

    .line 1678
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1676
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1677
    if-eqz v6, :cond_5

    .line 1678
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1676
    :cond_5
    throw v0
.end method

.method private isSCPMClientExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1635
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.sm.policy"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isShowIconPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1215
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1216
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1220
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1221
    const/4 v2, 0x1

    return v2

    .line 1223
    :cond_0
    return v3
.end method

.method private isSystemPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 7
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1231
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1234
    .local v1, "sourceDir":Ljava/lang/String;
    const-string/jumbo v2, "com.sec.enterprise.knox.express"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1235
    return v6

    .line 1238
    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "/system/app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1239
    return v6

    .line 1243
    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v2, "/system/priv-app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1244
    return v6

    .line 1248
    :cond_2
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    .line 1249
    return v5

    .line 1252
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1253
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "android"

    .line 1252
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1255
    .local v0, "match":I
    if-ltz v0, :cond_4

    .line 1256
    return v6

    .line 1259
    :cond_4
    return v5
.end method

.method private updateDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isDefaultFreezed"    # Ljava/lang/String;
    .param p3, "isSmFreezed"    # Ljava/lang/String;
    .param p4, "isUserForceStopped"    # Ljava/lang/String;
    .param p5, "lastUsedTime"    # Ljava/lang/String;
    .param p6, "versionMgmt"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;
    .param p8, "resetTime"    # Ljava/lang/String;
    .param p9, "notifiedCount"    # Ljava/lang/String;
    .param p10, "readCount"    # Ljava/lang/String;
    .param p11, "packageType"    # Ljava/lang/String;
    .param p12, "autoRun"    # Ljava/lang/String;
    .param p13, "isAppOptTarget"    # Ljava/lang/String;

    .prologue
    .line 1597
    const/4 v2, 0x0

    .line 1599
    .local v2, "nRet":I
    if-nez p1, :cond_0

    .line 1600
    const-string/jumbo v7, "MARsDBManager"

    const-string/jumbo v8, "parameter is error!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1606
    .local v6, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    const-string/jumbo v7, "package_name"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v7, "isDefaultFreezed"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    :cond_2
    if-eqz p3, :cond_3

    const-string/jumbo v7, "isSMFreezed"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    :cond_3
    if-eqz p4, :cond_4

    const-string/jumbo v7, "isUserForceStopped"

    invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    :cond_4
    if-eqz p5, :cond_5

    const-string/jumbo v7, "lastUsedTime"

    invoke-virtual {v6, v7, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    :cond_5
    if-eqz p6, :cond_6

    const-string/jumbo v7, "versionMgmt"

    move-object/from16 v0, p6

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    :cond_6
    if-eqz p7, :cond_7

    const-string/jumbo v7, "extras"

    move-object/from16 v0, p7

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    :cond_7
    if-eqz p8, :cond_8

    const-string/jumbo v7, "resetTime"

    move-object/from16 v0, p8

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    :cond_8
    if-eqz p9, :cond_9

    const-string/jumbo v7, "notifiedCount"

    move-object/from16 v0, p9

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    :cond_9
    if-eqz p10, :cond_a

    const-string/jumbo v7, "readCount"

    move-object/from16 v0, p10

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    :cond_a
    if-eqz p11, :cond_b

    const-string/jumbo v7, "packageType"

    move-object/from16 v0, p11

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    :cond_b
    if-eqz p12, :cond_c

    const-string/jumbo v7, "autoRun"

    move-object/from16 v0, p12

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    :cond_c
    if-eqz p13, :cond_d

    const-string/jumbo v7, "isAppOptTarget"

    move-object/from16 v0, p13

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    :cond_d
    const-string/jumbo v3, "package_name=?"

    .line 1623
    .local v3, "selection":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    .line 1626
    .local v4, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string/jumbo v8, "MARs-self"

    const-string/jumbo v9, "true"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1627
    .local v5, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5, v6, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1596
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 1628
    :catch_0
    move-exception v1

    .line 1629
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "MARsDBManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception with update() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateDBSpecific(Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V
    .locals 16
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "columns"    # I
    .param p3, "value"    # Lcom/android/server/am/MARsDBManager$SMDBValue;

    .prologue
    .line 1491
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1492
    :cond_0
    return-void

    .line 1496
    :cond_1
    const/4 v9, 0x0

    .line 1497
    .local v9, "resetTime":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    .line 1498
    :try_start_0
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    .line 1500
    .end local v9    # "resetTime":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    .line 1501
    .local v8, "extras":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_3

    .line 1502
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 1504
    .end local v8    # "extras":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 1505
    .local v12, "packageType":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_4

    .line 1506
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    .line 1508
    .end local v12    # "packageType":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    .line 1509
    .local v13, "autoRun":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_5

    .line 1510
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    .line 1513
    .end local v13    # "autoRun":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1514
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1515
    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1513
    invoke-direct/range {v1 .. v14}, Lcom/android/server/am/MARsDBManager;->updateDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    :goto_0
    return-void

    .line 1516
    :catch_0
    move-exception v15

    .line 1517
    .local v15, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MARsDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception on handling DB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 4
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "isBlocked"    # Z
    .param p4, "requestTime"    # J

    .prologue
    .line 1795
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1796
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "calleepackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    const-string/jumbo v1, "callerpackage"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    const-string/jumbo v1, "isblocked"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    const-string/jumbo v1, "requestTime"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1802
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x63

    if-le v1, v3, :cond_0

    .line 1804
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpHistory(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1794
    return-void

    .line 1801
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public checkSCPMParametersFromDB()V
    .locals 3

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 630
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    return-void
.end method

.method public deletePackageInDB(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 606
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 608
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 609
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 612
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 605
    return-void
.end method

.method public getMARsPolicyCondition(Z)V
    .locals 4
    .param p1, "boot"    # Z

    .prologue
    .line 528
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 530
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 531
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "boot"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 532
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 534
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 527
    return-void
.end method

.method public initMARsPolicyCondition()V
    .locals 3

    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 520
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 518
    return-void
.end method

.method public initManagedPackages()V
    .locals 3

    .prologue
    .line 480
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 481
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 479
    return-void
.end method

.method public initSKTPackagesWhiteList()V
    .locals 6

    .prologue
    .line 508
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 511
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    if-nez v1, :cond_0

    .line 512
    new-instance v1, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    .line 513
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    .line 514
    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 513
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 507
    :cond_0
    return-void
.end method

.method public initSettingFromUI()V
    .locals 6

    .prologue
    .line 490
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isAppOptUIAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 492
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 494
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    if-nez v1, :cond_0

    .line 495
    new-instance v1, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    .line 496
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 497
    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    .line 496
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 489
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public insertPackageToDB(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 593
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 595
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 596
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 599
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 592
    return-void
.end method

.method public requestFillInDB(ZZ)V
    .locals 4
    .param p1, "onCreate"    # Z
    .param p2, "onUpgrade"    # Z

    .prologue
    const/4 v3, 0x7

    .line 542
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    .line 543
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 545
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 546
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "onCreate"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 547
    const-string/jumbo v2, "onUpgrade"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 548
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 550
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 541
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    .line 463
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    .line 461
    return-void
.end method

.method public unregisterContentObserver()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 467
    :cond_2
    return-void
.end method

.method public updateAppStartUpHistory(Z)V
    .locals 5
    .param p1, "isPowerOff"    # Z

    .prologue
    .line 1810
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1811
    return-void

    .line 1814
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/content/ContentValues;

    .line 1815
    .local v1, "insertValues":[Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1816
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1817
    if-nez p1, :cond_1

    .line 1818
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1809
    .end local v1    # "insertValues":[Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return-void

    .line 1820
    :catch_0
    move-exception v0

    .line 1821
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception on handling DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 4
    .param p1, "calleePkgName"    # Ljava/lang/String;
    .param p2, "callerPkgName"    # Ljava/lang/String;
    .param p3, "isBlocked"    # Z
    .param p4, "requestTime"    # J

    .prologue
    .line 616
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 618
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 619
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "callee"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string/jumbo v2, "caller"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string/jumbo v2, "isblock"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 622
    const-string/jumbo v2, "requesttime"

    invoke-virtual {v0, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 623
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 625
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 615
    return-void
.end method

.method public updateResetTime(Ljava/util/ArrayList;)V
    .locals 3
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
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    const/4 v2, 0x3

    .line 576
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    .line 577
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 581
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 583
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 575
    return-void
.end method

.method public updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "strExtras"    # Ljava/lang/String;

    .prologue
    .line 560
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 562
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 563
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string/jumbo v2, "time"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 565
    if-eqz p4, :cond_0

    .line 566
    const-string/jumbo v2, "strExtras"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 569
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    return-void
.end method
