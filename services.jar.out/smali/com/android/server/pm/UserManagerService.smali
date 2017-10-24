.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$1;,
        Lcom/android/server/pm/UserManagerService$LifeCycle;,
        Lcom/android/server/pm/UserManagerService$LocalService;,
        Lcom/android/server/pm/UserManagerService$MainHandler;,
        Lcom/android/server/pm/UserManagerService$Shell;,
        Lcom/android/server/pm/UserManagerService$UserData;
    }
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION:I = 0x12c

.field private static final ATTR_CCM_BEEN_PROVISIONED:Ljava/lang/String; = "hasCCMBeenProvisioned"

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_FINGERPRINT:Ljava/lang/String; = "lastLoggedInFingerprint"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_RESTRICTED_PROFILE_PARENT_ID:Ljava/lang/String; = "restrictedProfileParentId"

.field private static final ATTR_SEED_ACCOUNT_NAME:Ljava/lang/String; = "seedAccountName"

.field private static final ATTR_SEED_ACCOUNT_TYPE:Ljava/lang/String; = "seedAccountType"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z = false

.field private static final DBG_WITH_STACKTRACE:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final IS_FOTA_FILENAME:Ljava/lang/String; = "fota.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final LOG_USERICON_TAG:Ljava/lang/String; = "UserIcon"

.field private static final MAX_MANAGED_PROFILES:I = 0x1

.field private static final MAX_USER_ID:I = 0x53e2

.field private static final MIN_USER_ID:I = 0xa

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ACCOUNT:Ljava/lang/String; = "account"

.field private static final TAG_DEVICE_POLICY_RESTRICTIONS:Ljava/lang/String; = "device_policy_restrictions"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_FOTA:Ljava/lang/String; = "fota"

.field private static final TAG_GLOBAL_RESTRICTION_OWNER_ID:Ljava/lang/String; = "globalRestrictionOwnerUserId"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_SEED_ACCOUNT_OPTIONS:Ljava/lang/String; = "seedAccountOptions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final TRON_GUEST_CREATED:Ljava/lang/String; = "users_guest_created"

.field private static final TRON_USER_CREATED:Ljava/lang/String; = "users_user_created"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x6

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XATTR_SERIAL:Ljava/lang/String; = "user.serial"

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final mUserRestriconToken:Landroid/os/IBinder;

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mAppliedUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation
.end field

.field private final mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field private mForceEphemeralUsers:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private mGlobalRestrictionOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation
.end field

.field private final mGuestRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mGuestRestrictions"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeviceManaged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mIsFotaFile:Ljava/io/File;

.field private final mIsUserManaged:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextSerialNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackagesLock"
    .end annotation
.end field

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mRestrictionsLock:Ljava/lang/Object;

.field private mUserIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictionsListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserRestrictionsListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/UserManagerInternal$UserRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserStates:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserStates"
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersLock:Ljava/lang/Object;

.field private final sPersonaManager:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get8()Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/UserManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/pm/UserManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->invalidateEffectiveUserRestrictionsLR(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 0
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 260
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    .line 149
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "packagesLock"    # Ljava/lang/Object;
    .param p4, "sPersonaManager"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 456
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V

    .line 455
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "packagesLock"    # Ljava/lang/Object;
    .param p4, "dataDir"    # Ljava/io/File;
    .param p5, "sPersonaManager"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 459
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 249
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 250
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 290
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 304
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 319
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    .line 328
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    .line 341
    const/16 v5, -0x2710

    iput v5, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    .line 348
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    .line 351
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 358
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 364
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 374
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 378
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 377
    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 383
    const-string/jumbo v5, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    .line 382
    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    .line 385
    new-instance v5, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v5, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 410
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    .line 461
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 462
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 464
    iput-object p5, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 466
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 467
    new-instance v5, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v5, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 468
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 469
    :try_start_0
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v5, p4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 470
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 472
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 473
    .local v4, "userZeroDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 474
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 475
    const/16 v7, 0x1fd

    .line 476
    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 474
    invoke-static {v5, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 477
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v8, "userlist.xml"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 479
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v8, "fota.xml"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mIsFotaFile:Ljava/io/File;

    .line 481
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 482
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    .line 483
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 492
    if-eqz p5, :cond_1

    .line 493
    invoke-virtual {p5}, Lcom/android/server/pm/PersonaManagerService;->getFotaNewUsers()Landroid/util/SparseArray;

    move-result-object v1

    .line 494
    .local v1, "mFotaNewUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 497
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 498
    .local v2, "ui":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->fotaCreateNewKnoxUserLP(Landroid/content/pm/UserInfo;)V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual {p5}, Lcom/android/server/pm/PersonaManagerService;->clearFotaNewUsers()V

    .line 514
    .end local v0    # "i":I
    .end local v1    # "mFotaNewUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    :cond_1
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Lcom/android/server/pm/PersonaManagerService;->isFotaUpgradeVersionChanged()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 515
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 516
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 517
    .local v3, "userSize":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 518
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 519
    .restart local v2    # "ui":Landroid/content/pm/UserInfo;
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v8, 0x64

    if-lt v5, v8, :cond_2

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v8, 0xc8

    if-gt v5, v8, :cond_2

    .line 520
    iget v5, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v5, v5, -0x81

    iput v5, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 521
    iget v5, v2, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v8, 0x10000000

    or-int/2addr v5, v8

    iput v5, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 522
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v2, Landroid/content/pm/UserInfo;->flags:I

    iput v8, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 523
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_3
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "i":I
    .end local v3    # "userSize":I
    :cond_4
    monitor-exit v6

    .line 530
    new-instance v5, Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$LocalService;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 531
    const-class v5, Landroid/os/UserManagerInternal;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-static {v5, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 532
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 533
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 460
    return-void

    .line 515
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 468
    .end local v4    # "userZeroDir":Ljava/io/File;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 6
    .param p1, "dataDir"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 447
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, v1

    move-object v4, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V

    .line 446
    return-void
.end method

.method private broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .locals 3
    .param p1, "profileHandle"    # Landroid/os/UserHandle;
    .param p2, "parentHandle"    # Landroid/os/UserHandle;
    .param p3, "inQuietMode"    # Z

    .prologue
    .line 855
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 856
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 857
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    :goto_0
    const-string/jumbo v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 862
    const-string/jumbo v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 863
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 864
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 865
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 854
    return-void

    .line 859
    :cond_0
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static final checkManageOrCreateUsersPermission(I)V
    .locals 3
    .param p0, "creationFlags"    # I

    .prologue
    .line 1779
    and-int/lit16 v0, p0, -0x12d

    if-nez v0, :cond_0

    .line 1780
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1781
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1784
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1785
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1778
    :cond_1
    return-void
.end method

.method private static final checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1766
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1767
    new-instance v0, Ljava/lang/SecurityException;

    .line 1768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1767
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1765
    :cond_0
    return-void
.end method

.method private static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1726
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1727
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 1729
    const-string/jumbo v1, "android.permission.MANAGE_USERS"

    .line 1728
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1732
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1731
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1734
    new-instance v1, Ljava/lang/SecurityException;

    .line 1735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1734
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1725
    :cond_0
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1750
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1751
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1749
    :cond_0
    return-void
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1828
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1829
    .local v0, "uid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1830
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Only system may: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1827
    :cond_0
    return-void
.end method

.method private cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2533
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2534
    :try_start_0
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 2535
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2536
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2537
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 2532
    return-void

    .line 2533
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "resFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .locals 5
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .prologue
    .line 1309
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v4}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1310
    .local v0, "baseRestrictions":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    .line 1311
    .local v2, "global":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1313
    .local v3, "local":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1315
    return-object v0

    .line 1317
    :cond_0
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1318
    .local v1, "effective":Landroid/os/Bundle;
    invoke-static {v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1319
    invoke-static {v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1321
    return-object v1
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .prologue
    .line 2574
    const-string/jumbo v0, "no_add_user"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2575
    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "Cannot add user. DISALLOW_ADD_USER is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    const/4 v0, 0x0

    return-object v0

    .line 2578
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private createUserInternalUnchecked(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 28
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .prologue
    .line 2582
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 2583
    const/16 v22, 0x0

    return-object v22

    .line 2585
    :cond_0
    and-int/lit8 v22, p2, 0x4

    if-eqz v22, :cond_1

    const/4 v11, 0x1

    .line 2586
    .local v11, "isGuest":Z
    :goto_0
    and-int/lit8 v22, p2, 0x20

    if-eqz v22, :cond_2

    const/4 v12, 0x1

    .line 2587
    .local v12, "isManagedProfile":Z
    :goto_1
    and-int/lit8 v22, p2, 0x8

    if-eqz v22, :cond_3

    const/4 v13, 0x1

    .line 2589
    .local v13, "isRestricted":Z
    :goto_2
    const/high16 v22, 0x10000

    and-int v22, v22, p2

    if-eqz v22, :cond_4

    const/4 v10, 0x1

    .line 2591
    .local v10, "isBMode":Z
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2596
    .local v8, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2597
    const/16 v16, 0x0

    .line 2598
    .local v16, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v22, -0x2710

    move/from16 v0, p3

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 2599
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2600
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .local v16, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :try_start_3
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2602
    if-nez v16, :cond_5

    :try_start_4
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v22, 0x0

    .line 2730
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2602
    return-object v22

    .line 2585
    .end local v8    # "ident":J
    .end local v10    # "isBMode":Z
    .end local v11    # "isGuest":Z
    .end local v12    # "isManagedProfile":Z
    .end local v13    # "isRestricted":Z
    .end local v16    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "isGuest":Z
    goto :goto_0

    .line 2586
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "isManagedProfile":Z
    goto :goto_1

    .line 2587
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "isRestricted":Z
    goto :goto_2

    .line 2589
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "isBMode":Z
    goto :goto_3

    .line 2599
    .restart local v8    # "ident":J
    .local v16, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v24

    :try_start_5
    monitor-exit v22

    throw v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2596
    .end local v16    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_1
    move-exception v22

    :try_start_6
    monitor-exit v23

    throw v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2729
    :catchall_2
    move-exception v22

    .line 2730
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2729
    throw v22

    .line 2604
    :cond_5
    if-eqz v12, :cond_6

    const/16 v22, 0x0

    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles(IZ)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 2608
    :cond_6
    if-nez v11, :cond_7

    if-eqz v12, :cond_9

    .line 2618
    :cond_7
    if-eqz v11, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v22

    if-eqz v22, :cond_a

    :try_start_8
    monitor-exit v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2619
    const/16 v22, 0x0

    .line 2730
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2619
    return-object v22

    .line 2605
    :cond_8
    :try_start_9
    const-string/jumbo v22, "UserManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Cannot add more managed profiles for user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    monitor-exit v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2606
    const/16 v22, 0x0

    .line 2730
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2606
    return-object v22

    .line 2608
    :cond_9
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v22

    if-eqz v22, :cond_7

    .line 2610
    if-nez v10, :cond_7

    :try_start_c
    monitor-exit v23
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2615
    const/16 v22, 0x0

    .line 2730
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2615
    return-object v22

    .line 2622
    :cond_a
    if-eqz v10, :cond_b

    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentBModeUser()Landroid/content/pm/UserInfo;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v22

    if-eqz v22, :cond_b

    :try_start_e
    monitor-exit v23
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 2623
    const/16 v22, 0x0

    .line 2730
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2623
    return-object v22

    .line 2627
    :cond_b
    if-eqz v13, :cond_c

    :try_start_f
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 2632
    :cond_c
    if-eqz v13, :cond_f

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 2633
    if-nez v16, :cond_e

    .line 2634
    const-string/jumbo v22, "UserManagerService"

    const-string/jumbo v24, "Cannot add restricted profile - parent user must be specified"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    monitor-exit v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 2636
    const/16 v22, 0x0

    .line 2730
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2636
    return-object v22

    .line 2628
    :cond_d
    if-eqz p3, :cond_c

    .line 2629
    :try_start_11
    const-string/jumbo v22, "UserManagerService"

    const-string/jumbo v24, "Cannot add restricted profile - parent user must be owner"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    monitor-exit v23
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 2630
    const/16 v22, 0x0

    .line 2730
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2630
    return-object v22

    .line 2638
    :cond_e
    :try_start_13
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v22

    if-nez v22, :cond_f

    .line 2639
    const-string/jumbo v22, "UserManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    monitor-exit v23
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 2641
    const/16 v22, 0x0

    .line 2730
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2641
    return-object v22

    .line 2644
    :cond_f
    :try_start_15
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v22

    if-nez v22, :cond_10

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 2645
    const-string/jumbo v22, "UserManagerService"

    .line 2646
    const-string/jumbo v24, "Ephemeral users are supported on split-system-user systems only."

    .line 2645
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    monitor-exit v23
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 2647
    const/16 v22, 0x0

    .line 2730
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2647
    return-object v22

    .line 2651
    :cond_10
    :try_start_17
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 2652
    if-eqz v11, :cond_19

    .line 2661
    :cond_11
    :goto_4
    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId(ZZZ)I

    move-result v20

    .line 2662
    .local v20, "userId":I
    invoke-static/range {v20 .. v20}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    .line 2663
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v22

    .line 2664
    const v24, 0x11200ae

    .line 2663
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 2666
    .local v7, "ephemeralGuests":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 2668
    if-eqz v11, :cond_12

    if-nez v7, :cond_13

    :cond_12
    :try_start_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    move/from16 v22, v0

    if-nez v22, :cond_13

    .line 2669
    if-eqz v16, :cond_14

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v22

    .line 2668
    if-eqz v22, :cond_14

    .line 2670
    :cond_13
    move/from16 v0, p2

    or-int/lit16 v0, v0, 0x100

    move/from16 p2, v0

    .line 2673
    :cond_14
    new-instance v21, Landroid/content/pm/UserInfo;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2674
    .local v21, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    move/from16 v22, v0

    add-int/lit8 v25, v22, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2676
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    move/from16 v22, v0

    const/16 v25, 0x64

    move/from16 v0, v22

    move/from16 v1, v25

    if-lt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    move/from16 v22, v0

    const/16 v25, 0xc8

    move/from16 v0, v22

    move/from16 v1, v25

    if-gt v0, v1, :cond_15

    .line 2677
    const/16 v22, 0xc9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2679
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2680
    .local v14, "now":J
    const-wide v26, 0xdc46c32800L

    cmp-long v22, v14, v26

    if-lez v22, :cond_1b

    .end local v14    # "now":J
    :goto_5
    move-object/from16 v0, v21

    iput-wide v14, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2681
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 2682
    sget-object v22, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2683
    new-instance v19, Lcom/android/server/pm/UserManagerService$UserData;

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2684
    .local v19, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :try_start_19
    monitor-exit v24

    .line 2687
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2688
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2689
    if-eqz v16, :cond_17

    .line 2690
    if-eqz v12, :cond_1c

    .line 2691
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v22, v0

    const/16 v24, -0x2710

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 2692
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2693
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2695
    :cond_16
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :cond_17
    :goto_6
    :try_start_1a
    monitor-exit v23

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-class v23, Landroid/os/storage/StorageManager;

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/StorageManager;

    .line 2706
    .local v18, "storage":Landroid/os/storage/StorageManager;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v23, v0

    .line 2708
    const/16 v24, 0x3

    .line 2707
    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->prepareUserData(III)V

    .line 2709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->createNewUser(I)V

    .line 2710
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 2711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 2712
    :try_start_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :try_start_1c
    monitor-exit v22

    .line 2714
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2715
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 2716
    .local v17, "restrictions":Landroid/os/Bundle;
    if-eqz v11, :cond_18

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 2718
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :try_start_1e
    monitor-exit v23

    .line 2721
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 2722
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    :try_start_20
    monitor-exit v23

    .line 2724
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v22, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2725
    .local v6, "addedIntent":Landroid/content/Intent;
    const-string/jumbo v22, "android.intent.extra.user_handle"

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2727
    const-string/jumbo v24, "android.permission.MANAGE_USERS"

    .line 2726
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    if-eqz v11, :cond_1e

    const-string/jumbo v22, "users_guest_created"

    :goto_7
    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 2730
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2732
    return-object v21

    .line 2652
    .end local v6    # "addedIntent":Landroid/content/Intent;
    .end local v7    # "ephemeralGuests":Z
    .end local v17    # "restrictions":Landroid/os/Bundle;
    .end local v18    # "storage":Landroid/os/storage/StorageManager;
    .end local v19    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v20    # "userId":I
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_19
    if-nez v12, :cond_11

    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v22

    if-nez v22, :cond_11

    .line 2653
    or-int/lit8 p2, p2, 0x1

    .line 2654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    .line 2655
    :try_start_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    move/from16 v24, v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    if-nez v24, :cond_1a

    .line 2656
    or-int/lit8 p2, p2, 0x2

    :cond_1a
    :try_start_23
    monitor-exit v22

    goto/16 :goto_4

    .line 2654
    :catchall_3
    move-exception v24

    monitor-exit v22

    throw v24

    .line 2680
    .restart local v7    # "ephemeralGuests":Z
    .restart local v14    # "now":J
    .restart local v20    # "userId":I
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1b
    const-wide/16 v14, 0x0

    goto/16 :goto_5

    .line 2666
    .end local v14    # "now":J
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_4
    move-exception v22

    monitor-exit v24

    throw v22

    .line 2696
    .restart local v19    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1c
    if-eqz v13, :cond_17

    .line 2697
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    move/from16 v22, v0

    const/16 v24, -0x2710

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    .line 2698
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2699
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2701
    :cond_1d
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    goto/16 :goto_6

    .line 2711
    .restart local v18    # "storage":Landroid/os/storage/StorageManager;
    :catchall_5
    move-exception v23

    :try_start_24
    monitor-exit v22

    throw v23

    .line 2717
    .restart local v17    # "restrictions":Landroid/os/Bundle;
    :catchall_6
    move-exception v22

    monitor-exit v23

    throw v22

    .line 2721
    :catchall_7
    move-exception v22

    monitor-exit v23

    throw v22

    .line 2728
    .restart local v6    # "addedIntent":Landroid/content/Intent;
    :cond_1e
    const-string/jumbo v22, "users_user_created"
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    goto/16 :goto_7
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 4144
    const-string/jumbo v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4145
    const-string/jumbo v2, ""

    .line 4144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4143
    return-void
.end method

.method public static enforceSerialNumber(Ljava/io/File;I)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3544
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3548
    const-string/jumbo v2, "UserManagerService"

    const-string/jumbo v3, "Device is emulating FBE; assuming current serial number is valid"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    return-void

    .line 3552
    :cond_0
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->getSerialNumber(Ljava/io/File;)I

    move-result v1

    .line 3553
    .local v1, "foundSerial":I
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 3556
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Serial number missing on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; assuming current is valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->setSerialNumber(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3543
    :cond_1
    :goto_0
    return-void

    .line 3559
    :catch_0
    move-exception v0

    .line 3560
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to set serial number on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3563
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-eq v1, p1, :cond_1

    .line 3564
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3565
    const-string/jumbo v4, " doesn\'t match expected "

    .line 3564
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private fallbackToSingleUserLP()V
    .locals 22

    .prologue
    .line 2077
    const/16 v7, 0x10

    .line 2080
    .local v7, "flags":I
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v18

    if-nez v18, :cond_0

    .line 2081
    const/16 v7, 0x13

    .line 2084
    :cond_0
    new-instance v14, Landroid/content/pm/UserInfo;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2, v7}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2085
    .local v14, "system":Landroid/content/pm/UserInfo;
    new-instance v16, Lcom/android/server/pm/UserManagerService$UserData;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2086
    .local v16, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    move-object/from16 v0, v16

    iput-object v14, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2089
    const-string/jumbo v18, "sys.knox.exists"

    const-string/jumbo v19, ""

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2090
    .local v17, "value":Ljava/lang/String;
    const-string/jumbo v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2091
    .local v4, "KnoxIds":[Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2092
    .local v12, "personaUserDatas":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/UserManagerService$UserData;>;"
    const/4 v5, 0x0

    .line 2094
    .local v5, "Knoxexists":Z
    array-length v0, v4

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 2096
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    :try_start_0
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_1

    .line 2097
    new-instance v15, Landroid/content/pm/UserInfo;

    aget-object v18, v4, v8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v19, v4, v8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x10000020

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2098
    .local v15, "user":Landroid/content/pm/UserInfo;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v15, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2099
    aget-object v18, v4, v8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2100
    new-instance v11, Lcom/android/server/pm/UserManagerService$UserData;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2101
    .local v11, "personaUserData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object v15, v11, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2103
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2096
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2105
    .end local v11    # "personaUserData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v15    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2106
    const/4 v5, 0x1

    .line 2112
    .end local v8    # "i":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2113
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    iget v0, v14, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2116
    if-eqz v5, :cond_3

    .line 2117
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "knoxData$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2118
    .local v9, "knoxData":Lcom/android/server/pm/UserManagerService$UserData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    iget-object v0, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2112
    .end local v9    # "knoxData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v10    # "knoxData$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 2107
    .restart local v8    # "i":I
    :catch_0
    move-exception v6

    .line 2108
    .local v6, "e":Ljava/lang/NullPointerException;
    const/4 v5, 0x0

    goto :goto_1

    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "i":I
    :cond_3
    monitor-exit v19

    .line 2124
    const/16 v18, 0xa

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2125
    const/16 v18, 0x6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2127
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2128
    .local v13, "restrictions":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2129
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v19

    .line 2132
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2133
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2135
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2136
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2139
    if-eqz v5, :cond_4

    .line 2140
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "knoxData$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2141
    .restart local v9    # "knoxData":Lcom/android/server/pm/UserManagerService$UserData;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_3

    .line 2128
    .end local v9    # "knoxData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v10    # "knoxData$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v18

    monitor-exit v19

    throw v18

    .line 2076
    :cond_4
    return-void
.end method

.method private findCurrentBModeUser()Landroid/content/pm/UserInfo;
    .locals 6

    .prologue
    .line 2850
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2851
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2852
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 2853
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v2, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2854
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 2852
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    .line 2855
    return-object v2

    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    monitor-exit v4

    .line 2859
    const/4 v3, 0x0

    return-object v3

    .line 2850
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .locals 6

    .prologue
    .line 2836
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2837
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2838
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 2839
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v2, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2840
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v3, :cond_1

    .line 2838
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2840
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 2841
    return-object v2

    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    monitor-exit v4

    .line 2845
    const/4 v3, 0x0

    return-object v3

    .line 2836
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private fotaCreateNewKnoxUserLP(Landroid/content/pm/UserInfo;)V
    .locals 6
    .param p1, "ui"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v5, 0x0

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "parent":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 635
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "parent":Landroid/content/pm/UserInfo;
    monitor-exit v3

    .line 639
    new-instance v2, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v2, v5}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 640
    .local v2, "userdata":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object p1, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 641
    iput-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 642
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V

    .line 644
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 645
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    .line 649
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 650
    if-eqz v0, :cond_1

    .line 651
    iget v3, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_0

    .line 652
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    iput v3, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 653
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 655
    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 657
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 658
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 659
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 660
    .local v1, "restrictions":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 661
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v4

    .line 629
    return-void

    .line 633
    .end local v1    # "restrictions":Landroid/os/Bundle;
    .end local v2    # "userdata":Lcom/android/server/pm/UserManagerService$UserData;
    .local v0, "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 644
    .local v0, "parent":Landroid/content/pm/UserInfo;
    .restart local v2    # "userdata":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 660
    .restart local v1    # "restrictions":Landroid/os/Bundle;
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getAliveUsersExcludingGuestsCountLU()I
    .locals 6

    .prologue
    .line 1699
    const/4 v0, 0x0

    .line 1700
    .local v0, "aliveUserCount":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1702
    .local v2, "totalUserCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1703
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1704
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1705
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1702
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1705
    :cond_1
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1707
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1710
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1713
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    return v0
.end method

.method private getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1333
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1335
    .local v0, "restrictions":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1336
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1337
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1339
    return-object v0

    .line 1333
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .prologue
    .line 415
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 416
    :try_start_0
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 415
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNextAvailableId(ZZZ)I
    .locals 4
    .param p1, "isKnox"    # Z
    .param p2, "isBBCContainer"    # Z
    .param p3, "isSecureFolder"    # Z

    .prologue
    const/16 v3, 0xa0

    .line 3494
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3495
    const/16 v0, 0xa

    .line 3497
    .local v0, "i":I
    if-eqz p1, :cond_0

    .line 3498
    const/16 v0, 0x64

    .line 3499
    :cond_0
    if-eqz p2, :cond_1

    .line 3500
    const/16 v0, 0xc3

    .line 3501
    :cond_1
    if-eqz p3, :cond_2

    .line 3502
    const/16 v0, 0x96

    .line 3504
    :cond_2
    :goto_0
    const/16 v1, 0x53e2

    if-ge v0, v1, :cond_a

    .line 3512
    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_3

    if-eqz p1, :cond_5

    .line 3514
    :cond_3
    const/16 v1, 0x96

    if-lt v0, v1, :cond_4

    if-gt v0, v3, :cond_4

    if-eqz p1, :cond_4

    if-eqz p3, :cond_6

    .line 3518
    :cond_4
    :goto_1
    if-eqz p3, :cond_7

    if-le v0, v3, :cond_7

    .line 3519
    const/4 v1, -0x1

    monitor-exit v2

    return v1

    .line 3513
    :cond_5
    const/16 v0, 0xc9

    goto :goto_1

    .line 3515
    :cond_6
    const/16 v0, 0xa1

    goto :goto_1

    .line 3522
    :cond_7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_9

    .line 3525
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    monitor-exit v2

    .line 3523
    return v0

    :cond_a
    monitor-exit v2

    .line 3528
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No user id available!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3494
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104053f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProfileIdsLU(IZ)Landroid/util/IntArray;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .prologue
    .line 748
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 749
    .local v3, "user":Landroid/content/pm/UserInfo;
    new-instance v2, Landroid/util/IntArray;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v2, v5}, Landroid/util/IntArray;-><init>(I)V

    .line 750
    .local v2, "result":Landroid/util/IntArray;
    if-nez v3, :cond_0

    .line 752
    return-object v2

    .line 754
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 755
    .local v4, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 756
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 757
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v3, v1}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 755
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 763
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 766
    iget-boolean v5, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_1

    .line 769
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    .line 771
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    :cond_4
    return-object v2
.end method

.method private getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 822
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 823
    .local v1, "profile":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    .line 824
    return-object v3

    .line 826
    :cond_0
    iget v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 827
    .local v0, "parentUserId":I
    const/16 v2, -0x2710

    if-ne v0, v2, :cond_1

    .line 828
    return-object v3

    .line 830
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    return-object v2
.end method

.method private getProfilesLU(IZZ)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .param p3, "fullInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 722
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v2

    .line 723
    .local v2, "profileIds":Landroid/util/IntArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 724
    .local v5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 725
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 726
    .local v1, "profileId":I
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 728
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-nez p3, :cond_1

    .line 729
    new-instance v4, Landroid/content/pm/UserInfo;

    invoke-direct {v4, v3}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 730
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    const/16 v6, 0x64

    if-lt p1, v6, :cond_0

    .line 731
    iput-object v7, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    move-object v3, v4

    .line 739
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    iput-object v7, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 734
    iput-object v7, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    move-object v3, v4

    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 737
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v3

    goto :goto_1

    .line 741
    .end local v1    # "profileId":I
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    return-object v5
.end method

.method private static getSerialNumber(Ljava/io/File;)I
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3591
    const/16 v5, 0x100

    :try_start_0
    new-array v0, v5, [B

    .line 3592
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "user.serial"

    invoke-static {v5, v6, v0}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v3

    .line 3593
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3595
    .local v4, "serial":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    return v5

    .line 3596
    :catch_0
    move-exception v2

    .line 3597
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad serial number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3599
    .end local v0    # "buf":[B
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "len":I
    .end local v4    # "serial":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3600
    .local v1, "e":Landroid/system/ErrnoException;
    iget v5, v1, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ENODATA:I

    if-ne v5, v6, :cond_0

    .line 3601
    const/4 v5, -0x1

    return v5

    .line 3603
    :cond_0
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3196
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3198
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3199
    const/16 v4, 0x2000

    .line 3198
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3198
    return v3

    .line 3200
    :catch_0
    move-exception v2

    .line 3201
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 3203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3201
    return v3

    .line 3202
    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v3

    .line 3203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3202
    throw v3
.end method

.method private getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1077
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1079
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1082
    :cond_0
    return-object v0

    .line 1080
    :cond_1
    return-object v2
.end method

.method private getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1067
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1069
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1073
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :cond_1
    return-object v1

    .line 1070
    :cond_2
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserInfo: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-object v1
.end method

.method private getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1090
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1091
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1092
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v1

    .line 1090
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static final hasManageOrCreateUsersPermission()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1809
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1810
    .local v0, "callingUid":I
    const/16 v3, 0x3e8

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1811
    if-nez v0, :cond_1

    .line 1810
    :cond_0
    :goto_0
    return v1

    .line 1813
    :cond_1
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    .line 1812
    invoke-static {v3, v0, v4, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1816
    const-string/jumbo v3, "android.permission.CREATE_USERS"

    .line 1815
    invoke-static {v3, v0, v4, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private static final hasManageUsersPermission()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1795
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1796
    .local v0, "callingUid":I
    const/16 v3, 0x3e8

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1797
    if-nez v0, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return v1

    .line 1799
    :cond_1
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    .line 1800
    const/4 v4, -0x1

    .line 1798
    invoke-static {v3, v0, v4, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private initDefaultGuestRestrictions()V
    .locals 4

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v1

    .line 1215
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_config_wifi"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1217
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_install_unknown_sources"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1218
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_outgoing_calls"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1219
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_sms"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1213
    return-void

    .line 1214
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invalidateEffectiveUserRestrictionsLR(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1325
    return-void
.end method

.method private static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 4
    .param p0, "user"    # Landroid/content/pm/UserInfo;
    .param p1, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 835
    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_0

    .line 836
    iget v2, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_2

    .line 837
    iget v2, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v3, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v2, v3, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 837
    goto :goto_0

    :cond_2
    move v0, v1

    .line 836
    goto :goto_0
.end method

.method private isSameProfileGroupLP(II)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .prologue
    const/16 v5, -0x2710

    const/4 v2, 0x0

    .line 799
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 800
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 801
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v5, :cond_1

    :cond_0
    monitor-exit v3

    .line 802
    return v2

    .line 804
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 805
    .local v0, "otherUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_2

    .line 806
    iget v4, v0, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v5, :cond_3

    :cond_2
    monitor-exit v3

    .line 807
    return v2

    .line 809
    :cond_3
    :try_start_2
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v0, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v5, :cond_4

    const/4 v2, 0x1

    :cond_4
    monitor-exit v3

    return v2

    .line 799
    .end local v0    # "otherUserInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private isUserLimitReached()Z
    .locals 3

    .prologue
    .line 1648
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1649
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "count":I
    monitor-exit v1

    .line 1651
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1648
    .end local v0    # "count":I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 1651
    .restart local v0    # "count":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .prologue
    .line 1576
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1577
    return-void

    .line 1580
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1581
    .local v0, "newRestrictionsFinal":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1583
    .local v1, "prevRestrictionsFinal":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1571
    return-void
.end method

.method static readApplicationRestrictionsLP(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .locals 8
    .param p0, "restrictionsFile"    # Landroid/util/AtomicFile;

    .prologue
    .line 3216
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3217
    .local v3, "restrictions":Landroid/os/Bundle;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3218
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3219
    return-object v3

    .line 3222
    :cond_0
    const/4 v1, 0x0

    .line 3224
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 3225
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 3226
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3227
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3228
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 3229
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to read restrictions file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3230
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    .line 3229
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3239
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3231
    return-object v3

    .line 3233
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 3234
    invoke-static {v3, v4, v2}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3236
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 3237
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3239
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3241
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 3239
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 3238
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v5

    .line 3239
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3238
    throw v5
.end method

.method private readApplicationRestrictionsLP(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3209
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 3210
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3209
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3211
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLP(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 3290
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3291
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3292
    .local v1, "outerDepth":I
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3293
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 3295
    :cond_0
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3246
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 3247
    .local v6, "type":I
    const/4 v10, 0x2

    if-ne v6, v10, :cond_2

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "entry"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3248
    const-string/jumbo v10, "key"

    const/4 v11, 0x0

    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3249
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v10, "type"

    const/4 v11, 0x0

    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3250
    .local v7, "valType":Ljava/lang/String;
    const-string/jumbo v10, "m"

    const/4 v11, 0x0

    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3251
    .local v4, "multiple":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 3252
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3253
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3254
    .local v2, "count":I
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v10, 0x1

    if-eq v6, v10, :cond_1

    .line 3255
    const/4 v10, 0x2

    if-ne v6, v10, :cond_0

    .line 3256
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 3255
    if-eqz v10, :cond_0

    .line 3257
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3258
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3261
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    .line 3262
    .local v9, "valueStrings":[Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3263
    invoke-virtual {p0, v3, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3245
    .end local v2    # "count":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "multiple":Ljava/lang/String;
    .end local v7    # "valType":Ljava/lang/String;
    .end local v9    # "valueStrings":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 3264
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "multiple":Ljava/lang/String;
    .restart local v7    # "valType":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "B"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3265
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 3266
    :cond_4
    const-string/jumbo v10, "BA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3267
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 3268
    .local v5, "outerDepth":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3269
    .local v0, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_2
    invoke-static {p2, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3270
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    .line 3271
    .local v1, "childBundle":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3274
    .end local v1    # "childBundle":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/Parcelable;

    .line 3273
    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1

    .line 3276
    .end local v0    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v5    # "outerDepth":I
    :cond_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 3277
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v10, "b"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3278
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 3279
    :cond_7
    const-string/jumbo v10, "i"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 3280
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 3282
    :cond_8
    invoke-virtual {p0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 2510
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2511
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    return p3

    .line 2513
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2514
    :catch_0
    move-exception v0

    .line 2515
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    const/4 v2, 0x0

    .line 2520
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2521
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    return-wide p3

    .line 2523
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 2524
    :catch_0
    move-exception v0

    .line 2525
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p3
.end method

.method private readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 44
    .param p1, "id"    # I

    .prologue
    .line 2359
    const/4 v12, 0x0

    .line 2360
    .local v12, "flags":I
    move/from16 v32, p1

    .line 2361
    .local v32, "serialNumber":I
    const/16 v21, 0x0

    .line 2362
    .local v21, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2363
    .local v6, "account":Ljava/lang/String;
    const/4 v15, 0x0

    .line 2364
    .local v15, "iconPath":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 2365
    .local v8, "creationTime":J
    const-wide/16 v18, 0x0

    .line 2366
    .local v18, "lastLoggedInTime":J
    const/16 v17, 0x0

    .line 2367
    .local v17, "lastLoggedInFingerprint":Ljava/lang/String;
    const/16 v27, -0x2710

    .line 2368
    .local v27, "profileGroupId":I
    const/16 v28, -0x2710

    .line 2369
    .local v28, "restrictedProfileParentId":I
    const/16 v24, 0x0

    .line 2370
    .local v24, "partial":Z
    const/4 v13, 0x0

    .line 2372
    .local v13, "guestToRemove":Z
    const/4 v14, 0x0

    .line 2373
    .local v14, "hasCCMBeenProvisioned":Z
    const/16 v26, 0x0

    .line 2374
    .local v26, "persistSeedData":Z
    const/16 v29, 0x0

    .line 2375
    .local v29, "seedAccountName":Ljava/lang/String;
    const/16 v31, 0x0

    .line 2376
    .local v31, "seedAccountType":Ljava/lang/String;
    const/16 v30, 0x0

    .line 2377
    .local v30, "seedAccountOptions":Landroid/os/PersistableBundle;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2378
    .local v7, "baseRestrictions":Landroid/os/Bundle;
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 2380
    .local v20, "localRestrictions":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 2383
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v37, Landroid/util/AtomicFile;

    new-instance v40, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ".xml"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v40 .. v42}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2384
    .local v37, "userFile":Landroid/util/AtomicFile;
    invoke-virtual/range {v37 .. v37}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    .line 2385
    .local v11, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v23

    .line 2386
    .local v23, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v40, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v40 .. v40}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-interface {v0, v11, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2388
    :cond_0
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    .local v35, "type":I
    const/16 v40, 0x2

    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_1

    .line 2389
    const/16 v40, 0x1

    move/from16 v0, v35

    move/from16 v1, v40

    if-ne v0, v1, :cond_0

    .line 2393
    :cond_1
    const/16 v40, 0x2

    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_3

    .line 2394
    const-string/jumbo v40, "UserManagerService"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Unable to read user "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2395
    const/16 v40, 0x0

    .line 2499
    if-eqz v11, :cond_2

    .line 2501
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2395
    :cond_2
    :goto_0
    return-object v40

    .line 2502
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    goto :goto_0

    .line 2398
    .end local v10    # "e":Ljava/io/IOException;
    :cond_3
    const/16 v40, 0x2

    move/from16 v0, v35

    move/from16 v1, v40

    if-ne v0, v1, :cond_12

    :try_start_2
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, "user"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_12

    .line 2399
    const-string/jumbo v40, "id"

    const/16 v41, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v33

    .line 2400
    .local v33, "storedId":I
    move/from16 v0, v33

    move/from16 v1, p1

    if-eq v0, v1, :cond_5

    .line 2401
    const-string/jumbo v40, "UserManagerService"

    const-string/jumbo v41, "User id does not match the file name"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2402
    const/16 v40, 0x0

    .line 2499
    if-eqz v11, :cond_4

    .line 2501
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2402
    :cond_4
    :goto_1
    return-object v40

    .line 2502
    :catch_1
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 2404
    .end local v10    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_4
    const-string/jumbo v40, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v32

    .line 2405
    const-string/jumbo v40, "flags"

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 2406
    const-string/jumbo v40, "icon"

    const/16 v41, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2407
    .local v15, "iconPath":Ljava/lang/String;
    const-string/jumbo v40, "created"

    const-wide/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 2408
    const-string/jumbo v40, "lastLoggedIn"

    const-wide/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    .line 2410
    const-string/jumbo v40, "lastLoggedInFingerprint"

    .line 2409
    const/16 v41, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2411
    .local v17, "lastLoggedInFingerprint":Ljava/lang/String;
    const-string/jumbo v40, "profileGroupId"

    .line 2412
    const/16 v41, -0x2710

    .line 2411
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v27

    .line 2414
    const-string/jumbo v40, "restrictedProfileParentId"

    const/16 v41, -0x2710

    .line 2413
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v28

    .line 2415
    const-string/jumbo v40, "partial"

    const/16 v41, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 2416
    .local v39, "valueString":Ljava/lang/String;
    const-string/jumbo v40, "true"

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_6

    .line 2417
    const/16 v24, 0x1

    .line 2419
    :cond_6
    const-string/jumbo v40, "guestToRemove"

    const/16 v41, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 2420
    const-string/jumbo v40, "true"

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2421
    const/4 v13, 0x1

    .line 2424
    :cond_7
    const-string/jumbo v40, "hasCCMBeenProvisioned"

    const/16 v41, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 2425
    const-string/jumbo v40, "true"

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 2426
    const/4 v14, 0x1

    .line 2428
    :cond_8
    const-string/jumbo v40, "seedAccountName"

    const/16 v41, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2429
    .local v29, "seedAccountName":Ljava/lang/String;
    const-string/jumbo v40, "seedAccountType"

    const/16 v41, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2430
    .local v31, "seedAccountType":Ljava/lang/String;
    if-nez v29, :cond_9

    if-eqz v31, :cond_a

    .line 2431
    :cond_9
    const/16 v26, 0x1

    .line 2434
    :cond_a
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    .line 2435
    .end local v6    # "account":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v30    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v22, "outerDepth":I
    :cond_b
    :goto_2
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    const/16 v40, 0x1

    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_12

    .line 2436
    const/16 v40, 0x3

    move/from16 v0, v35

    move/from16 v1, v40

    if-ne v0, v1, :cond_c

    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v40

    move/from16 v0, v40

    move/from16 v1, v22

    if-le v0, v1, :cond_12

    .line 2437
    :cond_c
    const/16 v40, 0x3

    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_b

    const/16 v40, 0x4

    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_b

    .line 2440
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v34

    .line 2441
    .local v34, "tag":Ljava/lang/String;
    const-string/jumbo v40, "name"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_d

    .line 2442
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    .line 2443
    const/16 v40, 0x4

    move/from16 v0, v35

    move/from16 v1, v40

    if-ne v0, v1, :cond_b

    .line 2444
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v21

    .local v21, "name":Ljava/lang/String;
    goto :goto_2

    .line 2446
    .end local v21    # "name":Ljava/lang/String;
    :cond_d
    const-string/jumbo v40, "restrictions"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 2447
    move-object/from16 v0, v23

    invoke-static {v0, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 2496
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "iconPath":Ljava/lang/String;
    .end local v17    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v22    # "outerDepth":I
    .end local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v29    # "seedAccountName":Ljava/lang/String;
    .end local v31    # "seedAccountType":Ljava/lang/String;
    .end local v33    # "storedId":I
    .end local v34    # "tag":Ljava/lang/String;
    .end local v35    # "type":I
    .end local v37    # "userFile":Landroid/util/AtomicFile;
    .end local v39    # "valueString":Ljava/lang/String;
    :catch_2
    move-exception v16

    .line 2499
    .local v16, "ioe":Ljava/io/IOException;
    if-eqz v11, :cond_e

    .line 2501
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 2506
    .end local v16    # "ioe":Ljava/io/IOException;
    :cond_e
    :goto_3
    const/16 v40, 0x0

    return-object v40

    .line 2448
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "iconPath":Ljava/lang/String;
    .restart local v17    # "lastLoggedInFingerprint":Ljava/lang/String;
    .restart local v22    # "outerDepth":I
    .restart local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v29    # "seedAccountName":Ljava/lang/String;
    .restart local v31    # "seedAccountType":Ljava/lang/String;
    .restart local v33    # "storedId":I
    .restart local v34    # "tag":Ljava/lang/String;
    .restart local v35    # "type":I
    .restart local v37    # "userFile":Landroid/util/AtomicFile;
    .restart local v39    # "valueString":Ljava/lang/String;
    :cond_f
    :try_start_6
    const-string/jumbo v40, "device_policy_restrictions"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 2449
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 2497
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "iconPath":Ljava/lang/String;
    .end local v17    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v22    # "outerDepth":I
    .end local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v29    # "seedAccountName":Ljava/lang/String;
    .end local v31    # "seedAccountType":Ljava/lang/String;
    .end local v33    # "storedId":I
    .end local v34    # "tag":Ljava/lang/String;
    .end local v35    # "type":I
    .end local v37    # "userFile":Landroid/util/AtomicFile;
    .end local v39    # "valueString":Ljava/lang/String;
    :catch_3
    move-exception v25

    .line 2499
    .local v25, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v11, :cond_e

    .line 2501
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 2502
    :catch_4
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 2450
    .end local v10    # "e":Ljava/io/IOException;
    .end local v25    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "iconPath":Ljava/lang/String;
    .restart local v17    # "lastLoggedInFingerprint":Ljava/lang/String;
    .restart local v22    # "outerDepth":I
    .restart local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v29    # "seedAccountName":Ljava/lang/String;
    .restart local v31    # "seedAccountType":Ljava/lang/String;
    .restart local v33    # "storedId":I
    .restart local v34    # "tag":Ljava/lang/String;
    .restart local v35    # "type":I
    .restart local v37    # "userFile":Landroid/util/AtomicFile;
    .restart local v39    # "valueString":Ljava/lang/String;
    :cond_10
    :try_start_8
    const-string/jumbo v40, "account"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_11

    .line 2451
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    .line 2452
    const/16 v40, 0x4

    move/from16 v0, v35

    move/from16 v1, v40

    if-ne v0, v1, :cond_b

    .line 2453
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .local v6, "account":Ljava/lang/String;
    goto/16 :goto_2

    .line 2455
    .end local v6    # "account":Ljava/lang/String;
    :cond_11
    const-string/jumbo v40, "seedAccountOptions"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_b

    .line 2456
    invoke-static/range {v23 .. v23}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v30

    .line 2457
    .local v30, "seedAccountOptions":Landroid/os/PersistableBundle;
    const/16 v26, 0x1

    goto/16 :goto_2

    .line 2463
    .end local v15    # "iconPath":Ljava/lang/String;
    .end local v17    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v22    # "outerDepth":I
    .end local v29    # "seedAccountName":Ljava/lang/String;
    .end local v30    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .end local v31    # "seedAccountType":Ljava/lang/String;
    .end local v33    # "storedId":I
    .end local v34    # "tag":Ljava/lang/String;
    .end local v39    # "valueString":Ljava/lang/String;
    :cond_12
    new-instance v38, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v38

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v15, v12}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2464
    .local v38, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v0, v32

    move-object/from16 v1, v38

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2465
    move-object/from16 v0, v38

    iput-wide v8, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2466
    move-wide/from16 v0, v18

    move-object/from16 v2, v38

    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2467
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    iput-object v0, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2468
    move/from16 v0, v24

    move-object/from16 v1, v38

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 2469
    move-object/from16 v0, v38

    iput-boolean v13, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2471
    move-object/from16 v0, v38

    iput-boolean v14, v0, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    .line 2472
    move/from16 v0, v27

    move-object/from16 v1, v38

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2473
    move/from16 v0, v28

    move-object/from16 v1, v38

    iput v0, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2475
    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v40, v0

    const/16 v41, 0x64

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_13

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v40, v0

    const/16 v41, 0xc8

    move/from16 v0, v40

    move/from16 v1, v41

    if-gt v0, v1, :cond_13

    .line 2476
    invoke-virtual/range {v38 .. v38}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v40

    if-nez v40, :cond_13

    .line 2477
    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/UserInfo;->flags:I

    move/from16 v40, v0

    const/high16 v41, 0x10000000

    or-int v40, v40, v41

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput v0, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 2483
    :cond_13
    new-instance v36, Lcom/android/server/pm/UserManagerService$UserData;

    const/16 v40, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2484
    .local v36, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    move-object/from16 v0, v38

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2485
    move-object/from16 v0, v36

    iput-object v6, v0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 2486
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 2487
    move-object/from16 v0, v31

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 2488
    move/from16 v0, v26

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 2489
    move-object/from16 v0, v30

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2492
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v41
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2499
    if-eqz v11, :cond_14

    .line 2501
    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 2495
    :cond_14
    :goto_4
    return-object v36

    .line 2491
    :catchall_0
    move-exception v40

    :try_start_c
    monitor-exit v41

    throw v40
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2498
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v35    # "type":I
    .end local v36    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v37    # "userFile":Landroid/util/AtomicFile;
    .end local v38    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_1
    move-exception v40

    .line 2499
    if-eqz v11, :cond_15

    .line 2501
    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 2498
    :cond_15
    :goto_5
    throw v40

    .line 2502
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v35    # "type":I
    .restart local v36    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v37    # "userFile":Landroid/util/AtomicFile;
    .restart local v38    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_5
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_4

    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v35    # "type":I
    .end local v36    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v37    # "userFile":Landroid/util/AtomicFile;
    .end local v38    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v16    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .end local v10    # "e":Ljava/io/IOException;
    .end local v16    # "ioe":Ljava/io/IOException;
    :catch_7
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_5
.end method

.method private readUserListLP()V
    .locals 15

    .prologue
    .line 1906
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1908
    const-string/jumbo v12, "LL"

    invoke-direct {p0, v12}, Lcom/android/server/pm/UserManagerService;->writeFotaLocked(Ljava/lang/String;)V

    .line 1910
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    .line 1911
    return-void

    .line 1915
    :cond_0
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mIsFotaFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1916
    const-string/jumbo v12, "KK"

    invoke-direct {p0, v12}, Lcom/android/server/pm/UserManagerService;->writeFotaLocked(Ljava/lang/String;)V

    .line 1920
    :cond_1
    const/4 v1, 0x0

    .line 1921
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v10, Landroid/util/AtomicFile;

    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v10, v12}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1923
    .local v10, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v10}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 1924
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1925
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1927
    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v12, 0x2

    if-eq v8, v12, :cond_3

    .line 1928
    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    .line 1932
    :cond_3
    const/4 v12, 0x2

    if-eq v8, v12, :cond_4

    .line 1933
    const-string/jumbo v12, "UserManagerService"

    const-string/jumbo v13, "Unable to read user list"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2006
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1935
    return-void

    .line 1938
    :cond_4
    const/4 v12, -0x1

    :try_start_1
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 1939
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "users"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1940
    const-string/jumbo v12, "nextSerialNumber"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1941
    .local v3, "lastSerialNumber":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1942
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 1944
    :cond_5
    const-string/jumbo v12, "version"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1945
    .local v11, "versionNumber":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 1946
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 1950
    .end local v3    # "lastSerialNumber":Ljava/lang/String;
    .end local v11    # "versionNumber":Ljava/lang/String;
    :cond_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1952
    .local v5, "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    :cond_7
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_e

    .line 1953
    const/4 v12, 0x2

    if-ne v8, v12, :cond_7

    .line 1954
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1955
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v12, "user"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1956
    const-string/jumbo v12, "id"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1958
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v9

    .line 1960
    .local v9, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v9, :cond_7

    .line 1961
    iget-object v13, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1962
    :try_start_2
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v14, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1963
    iget-object v12, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1964
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v12, :cond_8

    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget-object v14, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    if-gt v12, v14, :cond_9

    .line 1965
    :cond_8
    iget-object v12, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 1967
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v14, 0x64

    if-lt v12, v14, :cond_9

    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v14, 0xc8

    if-gt v12, v14, :cond_9

    .line 1968
    const/16 v12, 0xc9

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 2003
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catch_0
    move-exception v0

    .line 2004
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2006
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1905
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1961
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    .restart local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v12

    :try_start_5
    monitor-exit v13

    throw v12
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2005
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_1
    move-exception v12

    .line 2006
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2005
    throw v12

    .line 1973
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_a
    :try_start_6
    const-string/jumbo v12, "guestRestrictions"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1974
    :cond_b
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_7

    .line 1975
    const/4 v12, 0x3

    if-eq v8, v12, :cond_7

    .line 1976
    const/4 v12, 0x2

    if-ne v8, v12, :cond_b

    .line 1977
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "restrictions"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1978
    iget-object v13, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1980
    :try_start_7
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 1979
    invoke-static {v7, v12}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v13

    goto/16 :goto_0

    .line 1978
    :catchall_2
    move-exception v12

    monitor-exit v13

    throw v12

    .line 1982
    :cond_c
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "device_policy_restrictions"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1984
    invoke-static {v7, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1990
    :cond_d
    const-string/jumbo v12, "globalRestrictionOwnerUserId"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1991
    const-string/jumbo v12, "id"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1992
    .local v6, "ownerUserId":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 1993
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    goto/16 :goto_0

    .line 1998
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "ownerUserId":Ljava/lang/String;
    :cond_e
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1999
    :try_start_9
    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v12

    .line 2001
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2002
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2006
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 1998
    :catchall_3
    move-exception v13

    :try_start_b
    monitor-exit v12

    throw v13
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method private removeNonSystemUsers()V
    .locals 7

    .prologue
    .line 4110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4111
    .local v4, "usersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4112
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 4113
    .local v3, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 4114
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4115
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_0

    .line 4116
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_1
    monitor-exit v6

    .line 4120
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ui$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 4121
    .restart local v1    # "ui":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    goto :goto_1

    .line 4111
    .end local v0    # "i":I
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "ui$iterator":Ljava/util/Iterator;
    .end local v3    # "userSize":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 4109
    .restart local v0    # "i":I
    .restart local v2    # "ui$iterator":Ljava/util/Iterator;
    .restart local v3    # "userSize":I
    :cond_2
    return-void
.end method

.method private removeUserState(I)V
    .locals 12
    .param p1, "userHandle"    # I

    .prologue
    .line 3061
    const-string/jumbo v6, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeUserState() : userHandle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3072
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    .line 3073
    .local v2, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v2, :cond_0

    .line 3074
    invoke-interface {v2, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3080
    .end local v2    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3082
    :try_start_2
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3087
    :try_start_3
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3088
    .local v4, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v4, :cond_1

    .line 3089
    iget-object v3, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3091
    .local v3, "user":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    :goto_2
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v7

    .line 3101
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 3102
    const/4 v7, 0x3

    .line 3101
    invoke-virtual {v6, p1, v7}, Lcom/android/server/pm/PackageManagerService;->destroyUserData(II)V

    .line 3105
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3106
    :try_start_5
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3114
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/UserManagerService$8;

    invoke-direct {v8, p0, p1}, Lcom/android/server/pm/UserManagerService$8;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    .line 3120
    const-wide/32 v10, 0xea60

    .line 3114
    invoke-virtual {v6, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3122
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v7

    .line 3124
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v7

    .line 3125
    :try_start_6
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v7

    .line 3127
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3128
    :try_start_7
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3129
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3130
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3131
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit v7

    .line 3134
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3135
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    monitor-exit v6

    .line 3140
    new-instance v5, Landroid/util/XmlMoreAtomicFile;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 3142
    .local v5, "userFile":Landroid/util/XmlMoreAtomicFile;
    invoke-virtual {v5}, Landroid/util/XmlMoreAtomicFile;->delete()V

    .line 3143
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 3060
    return-void

    .line 3064
    .end local v4    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v5    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :catch_0
    move-exception v0

    .line 3066
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v6, "UserManagerService"

    .line 3067
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Destroying key for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " failed, continuing anyway"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3066
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3076
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 3077
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "UserManagerService"

    const-string/jumbo v7, "unable to clear GK secure user id"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3092
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v3    # "user":Landroid/content/pm/UserInfo;
    .restart local v4    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2
    :try_start_9
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 3082
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v6

    :try_start_a
    monitor-exit v8

    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3080
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 3105
    .restart local v4    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_2
    move-exception v6

    monitor-exit v7

    throw v6

    .line 3124
    :catchall_3
    move-exception v6

    monitor-exit v7

    throw v6

    .line 3127
    :catchall_4
    move-exception v6

    monitor-exit v7

    throw v6

    .line 3134
    :catchall_5
    move-exception v7

    monitor-exit v6

    throw v7
.end method

.method private runList(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3717
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3718
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 3719
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v3, :cond_0

    .line 3720
    const-string/jumbo v4, "Error: couldn\'t get users"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3721
    const/4 v4, 0x1

    return v4

    .line 3723
    :cond_0
    const-string/jumbo v4, "Users:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3724
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 3725
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v4, v6}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v2, " running"

    .line 3726
    .local v2, "running":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3724
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3725
    .end local v2    # "running":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    .restart local v2    # "running":Ljava/lang/String;
    goto :goto_1

    .line 3728
    .end local v2    # "running":Ljava/lang/String;
    :cond_2
    return v6
.end method

.method private scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 4
    .param p1, "UserData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .prologue
    const/4 v2, 0x1

    .line 2157
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2158
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2159
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2151
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .locals 4
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I

    .prologue
    .line 3147
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3148
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3150
    const-string/jumbo v1, "android.intent.extra.USER"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3151
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3152
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3146
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1149
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1151
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1152
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1148
    return-void
.end method

.method private setKnoxRestriction(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1489
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1490
    return-void

    .line 1492
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1496
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1495
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1497
    .local v0, "newRestrictions":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1499
    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1488
    return-void

    .line 1492
    .end local v0    # "newRestrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static setSerialNumber(Ljava/io/File;I)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3577
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 3578
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user.serial"

    sget v4, Landroid/system/OsConstants;->XATTR_CREATE:I

    invoke-static {v2, v3, v0, v4}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3575
    return-void

    .line 3579
    .end local v0    # "buf":[B
    :catch_0
    move-exception v1

    .line 3580
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private updateUserIds()V
    .locals 8

    .prologue
    .line 3420
    const/4 v4, 0x0

    .line 3421
    .local v4, "num":I
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3422
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 3423
    .local v5, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 3424
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_0

    .line 3425
    add-int/lit8 v4, v4, 0x1

    .line 3423
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3428
    :cond_1
    new-array v3, v4, [I

    .line 3429
    .local v3, "newUsers":[I
    const/4 v1, 0x0

    .line 3430
    .local v1, "n":I
    const/4 v0, 0x0

    move v2, v1

    .end local v1    # "n":I
    .local v2, "n":I
    :goto_1
    if-ge v0, v5, :cond_2

    .line 3431
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_3

    .line 3432
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "n":I
    .restart local v1    # "n":I
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v3, v2

    .line 3430
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "n":I
    .restart local v2    # "n":I
    goto :goto_1

    .line 3435
    :cond_2
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 3419
    return-void

    .line 3421
    .end local v0    # "i":I
    .end local v2    # "n":I
    .end local v3    # "newUsers":[I
    .end local v5    # "userSize":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v0    # "i":I
    .restart local v2    # "n":I
    .restart local v3    # "newUsers":[I
    .restart local v5    # "userSize":I
    :cond_3
    move v1, v2

    .end local v2    # "n":I
    .restart local v1    # "n":I
    goto :goto_2
.end method

.method private updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .locals 7
    .param p1, "newRestrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1518
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 1517
    invoke-static {v4}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1521
    .local v1, "prevAppliedRestrictions":Landroid/os/Bundle;
    if-eqz p1, :cond_3

    .line 1523
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1525
    .local v2, "prevBaseRestrictions":Landroid/os/Bundle;
    if-eq v2, p1, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1526
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_1

    :goto_1
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1529
    invoke-static {v2, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1531
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 1532
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v3, :cond_2

    .line 1533
    const-string/jumbo v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UserData is null: userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    return-void

    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_0
    move v4, v6

    .line 1525
    goto :goto_0

    :cond_1
    move v5, v6

    .line 1526
    goto :goto_1

    .line 1537
    .restart local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1538
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1542
    .end local v2    # "prevBaseRestrictions":Landroid/os/Bundle;
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1544
    .local v0, "effective":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1552
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v4, :cond_4

    .line 1553
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v5, p0, v0, p2}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1565
    :cond_4
    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1567
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1515
    return-void
.end method

.method private upgradeIfNecessaryLP()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    .line 2014
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2015
    .local v1, "originalVersion":I
    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2016
    .local v4, "userVersion":I
    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 2018
    invoke-direct {p0, v8}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 2019
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const-string/jumbo v5, "Primary"

    iget-object v6, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2020
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2021
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104053f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2020
    iput-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2022
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2024
    :cond_0
    const/4 v4, 0x1

    .line 2027
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 2029
    invoke-direct {p0, v8}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 2030
    .restart local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_2

    .line 2031
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 2032
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2034
    :cond_2
    const/4 v4, 0x2

    .line 2038
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    const/4 v5, 0x4

    if-ge v4, v5, :cond_4

    .line 2039
    const/4 v4, 0x4

    .line 2042
    :cond_4
    const/4 v5, 0x5

    if-ge v4, v5, :cond_5

    .line 2043
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2044
    const/4 v4, 0x5

    .line 2047
    :cond_5
    if-ge v4, v9, :cond_8

    .line 2048
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    .line 2049
    .local v2, "splitSystemUser":Z
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2050
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 2051
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2053
    .restart local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_6

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2054
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2055
    const/16 v7, -0x2710

    .line 2054
    if-ne v5, v7, :cond_6

    .line 2056
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v7, 0x0

    iput v7, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2057
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_7
    monitor-exit v6

    .line 2061
    const/4 v4, 0x6

    .line 2064
    .end local v0    # "i":I
    .end local v2    # "splitSystemUser":Z
    :cond_8
    if-ge v4, v9, :cond_a

    .line 2065
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "User version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " didn\'t upgrade as expected to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_9
    :goto_1
    return-void

    .line 2049
    .restart local v0    # "i":I
    .restart local v2    # "splitSystemUser":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2068
    .end local v0    # "i":I
    .end local v2    # "splitSystemUser":Z
    :cond_a
    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2070
    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    if-ge v1, v5, :cond_9

    .line 2071
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    goto :goto_1
.end method

.method private userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 1013
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_0

    .line 1014
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 1015
    .local v0, "withName":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1016
    return-object v0

    .line 1018
    .end local v0    # "withName":Landroid/content/pm/UserInfo;
    :cond_0
    return-object p1
.end method

.method static writeApplicationRestrictionsLP(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .locals 6
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "restrictionsFile"    # Landroid/util/AtomicFile;

    .prologue
    .line 3308
    const/4 v2, 0x0

    .line 3310
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 3311
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3313
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3314
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3315
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3316
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3318
    const-string/jumbo v4, "restrictions"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3319
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3320
    const-string/jumbo v4, "restrictions"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3322
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3323
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3307
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    .line 3324
    :catch_0
    move-exception v1

    .line 3325
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3326
    const-string/jumbo v4, "UserManagerService"

    const-string/jumbo v5, "Error writing application restrictions list"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeApplicationRestrictionsLP(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 3300
    new-instance v0, Landroid/util/AtomicFile;

    .line 3301
    new-instance v1, Ljava/io/File;

    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 3302
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3301
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3300
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3303
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {p2, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLP(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    .line 3299
    return-void
.end method

.method private writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1836
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1837
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "photo.png"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1838
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "photo.png.tmp"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1839
    .local v5, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1840
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1842
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1843
    const/16 v7, 0x1f9

    .line 1844
    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 1841
    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1847
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v4, "os":Ljava/io/FileOutputStream;
    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1848
    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 1847
    if-eqz v6, :cond_1

    .line 1848
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v6

    .line 1847
    if-eqz v6, :cond_1

    .line 1849
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1852
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1856
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1834
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "tmp":Ljava/io/File;
    :goto_1
    return-void

    .line 1853
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "tmp":Ljava/io/File;
    :catch_0
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 1857
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "tmp":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 1858
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "UserManagerService"

    const-string/jumbo v7, "Error setting photo for user "

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 13
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 3332
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3333
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 3334
    .local v5, "value":Ljava/lang/Object;
    const-string/jumbo v7, "entry"

    invoke-interface {p1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3335
    const-string/jumbo v7, "key"

    invoke-interface {p1, v12, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3337
    instance-of v7, v5, Ljava/lang/Boolean;

    if-eqz v7, :cond_1

    .line 3338
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "b"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3339
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3371
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    const-string/jumbo v7, "entry"

    invoke-interface {p1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 3340
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 3341
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "i"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3342
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 3343
    :cond_2
    if-eqz v5, :cond_3

    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 3344
    :cond_3
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "s"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3345
    if-eqz v5, :cond_4

    check-cast v5, Ljava/lang/String;

    .end local v5    # "value":Ljava/lang/Object;
    :goto_2
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .restart local v5    # "value":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v5, ""

    goto :goto_2

    .line 3346
    :cond_5
    instance-of v7, v5, Landroid/os/Bundle;

    if-eqz v7, :cond_6

    .line 3347
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "B"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3348
    check-cast v5, Landroid/os/Bundle;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-static {v5, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    .line 3349
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v7, v5, [Landroid/os/Parcelable;

    if-eqz v7, :cond_8

    .line 3350
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "BA"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v0, v5

    .line 3351
    check-cast v0, [Landroid/os/Parcelable;

    .line 3352
    .local v0, "array":[Landroid/os/Parcelable;
    array-length v9, v0

    move v7, v8

    :goto_3
    if-ge v7, v9, :cond_0

    aget-object v4, v0, v7

    .line 3353
    .local v4, "parcelable":Landroid/os/Parcelable;
    instance-of v10, v4, Landroid/os/Bundle;

    if-nez v10, :cond_7

    .line 3354
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "bundle-array can only hold Bundles"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3356
    :cond_7
    const-string/jumbo v10, "entry"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3357
    const-string/jumbo v10, "type"

    const-string/jumbo v11, "B"

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3358
    check-cast v4, Landroid/os/Bundle;

    .end local v4    # "parcelable":Landroid/os/Parcelable;
    invoke-static {v4, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3359
    const-string/jumbo v10, "entry"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3352
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3362
    .end local v0    # "array":[Landroid/os/Parcelable;
    :cond_8
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "sa"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v6, v5

    .line 3363
    check-cast v6, [Ljava/lang/String;

    .line 3364
    .local v6, "values":[Ljava/lang/String;
    const-string/jumbo v7, "m"

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3365
    array-length v9, v6

    move v7, v8

    :goto_4
    if-ge v7, v9, :cond_0

    aget-object v1, v6, v7

    .line 3366
    .local v1, "choice":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3367
    if-eqz v1, :cond_9

    .end local v1    # "choice":Ljava/lang/String;
    :goto_5
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3368
    const-string/jumbo v10, "value"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3365
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3367
    .restart local v1    # "choice":Ljava/lang/String;
    :cond_9
    const-string/jumbo v1, ""

    goto :goto_5

    .line 3331
    .end local v1    # "choice":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "values":[Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private writeFotaLocked(Ljava/lang/String;)V
    .locals 7
    .param p1, "mFotaVersion"    # Ljava/lang/String;

    .prologue
    .line 2271
    const/4 v2, 0x0

    .line 2272
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Landroid/util/XmlMoreAtomicFile;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mIsFotaFile:Ljava/io/File;

    invoke-direct {v3, v5}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 2274
    .local v3, "fotaFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_0
    invoke-virtual {v3}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2275
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2276
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2277
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2278
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2279
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2281
    const-string/jumbo v5, "fota"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2282
    const-string/jumbo v5, "version"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2283
    const-string/jumbo v5, "fota"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2285
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2270
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    .line 2286
    :catch_0
    move-exception v1

    .line 2287
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v3, v2}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2288
    const-string/jumbo v5, "UserManagerService"

    const-string/jumbo v6, "Error writing fota file"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 11
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .prologue
    const/16 v10, -0x2710

    .line 2174
    const/4 v1, 0x0

    .line 2175
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2177
    .local v4, "userFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 2178
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2181
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2182
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2183
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2184
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2186
    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2187
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    const-string/jumbo v6, "user"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2188
    const-string/jumbo v6, "id"

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2189
    const-string/jumbo v6, "serialNumber"

    iget v7, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2191
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v7, 0x64

    if-lt v6, v7, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v7, 0xc8

    if-gt v6, v7, :cond_0

    .line 2192
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2193
    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 2197
    :cond_0
    const-string/jumbo v6, "flags"

    iget v7, v5, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2198
    const-string/jumbo v6, "created"

    iget-wide v8, v5, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2199
    const-string/jumbo v6, "lastLoggedIn"

    .line 2200
    iget-wide v8, v5, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 2199
    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2201
    iget-object v6, v5, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 2202
    const-string/jumbo v6, "lastLoggedInFingerprint"

    .line 2203
    iget-object v7, v5, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2202
    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2205
    :cond_1
    iget-object v6, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 2206
    const-string/jumbo v6, "icon"

    iget-object v7, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2208
    :cond_2
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v6, :cond_3

    .line 2209
    const-string/jumbo v6, "partial"

    const-string/jumbo v7, "true"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2211
    :cond_3
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v6, :cond_4

    .line 2212
    const-string/jumbo v6, "guestToRemove"

    const-string/jumbo v7, "true"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2215
    :cond_4
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    if-eqz v6, :cond_5

    .line 2216
    const-string/jumbo v6, "hasCCMBeenProvisioned"

    const-string/jumbo v7, "true"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2218
    :cond_5
    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v6, v10, :cond_6

    .line 2219
    const-string/jumbo v6, "profileGroupId"

    .line 2220
    iget v7, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2219
    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2222
    :cond_6
    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v6, v10, :cond_7

    .line 2223
    const-string/jumbo v6, "restrictedProfileParentId"

    .line 2224
    iget v7, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2223
    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2227
    :cond_7
    iget-boolean v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v6, :cond_9

    .line 2228
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 2229
    const-string/jumbo v6, "seedAccountName"

    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2231
    :cond_8
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 2232
    const-string/jumbo v6, "seedAccountType"

    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2235
    :cond_9
    iget-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 2236
    const-string/jumbo v6, "name"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2237
    iget-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2238
    const-string/jumbo v6, "name"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2240
    :cond_a
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2242
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v8, "restrictions"

    .line 2241
    invoke-static {v3, v6, v8}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2244
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 2245
    const-string/jumbo v8, "device_policy_restrictions"

    .line 2243
    invoke-static {v3, v6, v8}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7

    .line 2248
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 2249
    const-string/jumbo v6, "account"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2250
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2251
    const-string/jumbo v6, "account"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2254
    :cond_b
    iget-boolean v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v6, :cond_c

    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v6, :cond_c

    .line 2255
    const-string/jumbo v6, "seedAccountOptions"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2256
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v6, v3}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2257
    const-string/jumbo v6, "seedAccountOptions"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2259
    :cond_c
    const-string/jumbo v6, "user"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2261
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2262
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2170
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_0
    return-void

    .line 2240
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2263
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v2

    .line 2264
    .local v2, "ioe":Ljava/lang/Exception;
    const-string/jumbo v6, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error writing user info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2265
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method

.method private writeUserListLP()V
    .locals 14

    .prologue
    .line 2305
    const/4 v2, 0x0

    .line 2306
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v8, Landroid/util/AtomicFile;

    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2308
    .local v8, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2309
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2312
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2313
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2314
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2315
    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2317
    const-string/jumbo v9, "users"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2318
    const-string/jumbo v9, "nextSerialNumber"

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2319
    const-string/jumbo v9, "version"

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2321
    const-string/jumbo v9, "guestRestrictions"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2322
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2324
    :try_start_1
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v11, "restrictions"

    .line 2323
    invoke-static {v5, v9, v11}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v10

    .line 2326
    const-string/jumbo v9, "guestRestrictions"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2327
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2329
    :try_start_3
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    const-string/jumbo v11, "device_policy_restrictions"

    .line 2328
    invoke-static {v5, v9, v11}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v10

    .line 2331
    const-string/jumbo v9, "globalRestrictionOwnerUserId"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2332
    const-string/jumbo v9, "id"

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2333
    const-string/jumbo v9, "globalRestrictionOwnerUserId"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2335
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2336
    :try_start_5
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    new-array v7, v9, [I

    .line 2337
    .local v7, "userIdsToWrite":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v7

    if-ge v3, v9, :cond_0

    .line 2338
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2339
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    aput v9, v7, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2337
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2322
    .end local v3    # "i":I
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userIdsToWrite":[I
    :catchall_0
    move-exception v9

    :try_start_6
    monitor-exit v10

    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 2352
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 2353
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2354
    const-string/jumbo v9, "UserManagerService"

    const-string/jumbo v10, "Error writing user list"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 2327
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v9

    :try_start_7
    monitor-exit v10

    throw v9

    .restart local v3    # "i":I
    .restart local v7    # "userIdsToWrite":[I
    :cond_0
    monitor-exit v10

    .line 2342
    const/4 v9, 0x0

    array-length v10, v7

    :goto_2
    if-ge v9, v10, :cond_1

    aget v4, v7, v9

    .line 2343
    .local v4, "id":I
    const-string/jumbo v11, "user"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2344
    const-string/jumbo v11, "id"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v5, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2345
    const-string/jumbo v11, "user"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2342
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2335
    .end local v3    # "i":I
    .end local v4    # "id":I
    .end local v7    # "userIdsToWrite":[I
    :catchall_2
    move-exception v9

    monitor-exit v10

    throw v9

    .line 2348
    .restart local v3    # "i":I
    .restart local v7    # "userIdsToWrite":[I
    :cond_1
    const-string/jumbo v9, "users"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2350
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2351
    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1
.end method


# virtual methods
.method applyUserRestrictionsForAllUsersLR()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .prologue
    .line 1614
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1618
    new-instance v0, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1640
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1609
    return-void
.end method

.method applyUserRestrictionsLR(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1604
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 1603
    return-void
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "allowedToRemoveOne"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1656
    const-string/jumbo v7, "check if more managed profiles can be added."

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1657
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1658
    return v9

    .line 1660
    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1661
    const-string/jumbo v10, "android.software.managed_users"

    .line 1660
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1662
    return v9

    .line 1665
    :cond_1
    invoke-virtual {p0, p1, v8}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 1666
    .local v2, "managedProfilesCount":I
    if-lez v2, :cond_3

    if-eqz p2, :cond_3

    const/4 v3, 0x1

    .line 1671
    .local v3, "profilesRemovedCount":I
    :goto_0
    const/4 v1, 0x0

    .line 1672
    .local v1, "knoxWorkspaceCount":I
    invoke-virtual {p0, p1, v8}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v4

    .line 1673
    .local v4, "ui":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 1675
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1676
    add-int/lit8 v1, v1, 0x1

    .line 1673
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1666
    .end local v0    # "i":I
    .end local v1    # "knoxWorkspaceCount":I
    .end local v3    # "profilesRemovedCount":I
    .end local v4    # "ui":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "profilesRemovedCount":I
    goto :goto_0

    .line 1679
    .restart local v0    # "i":I
    .restart local v1    # "knoxWorkspaceCount":I
    .restart local v4    # "ui":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    sub-int v7, v2, v3

    sub-int/2addr v7, v1

    if-lt v7, v8, :cond_5

    .line 1680
    return v9

    .line 1685
    :cond_5
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1686
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 1687
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->canHaveProfile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_6

    monitor-exit v10

    .line 1688
    return v9

    .line 1690
    :cond_6
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v7

    sub-int v6, v7, v3

    .line 1693
    .local v6, "usersCountAfterRemoving":I
    if-eq v6, v8, :cond_7

    .line 1694
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-ge v6, v7, :cond_8

    move v7, v8

    :goto_2
    monitor-exit v10

    .line 1693
    return v7

    :cond_7
    move v7, v8

    goto :goto_2

    :cond_8
    move v7, v9

    .line 1694
    goto :goto_2

    .line 1685
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "usersCountAfterRemoving":I
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7
.end method

.method public canHaveRestrictedProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1049
    const-string/jumbo v2, "canHaveRestrictedProfile"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1050
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1051
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1052
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1055
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v2

    .line 1056
    return v1

    :cond_0
    monitor-exit v2

    .line 1053
    return v1

    .line 1059
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    monitor-exit v2

    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1050
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method cleanupPartialUsers()V
    .locals 8

    .prologue
    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v1, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 561
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 562
    .local v4, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 563
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 564
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_0

    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    monitor-exit v6

    .line 569
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 570
    .local v2, "partialsSize":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 571
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 572
    .restart local v3    # "ui":Landroid/content/pm/UserInfo;
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Removing partially created user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 573
    const-string/jumbo v7, " (name="

    .line 572
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 573
    iget-object v7, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 572
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 573
    const-string/jumbo v7, ")"

    .line 572
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 560
    .end local v0    # "i":I
    .end local v2    # "partialsSize":I
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    .end local v4    # "userSize":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 557
    .restart local v0    # "i":I
    .restart local v2    # "partialsSize":I
    .restart local v4    # "userSize":I
    :cond_3
    return-void
.end method

.method public clearSeedAccountData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3660
    const-string/jumbo v1, "Cannot clear seed account information"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3661
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3663
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3664
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3665
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v0, :cond_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    return-void

    .line 3666
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v3

    .line 3668
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v2

    .line 3659
    return-void

    .line 3663
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3661
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createKnoxContainer(Ljava/lang/String;IZZ)Landroid/content/pm/UserInfo;
    .locals 22
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentId"    # I
    .param p3, "isBBCContainer"    # Z
    .param p4, "isSecureFolder"    # Z

    .prologue
    .line 2736
    const-string/jumbo v16, "Only the system can create users"

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2737
    if-eqz p2, :cond_0

    .line 2738
    const-string/jumbo v16, "UserManagerService"

    const-string/jumbo v17, "Only user owner can have profiles"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    const/16 v16, 0x0

    return-object v16

    .line 2741
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v16

    .line 2742
    const-string/jumbo v17, "no_add_user"

    const/16 v18, 0x0

    .line 2741
    invoke-virtual/range {v16 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2743
    const-string/jumbo v16, "UserManagerService"

    const-string/jumbo v17, "Cannot add user. DISALLOW_ADD_USER is enabled."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    const/16 v16, 0x0

    return-object v16

    .line 2746
    :cond_1
    const v5, 0x10000060

    .line 2747
    .local v5, "flags":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2748
    .local v6, "ident":J
    const/4 v14, 0x0

    .line 2749
    .local v14, "userInfo":Landroid/content/pm/UserInfo;
    new-instance v12, Lcom/android/server/pm/UserManagerService$UserData;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2752
    .local v12, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2753
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2754
    const/4 v10, 0x0

    .line 2755
    .local v10, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v16, -0x2710

    move/from16 v0, p2

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    .line 2756
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v10

    .line 2757
    .local v10, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v10, :cond_2

    .line 2758
    const-string/jumbo v16, "UserManagerService"

    const-string/jumbo v19, "UserInfo for parent is null, hence exiting container creation!"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2759
    const/16 v16, 0x0

    .line 2801
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2759
    return-object v16

    .line 2762
    .end local v10    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2
    const/16 v16, 0x1

    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId(ZZZ)I

    move-result v13

    .line 2763
    .local v13, "userId":I
    new-instance v15, Landroid/content/pm/UserInfo;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v15, v13, v0, v1, v5}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2765
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .local v15, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_6
    iput v13, v15, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2767
    .local v8, "now":J
    const-wide v20, 0xdc46c32800L

    cmp-long v16, v8, v20

    if-lez v16, :cond_5

    .end local v8    # "now":J
    :goto_0
    iput-wide v8, v15, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2768
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/content/pm/UserInfo;->partial:Z

    .line 2769
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 2770
    iput-object v15, v12, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2772
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2773
    if-eqz v10, :cond_4

    .line 2774
    iget-object v0, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v16, v0

    const/16 v19, -0x2710

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 2775
    iget-object v0, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v16, v0

    iget-object v0, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2776
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2778
    :cond_3
    iget-object v0, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2780
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2781
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/content/pm/UserInfo;->partial:Z

    .line 2782
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2783
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2786
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2787
    .local v4, "emptyBundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2790
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2792
    .local v11, "restrictions":Landroid/os/Bundle;
    const-string/jumbo v16, "no_outgoing_beam"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2793
    const-string/jumbo v16, "no_add_user"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2794
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/android/server/pm/UserManagerService;->setKnoxRestrictions(Landroid/os/Bundle;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2801
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2803
    return-object v15

    .line 2767
    .end local v4    # "emptyBundle":Landroid/os/Bundle;
    .end local v11    # "restrictions":Landroid/os/Bundle;
    .restart local v8    # "now":J
    :cond_5
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .line 2753
    .end local v8    # "now":J
    .end local v13    # "userId":I
    .end local v15    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v14    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v16

    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_1
    :try_start_9
    monitor-exit v18

    throw v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2752
    :catchall_1
    move-exception v16

    :goto_2
    :try_start_a
    monitor-exit v17

    throw v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2800
    :catchall_2
    move-exception v16

    .line 2801
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2800
    throw v16

    .restart local v4    # "emptyBundle":Landroid/os/Bundle;
    .restart local v11    # "restrictions":Landroid/os/Bundle;
    .restart local v13    # "userId":I
    .restart local v15    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_3
    move-exception v16

    move-object v14, v15

    .end local v15    # "userInfo":Landroid/content/pm/UserInfo;
    .local v14, "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_3

    .line 2752
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_4
    move-exception v16

    move-object v14, v15

    .end local v15    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v14    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_2

    .line 2753
    .end local v4    # "emptyBundle":Landroid/os/Bundle;
    .end local v11    # "restrictions":Landroid/os/Bundle;
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_5
    move-exception v16

    move-object v14, v15

    .end local v15    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v14    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_1
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2544
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2545
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentUserId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2811
    const-string/jumbo v3, "setupRestrictedProfile"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2812
    const/16 v3, 0x8

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/pm/UserManagerService;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2813
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_0

    .line 2814
    return-object v4

    .line 2816
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2818
    .local v0, "identity":J
    :try_start_0
    const-string/jumbo v3, "no_modify_accounts"

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 2821
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2822
    const-string/jumbo v4, "location_mode"

    .line 2823
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    .line 2821
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2824
    const-string/jumbo v3, "no_share_location"

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2826
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2828
    return-object v2

    .line 2825
    :catchall_0
    move-exception v3

    .line 2826
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2825
    throw v3
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2550
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2552
    const/high16 v3, 0x10000

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    move v0, v1

    .line 2553
    .local v0, "isBMode":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2554
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2555
    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v2, "Cannot add BMode user. SUPPORTTWOPHONESERVICE is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    return-object v5

    .end local v0    # "isBMode":Z
    :cond_0
    move v0, v2

    .line 2552
    goto :goto_0

    .line 2558
    .restart local v0    # "isBMode":Z
    :cond_1
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2559
    const-string/jumbo v2, "persist.sys.show_multiuserui"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2560
    const-string/jumbo v2, "persist.sys.max_users"

    const-string/jumbo v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2566
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2570
    const/16 v1, -0x2710

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 2567
    :cond_3
    return-object v5
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3734
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.DUMP"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 3736
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Permission Denial: can\'t dump UserManager from from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3737
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 3736
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3738
    const-string/jumbo v10, ", uid="

    .line 3736
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3738
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3736
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3739
    const-string/jumbo v10, " without permission "

    .line 3736
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3740
    const-string/jumbo v10, "android.permission.DUMP"

    .line 3736
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3741
    return-void

    .line 3744
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3745
    .local v4, "now":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3746
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3747
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3748
    :try_start_1
    const-string/jumbo v9, "Users:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3749
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_9

    .line 3750
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3751
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v6, :cond_2

    .line 3749
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3754
    :cond_2
    iget-object v8, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3755
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v8, Landroid/content/pm/UserInfo;->id:I

    .line 3756
    .local v7, "userId":I
    const-string/jumbo v9, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3757
    const-string/jumbo v9, " serialNo="

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v8, Landroid/content/pm/UserInfo;->serialNumber:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 3758
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3759
    const-string/jumbo v9, " <removing> "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3761
    :cond_3
    iget-boolean v9, v8, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v9, :cond_4

    .line 3762
    const-string/jumbo v9, " <partial>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3764
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3765
    const-string/jumbo v9, "    Created: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3766
    iget-wide v12, v8, Landroid/content/pm/UserInfo;->creationTime:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_7

    .line 3767
    const-string/jumbo v9, "<unknown>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    :goto_2
    const-string/jumbo v9, "    Last logged in: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3775
    iget-wide v12, v8, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_8

    .line 3776
    const-string/jumbo v9, "<unknown>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3783
    :goto_3
    const-string/jumbo v9, "    Last logged in fingerprint: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3784
    iget-object v9, v8, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3785
    const-string/jumbo v9, "    Has profile owner: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3786
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Z)V

    .line 3787
    const-string/jumbo v9, "    Restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3788
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3790
    :try_start_2
    const-string/jumbo v13, "      "

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 3789
    move-object/from16 v0, p2

    invoke-static {v0, v13, v9}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3791
    const-string/jumbo v9, "    Device policy local restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3793
    const-string/jumbo v13, "      "

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 3792
    move-object/from16 v0, p2

    invoke-static {v0, v13, v9}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3794
    const-string/jumbo v9, "    Effective restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3796
    const-string/jumbo v13, "      "

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 3795
    move-object/from16 v0, p2

    invoke-static {v0, v13, v9}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit v12

    .line 3799
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 3800
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "    Account name: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3801
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3804
    :cond_5
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 3805
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "    Seed account name: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3806
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3807
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 3808
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "         account type: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3809
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3811
    :cond_6
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v9, :cond_1

    .line 3812
    const-string/jumbo v9, "         account options exist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3813
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 3747
    .end local v2    # "i":I
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userId":I
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit v11

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3746
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9

    .line 3769
    .restart local v2    # "i":I
    .restart local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7    # "userId":I
    .restart local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3770
    iget-wide v12, v8, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v12, v4, v12

    invoke-static {v12, v13, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3771
    const-string/jumbo v9, " ago"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3772
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3778
    :cond_8
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3779
    iget-wide v12, v8, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    sub-long v12, v4, v12

    invoke-static {v12, v13, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3780
    const-string/jumbo v9, " ago"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3781
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 3788
    :catchall_2
    move-exception v9

    monitor-exit v12

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userId":I
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_9
    :try_start_6
    monitor-exit v11

    .line 3818
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3819
    const-string/jumbo v9, "  Device policy global restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3820
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3822
    :try_start_7
    const-string/jumbo v9, "    "

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    .line 3821
    move-object/from16 v0, p2

    invoke-static {v0, v9, v12}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v11

    .line 3824
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3825
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  Global restrictions owner id:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3826
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3827
    const-string/jumbo v9, "  Guest restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3828
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3829
    :try_start_9
    const-string/jumbo v9, "    "

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    move-object/from16 v0, p2

    invoke-static {v0, v9, v12}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    monitor-exit v11

    .line 3831
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3832
    :try_start_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3833
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Device managed: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    monitor-exit v11

    .line 3835
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 3836
    :try_start_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Started users state: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    monitor-exit v11

    .line 3839
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3840
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  Max users: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3841
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  Supports switchable users: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3842
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  All guests ephemeral: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 3843
    const v12, 0x11200ae

    .line 3842
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    monitor-exit v10

    .line 3733
    return-void

    .line 3820
    :catchall_3
    move-exception v9

    :try_start_f
    monitor-exit v11

    throw v9

    .line 3828
    :catchall_4
    move-exception v9

    monitor-exit v11

    throw v9

    .line 3831
    :catchall_5
    move-exception v9

    monitor-exit v11

    throw v9

    .line 3835
    :catchall_6
    move-exception v9

    monitor-exit v11

    throw v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
.end method

.method public exists(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method finishRemoveUser(I)V
    .locals 12
    .param p1, "userHandle"    # I

    .prologue
    .line 3027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3029
    .local v10, "ident":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3030
    .local v1, "addedIntent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3031
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3032
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    .line 3034
    new-instance v4, Lcom/android/server/pm/UserManagerService$7;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/UserManagerService$7;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    .line 3054
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3031
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3056
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3023
    return-void

    .line 3055
    .end local v1    # "addedIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    .line 3056
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3055
    throw v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3157
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3162
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 3163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3166
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3168
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLP(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3164
    :cond_0
    const-string/jumbo v0, "get application restrictions for other users/apps"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    goto :goto_0

    .line 3166
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 776
    const-string/jumbo v1, "get the credential owner"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 778
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 779
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 780
    .local v0, "profileParent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 781
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    .line 786
    .end local v0    # "profileParent":Landroid/content/pm/UserInfo;
    :cond_1
    return p1

    .line 778
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1226
    const-string/jumbo v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1227
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v1

    .line 1228
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1227
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 6

    .prologue
    .line 612
    const-string/jumbo v3, "query users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 613
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 614
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 615
    .local v2, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 616
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 617
    .local v1, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    .line 618
    return-object v1

    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    monitor-exit v4

    .line 622
    const/4 v3, 0x0

    return-object v3

    .line 613
    .end local v0    # "i":I
    .end local v2    # "userSize":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getProfileIds(IZ)[I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .prologue
    .line 707
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getting profiles related to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 710
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 712
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 713
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 716
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 713
    return-object v2

    .line 712
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 715
    :catchall_1
    move-exception v2

    .line 716
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    throw v2
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 815
    const-string/jumbo v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 816
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    const/4 v2, 0x1

    .line 690
    .local v2, "returnFullInfo":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    if-eq p1, v3, :cond_0

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getting profiles related to user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 695
    .end local v2    # "returnFullInfo":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 697
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 698
    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(IZZ)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 701
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 698
    return-object v4

    .line 693
    .end local v0    # "ident":J
    .restart local v2    # "returnFullInfo":Z
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v2

    .local v2, "returnFullInfo":Z
    goto :goto_0

    .line 697
    .end local v2    # "returnFullInfo":Z
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 700
    :catchall_1
    move-exception v3

    .line 701
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    throw v3
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3633
    const-string/jumbo v1, "Cannot get seed account information"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3634
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3635
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3636
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 3634
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3651
    const-string/jumbo v1, "Cannot get seed account information"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3652
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3653
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3654
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 3652
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3642
    const-string/jumbo v1, "Cannot get seed account information"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3643
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3644
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3645
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 3643
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 580
    const-string/jumbo v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUserCreationTime(I)J
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    .line 3397
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3398
    .local v0, "callingUserId":I
    const/4 v2, 0x0

    .line 3399
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3400
    if-ne v0, p1, :cond_1

    .line 3401
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    monitor-exit v4

    .line 3409
    if-nez v2, :cond_2

    .line 3410
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "userHandle can only be the calling user or a managed profile associated with this user"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3403
    .restart local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3404
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v0, :cond_0

    .line 3405
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 3399
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3413
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    iget-wide v4, v2, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v4
.end method

.method public getUserHandle(I)I
    .locals 7
    .param p1, "userSerialNumber"    # I

    .prologue
    .line 3385
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3386
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    const/4 v2, 0x0

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget v1, v4, v2

    .line 3387
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3388
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget v6, v0, Landroid/content/pm/UserInfo;->serialNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, p1, :cond_0

    monitor-exit v3

    return v1

    .line 3386
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3391
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    .end local v1    # "userId":I
    :cond_1
    const/4 v2, -0x1

    monitor-exit v3

    return v2

    .line 3385
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "targetUserId"    # I

    .prologue
    const/4 v11, 0x0

    .line 1158
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1159
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1160
    .local v6, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_0

    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v7, :cond_1

    .line 1161
    :cond_0
    const-string/jumbo v7, "UserManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getUserIcon: unknown user #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 1162
    return-object v11

    .line 1165
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1166
    .local v1, "callingUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v0, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1167
    .local v0, "callingGroupId":I
    iget v5, v6, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1168
    .local v5, "targetGroupId":I
    const/16 v7, -0x2710

    if-eq v0, v7, :cond_4

    .line 1169
    if-ne v0, v5, :cond_3

    const/4 v4, 0x1

    .line 1170
    .local v4, "sameGroup":Z
    :goto_0
    if-eq v1, p1, :cond_2

    if-eqz v4, :cond_5

    .line 1174
    :cond_2
    :goto_1
    iget-object v7, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_6

    monitor-exit v8

    .line 1175
    return-object v11

    .line 1169
    .end local v4    # "sameGroup":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "sameGroup":Z
    goto :goto_0

    .line 1168
    .end local v4    # "sameGroup":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "sameGroup":Z
    goto :goto_0

    .line 1171
    :cond_5
    :try_start_2
    const-string/jumbo v7, "get the icon of a user who is not related"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1158
    .end local v0    # "callingGroupId":I
    .end local v1    # "callingUserId":I
    .end local v4    # "sameGroup":Z
    .end local v5    # "targetGroupId":I
    .end local v6    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1177
    .restart local v0    # "callingGroupId":I
    .restart local v1    # "callingUserId":I
    .restart local v4    # "sameGroup":Z
    .restart local v5    # "targetGroupId":I
    .restart local v6    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_6
    :try_start_3
    iget-object v3, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v3, "iconPath":Ljava/lang/String;
    monitor-exit v8

    .line 1182
    :try_start_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x10000000

    .line 1181
    invoke-static {v7, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    return-object v7

    .line 1183
    :catch_0
    move-exception v2

    .line 1184
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v7, "UserManagerService"

    const-string/jumbo v8, "Couldn\'t find icon file"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1186
    return-object v11
.end method

.method public getUserIconForBitmap(I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "targetUserId"    # I

    .prologue
    const/4 v11, 0x0

    .line 3878
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3879
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 3880
    .local v6, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_0

    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v7, :cond_1

    .line 3881
    :cond_0
    const-string/jumbo v7, "UserManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getUserIcon: unknown user #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 3882
    return-object v11

    .line 3885
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3887
    .local v1, "callingUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 3888
    .local v2, "callingUserInfo":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_2

    monitor-exit v8

    .line 3889
    return-object v11

    .line 3891
    :cond_2
    :try_start_2
    iget v0, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 3893
    .local v0, "callingGroupId":I
    iget v5, v6, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 3894
    .local v5, "targetGroupId":I
    const/16 v7, -0x2710

    if-eq v0, v7, :cond_7

    .line 3895
    if-ne v0, v5, :cond_6

    const/4 v4, 0x1

    .line 3896
    .local v4, "sameGroup":Z
    :goto_0
    if-eq v1, p1, :cond_3

    if-eqz v4, :cond_8

    .line 3901
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 3902
    .local v3, "isBModeUserExist":Z
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentBModeUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 3903
    const/4 v3, 0x1

    .line 3905
    :cond_4
    iget-object v7, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v7, :cond_c

    .line 3906
    if-eqz v3, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3907
    :cond_5
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3908
    const-string/jumbo v7, "UserIcon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "user Id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "primary user in BMode"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-static {p1, v7, v9}, Lcom/android/internal/util/UserIcons;->getDefaultUserIconForBMode(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    monitor-exit v8

    return-object v7

    .line 3895
    .end local v3    # "isBModeUserExist":Z
    .end local v4    # "sameGroup":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "sameGroup":Z
    goto :goto_0

    .line 3894
    .end local v4    # "sameGroup":Z
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "sameGroup":Z
    goto :goto_0

    .line 3897
    :cond_8
    :try_start_3
    const-string/jumbo v7, "get the icon of a user who is not related"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3878
    .end local v0    # "callingGroupId":I
    .end local v1    # "callingUserId":I
    .end local v2    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "sameGroup":Z
    .end local v5    # "targetGroupId":I
    .end local v6    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 3910
    .restart local v0    # "callingGroupId":I
    .restart local v1    # "callingUserId":I
    .restart local v2    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "isBModeUserExist":Z
    .restart local v4    # "sameGroup":Z
    .restart local v5    # "targetGroupId":I
    .restart local v6    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_9
    :try_start_4
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3911
    const-string/jumbo v7, "UserIcon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "user Id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "BMode user in BMode"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v7, v9}, Lcom/android/internal/util/UserIcons;->getDefaultUserIconForBMode(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    monitor-exit v8

    return-object v7

    .line 3916
    :cond_a
    :try_start_5
    const-string/jumbo v7, "UserIcon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "user Id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "load Default User Icon"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3917
    const/4 v7, 0x0

    invoke-static {p1, v7}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    monitor-exit v8

    return-object v7

    :cond_b
    monitor-exit v8

    .line 3920
    return-object v11

    :cond_c
    monitor-exit v8

    .line 3923
    return-object v11
.end method

.method public getUserIds()[I
    .locals 2

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1869
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1868
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getUserIds(Z)[I
    .locals 14
    .param p1, "excludeDying"    # Z

    .prologue
    .line 1876
    if-nez p1, :cond_0

    .line 1877
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v11

    return-object v11

    .line 1879
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    .local v0, "finalUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v11, :cond_1

    .line 1881
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v8

    .line 1882
    .local v8, "pList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "pInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 1883
    .local v6, "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    new-instance v11, Ljava/lang/Integer;

    iget v12, v6, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1886
    .end local v6    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v7    # "pInfo$iterator":Ljava/util/Iterator;
    .end local v8    # "pList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_1
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1887
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v11, v11

    if-ge v1, v11, :cond_3

    .line 1888
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    aget v10, v11, v1

    .line 1890
    .local v10, "userId":I
    const/16 v11, 0x64

    if-lt v10, v11, :cond_2

    const/16 v11, 0xc8

    if-gt v10, v11, :cond_2

    .line 1887
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1892
    :cond_2
    new-instance v11, Ljava/lang/Integer;

    iget-object v13, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    aget v13, v13, v1

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1886
    .end local v10    # "userId":I
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_3
    monitor-exit v12

    .line 1895
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    new-array v9, v11, [I

    .line 1896
    .local v9, "uIds":[I
    const/4 v4, 0x0

    .line 1897
    .local v4, "index":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "id$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1898
    .local v2, "id":Ljava/lang/Integer;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v9, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_3

    .line 1900
    .end local v2    # "id":Ljava/lang/Integer;
    :cond_4
    return-object v9
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 989
    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 990
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 991
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .locals 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1368
    const-string/jumbo v2, "getUserRestrictionSource"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1369
    const/4 v1, 0x0

    .line 1372
    .local v1, "result":I
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1373
    return v1

    .line 1376
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1377
    const/4 v1, 0x1

    .line 1380
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1381
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1382
    .local v0, "localRestrictions":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1383
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1382
    if-eqz v2, :cond_2

    .line 1386
    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    if-ne v2, p2, :cond_4

    .line 1387
    or-int/lit8 v1, v1, 0x2

    .line 1392
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1393
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1392
    if-eqz v2, :cond_3

    .line 1394
    or-int/lit8 v1, v1, 0x2

    :cond_3
    monitor-exit v3

    .line 1398
    return v1

    .line 1389
    :cond_4
    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 1380
    .end local v0    # "localRestrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1409
    const/4 v0, 0x0

    .line 1410
    .local v0, "ui":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1411
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "ui":Landroid/content/pm/UserInfo;
    monitor-exit v1

    .line 1414
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1415
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v1

    .line 1410
    .local v0, "ui":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 1419
    .local v0, "ui":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getUserSerialNumber(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 3377
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3378
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    return v0

    .line 3379
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    .line 3377
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 7
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    const-string/jumbo v4, "query users"

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 671
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 672
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 673
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 674
    .local v2, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 675
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 676
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v4, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_1

    .line 674
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 680
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 671
    .end local v0    # "i":I
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "userSize":I
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v0    # "i":I
    .restart local v2    # "userSize":I
    .restart local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_3
    monitor-exit v5

    .line 683
    return-object v3
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1424
    const-string/jumbo v2, "hasBaseUserRestriction"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1425
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1426
    return v1

    .line 1428
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1429
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1430
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :cond_1
    monitor-exit v2

    return v1

    .line 1428
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1346
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1347
    return v1

    .line 1349
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1350
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method isInitialized(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 3870
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isManagedProfile(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1024
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1025
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1034
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1035
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1036
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    :goto_1
    monitor-exit v3

    return v2

    .line 1026
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1027
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupLP(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1028
    new-instance v2, Ljava/lang/SecurityException;

    .line 1029
    const-string/jumbo v4, "You need MANAGE_USERS permission to: check if specified user a managed profile outside your profile group"

    .line 1028
    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 1036
    .restart local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 1034
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isQuietModeEnabled(I)Z
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 911
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 913
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 914
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "info":Landroid/content/pm/UserInfo;
    :try_start_2
    monitor-exit v1

    .line 916
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    monitor-exit v2

    return v1

    .line 913
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v1

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 911
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 917
    .restart local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1
.end method

.method public isRestricted()Z
    .locals 2

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1043
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1042
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSameProfileGroup(II)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .prologue
    .line 791
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 792
    :cond_0
    const-string/jumbo v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupLP(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 793
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public makeInitialized(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1190
    const-string/jumbo v2, "makeInitialized"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1191
    const/4 v0, 0x0

    .line 1193
    .local v0, "scheduleWriteUser":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1194
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1195
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_1

    .line 1196
    :cond_0
    const-string/jumbo v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1197
    return-void

    .line 1199
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_2

    .line 1200
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/content/pm/UserInfo;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    const/4 v0, 0x1

    :cond_2
    monitor-exit v3

    .line 1204
    if-eqz v0, :cond_3

    .line 1205
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1189
    :cond_3
    return-void

    .line 1193
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public markGuestForDeletion(I)Z
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2871
    const-string/jumbo v3, "Only the system can remove users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2872
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    .line 2873
    const-string/jumbo v4, "no_remove_user"

    .line 2872
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2874
    const-string/jumbo v3, "UserManagerService"

    const-string/jumbo v4, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    return v6

    .line 2878
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2881
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2882
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2883
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2884
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2885
    return v6

    .line 2884
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :try_start_6
    monitor-exit v5

    .line 2888
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2889
    return v6

    .line 2882
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v3

    :try_start_8
    monitor-exit v5

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2881
    :catchall_1
    move-exception v3

    :try_start_9
    monitor-exit v4

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2902
    :catchall_2
    move-exception v3

    .line 2903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2902
    throw v3

    .line 2896
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    :try_start_a
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2899
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 2900
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2905
    return v7
.end method

.method public onBeforeStartUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 3444
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserSerialNumber(I)I

    move-result v1

    .line 3445
    .local v1, "userSerial":I
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, v1, v3}, Lcom/android/server/pm/PackageManagerService;->prepareUserData(III)V

    .line 3446
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(II)V

    .line 3448
    if-eqz p1, :cond_0

    .line 3449
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3450
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3452
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3453
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3443
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    return-void

    .line 3449
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 3454
    .restart local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->onBeforeUserStartUninitialized(I)V

    goto :goto_0
.end method

.method public onBeforeUnlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x2

    .line 3464
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserSerialNumber(I)I

    move-result v0

    .line 3465
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->prepareUserData(III)V

    .line 3466
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(II)V

    .line 3463
    return-void
.end method

.method onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I
    .locals 4
    .param p1, "shell"    # Lcom/android/server/pm/UserManagerService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 3700
    if-nez p2, :cond_0

    .line 3701
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 3704
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 3706
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v2, "list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3708
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->runList(Ljava/io/PrintWriter;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3710
    :catch_0
    move-exception v0

    .line 3711
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3713
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 3696
    new-instance v0, Lcom/android/server/pm/UserManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$Shell;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 3695
    return-void
.end method

.method public onUserLoggedIn(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 3474
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3475
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 3476
    :cond_0
    const-string/jumbo v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userForeground: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    return-void

    .line 3480
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3481
    .local v0, "now":J
    const-wide v4, 0xdc46c32800L

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 3482
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v0, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 3484
    :cond_2
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 3485
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3473
    return-void
.end method

.method public removeUser(I)Z
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2915
    const-string/jumbo v10, "UserManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeUser() : userHandle : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    const-string/jumbo v10, "Only the system can remove users"

    invoke-static {v10}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2917
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v10

    .line 2918
    const-string/jumbo v11, "no_remove_user"

    .line 2917
    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2919
    const-string/jumbo v8, "UserManagerService"

    const-string/jumbo v10, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    return v9

    .line 2923
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2926
    .local v4, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 2927
    .local v2, "currentUser":I
    if-ne v2, p1, :cond_1

    .line 2928
    const-string/jumbo v8, "UserManagerService"

    const-string/jumbo v10, "Current user cannot be removed"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3019
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2929
    return v9

    .line 2931
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2932
    :try_start_2
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2933
    :try_start_3
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v12, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2934
    .local v7, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_2

    if-nez v7, :cond_3

    :cond_2
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3019
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2935
    return v9

    .line 2934
    :cond_3
    :try_start_6
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 2940
    iget-object v12, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v12

    if-nez v12, :cond_4

    .line 2941
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2942
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2950
    :cond_4
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v13, 0x1

    invoke-virtual {v12, p1, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2954
    :try_start_8
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v11, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2961
    :goto_0
    :try_start_9
    iget-object v11, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/content/pm/UserInfo;->partial:Z

    .line 2964
    iget-object v11, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v11, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v11, Landroid/content/pm/UserInfo;->flags:I

    .line 2965
    invoke-direct {p0, v7}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    monitor-exit v10

    .line 2968
    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v11, -0x2710

    if-eq v10, v11, :cond_5

    .line 2969
    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    .line 2968
    if-eqz v10, :cond_5

    .line 2972
    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v11, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v10, v11}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V

    .line 2975
    :cond_5
    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2976
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2977
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v11

    if-ne v11, v8, :cond_6

    .line 2978
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 2979
    const v12, 0x10e0089

    .line 2978
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2980
    .local v1, "config_MaxUsers":I
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 2981
    const v12, 0x1120077

    .line 2980
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2982
    .local v0, "config_EnableUI":Z
    const-string/jumbo v11, "persist.sys.show_multiuserui"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    const-string/jumbo v11, "persist.sys.max_users"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local v0    # "config_EnableUI":Z
    .end local v1    # "config_MaxUsers":I
    :cond_6
    :try_start_c
    monitor-exit v10

    .line 2989
    :cond_7
    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2990
    const-string/jumbo v9, "UserManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set handler post : removeUserState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v10, p0, p1}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 3019
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2998
    return v8

    :cond_8
    :try_start_d
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 3019
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2943
    return v9

    .line 2932
    .end local v7    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v8

    :try_start_f
    monitor-exit v11

    throw v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 2931
    :catchall_1
    move-exception v8

    :try_start_10
    monitor-exit v10

    throw v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 3018
    .end local v2    # "currentUser":I
    :catchall_2
    move-exception v8

    .line 3019
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3018
    throw v8

    .line 2955
    .restart local v2    # "currentUser":I
    .restart local v7    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catch_0
    move-exception v3

    .line 2956
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string/jumbo v11, "UserManagerService"

    const-string/jumbo v12, "Unable to notify AppOpsService of removing user"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_0

    .line 2976
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v8

    :try_start_12
    monitor-exit v10

    throw v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 3004
    :cond_9
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    .line 3005
    new-instance v11, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v11, p0}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 3004
    const/4 v12, 0x1

    invoke-interface {v10, p1, v12, v11}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move-result v6

    .line 3017
    .local v6, "res":I
    if-nez v6, :cond_a

    .line 3019
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3017
    return v8

    .line 3014
    .end local v6    # "res":I
    :catch_1
    move-exception v3

    .line 3019
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3015
    return v9

    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v6    # "res":I
    :cond_a
    move v8, v9

    .line 3017
    goto :goto_1
.end method

.method public restoreKnoxUser(ILjava/lang/String;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 4150
    const v0, 0x10000030

    .line 4152
    .local v0, "flags":I
    new-instance v3, Landroid/content/pm/UserInfo;

    invoke-direct {v3, p1, p2, v4, v0}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 4153
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    new-instance v2, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v2, v4}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4154
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4155
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput p1, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 4156
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 4158
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4159
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v6, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 4163
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4164
    .local v1, "restrictions":Landroid/os/Bundle;
    const-string/jumbo v4, "no_outgoing_beam"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4165
    const-string/jumbo v4, "no_add_user"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4166
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4167
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget-object v6, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 4170
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 4171
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4172
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4173
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v5

    .line 4149
    return-void

    .line 4158
    .end local v1    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 4166
    .restart local v1    # "restrictions":Landroid/os/Bundle;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 4171
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 998
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1000
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 1001
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "there is no UserInfo for userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1004
    :cond_0
    new-instance v1, Landroid/content/pm/SemUserInfo;

    invoke-direct {v1, v0}, Landroid/content/pm/SemUserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    return-object v1
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 3175
    const-string/jumbo v1, "set application restrictions"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 3176
    if-eqz p2, :cond_0

    .line 3177
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 3179
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3180
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3181
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 3189
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3190
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3191
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3192
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3174
    return-void

    .line 3184
    .end local v0    # "changeIntent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLP(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3179
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .prologue
    .line 1234
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1235
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v1

    .line 1236
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 1237
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1239
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1240
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    .line 1233
    return-void

    .line 1235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1239
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "local"    # Landroid/os/Bundle;
    .param p3, "global"    # Landroid/os/Bundle;

    .prologue
    .line 1249
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    const/4 v0, 0x0

    .line 1252
    .local v0, "globalChanged":Z
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1253
    if-eqz p3, :cond_7

    .line 1256
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    .line 1255
    invoke-static {v3, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x0

    .line 1257
    :goto_0
    if-eqz v0, :cond_0

    .line 1258
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    .line 1262
    :cond_0
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    .line 1274
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1275
    .local v2, "prev":Landroid/os/Bundle;
    invoke-static {v2, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v1, 0x0

    .line 1276
    .local v1, "localChanged":Z
    :goto_2
    if-eqz v1, :cond_2

    .line 1277
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v4

    .line 1288
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1289
    if-eqz v1, :cond_3

    .line 1290
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1292
    :cond_3
    if-eqz v0, :cond_4

    .line 1293
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    monitor-exit v4

    .line 1297
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1298
    if-eqz v0, :cond_9

    .line 1299
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_5
    :goto_3
    monitor-exit v4

    .line 1248
    return-void

    .line 1255
    .end local v1    # "localChanged":Z
    .end local v2    # "prev":Landroid/os/Bundle;
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 1264
    :cond_7
    :try_start_3
    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    if-ne v3, p1, :cond_1

    .line 1269
    const/16 v3, -0x2710

    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1252
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1275
    .restart local v2    # "prev":Landroid/os/Bundle;
    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    .line 1288
    .restart local v1    # "localChanged":Z
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1300
    :cond_9
    if-eqz v1, :cond_5

    .line 1301
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 1297
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setKnoxRestrictions(Landroid/os/Bundle;I)V
    .locals 6
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .prologue
    .line 1472
    const-string/jumbo v3, "setKnoxRestrictions"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1473
    const-string/jumbo v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " set knox restrictions for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    if-nez p1, :cond_0

    .line 1476
    const-string/jumbo v3, "UserManagerService"

    const-string/jumbo v4, "null restrictions for setKnoxRestrictions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    return-void

    .line 1479
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1480
    .local v2, "restrictionsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1481
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v0, v3, p2}, Lcom/android/server/pm/UserManagerService;->setKnoxRestriction(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 1471
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setQuietModeEnabled(IZ)V
    .locals 10
    .param p1, "userHandle"    # I
    .param p2, "enableQuietMode"    # Z

    .prologue
    .line 870
    const-string/jumbo v6, "silence profile"

    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 871
    const/4 v0, 0x0

    .line 873
    .local v0, "changed":Z
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 874
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 875
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 876
    .local v5, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "parent":Landroid/content/pm/UserInfo;
    :try_start_2
    monitor-exit v8

    .line 879
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 882
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    if-eq v6, p2, :cond_0

    .line 883
    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v6, v6, 0x80

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 884
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 885
    const/4 v0, 0x1

    :cond_0
    monitor-exit v7

    .line 888
    if-eqz v0, :cond_1

    .line 889
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 891
    .local v2, "identity":J
    if-eqz p2, :cond_3

    .line 892
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v6, p1, v7, v8}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    .line 893
    const-class v6, Landroid/app/ActivityManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 901
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 904
    :goto_1
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {p0, v6, v7, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    .line 869
    .end local v2    # "identity":J
    :cond_1
    return-void

    .line 874
    .end local v4    # "parent":Landroid/content/pm/UserInfo;
    .end local v5    # "profile":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v8

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 873
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 880
    .restart local v4    # "parent":Landroid/content/pm/UserInfo;
    .restart local v5    # "profile":Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not a profile"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 896
    .restart local v2    # "identity":J
    :cond_3
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 898
    :catch_0
    move-exception v1

    .line 899
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v6, "UserManagerService"

    const-string/jumbo v7, "fail to start/stop user for quiet mode"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 901
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 900
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v6

    .line 901
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    throw v6
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;
    .param p5, "persist"    # Z

    .prologue
    .line 3611
    const-string/jumbo v1, "Require MANAGE_USERS permission to set user seed data"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3612
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3614
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3615
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3616
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v0, :cond_0

    .line 3617
    const-string/jumbo v1, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No such user for settings seed data u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 3618
    return-void

    .line 3620
    :cond_0
    :try_start_3
    iput-object p2, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 3621
    iput-object p3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 3622
    iput-object p4, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 3623
    iput-boolean p5, v0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v3

    .line 3625
    if-eqz p5, :cond_1

    .line 3626
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    monitor-exit v2

    .line 3610
    return-void

    .line 3614
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3612
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 588
    const-string/jumbo v3, "set user account"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 589
    const/4 v2, 0x0

    .line 590
    .local v2, "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 591
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 592
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 593
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v1, :cond_0

    .line 594
    const-string/jumbo v3, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "User not found for setting user account: u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 595
    return-void

    .line 597
    :cond_0
    :try_start_3
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 598
    .local v0, "currentAccount":Ljava/lang/String;
    invoke-static {v0, p2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 599
    iput-object p2, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 600
    move-object v2, v1

    .end local v2    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    :try_start_4
    monitor-exit v5

    .line 604
    if-eqz v2, :cond_2

    .line 605
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    monitor-exit v4

    .line 587
    return-void

    .line 591
    .end local v0    # "currentAccount":Ljava/lang/String;
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v5

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 590
    .end local v2    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setUserCCMProvisioned(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 842
    const-string/jumbo v1, "ccm provisioned"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 843
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 844
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 845
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 846
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    .line 847
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 841
    return-void

    .line 843
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUserEnabled(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 974
    const-string/jumbo v1, "enable user"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 975
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 977
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 978
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "info":Landroid/content/pm/UserInfo;
    :try_start_2
    monitor-exit v1

    .line 980
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    .line 973
    return-void

    .line 977
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v1

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 975
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 981
    .restart local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_4
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 982
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1138
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1139
    const-string/jumbo v0, "no_set_user_icon"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "Cannot set user icon. DISALLOW_SET_USER_ICON is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1137
    return-void
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1113
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    const/16 v2, 0xc8

    if-gt p1, v2, :cond_0

    .line 1114
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not change username for this user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return-void

    .line 1117
    :cond_0
    const-string/jumbo v2, "rename users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1118
    const/4 v0, 0x0

    .line 1119
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1120
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 1121
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_2

    .line 1122
    :cond_1
    const-string/jumbo v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1123
    return-void

    .line 1125
    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    :goto_0
    monitor-exit v3

    .line 1131
    if-eqz v0, :cond_4

    .line 1132
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    .line 1112
    :cond_4
    return-void

    .line 1126
    :cond_5
    :try_start_2
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1127
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1128
    const/4 v0, 0x1

    goto :goto_0

    .line 1119
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1436
    const-string/jumbo v2, "setUserRestriction"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1439
    const/4 v1, 0x0

    .line 1440
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1441
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "ui":Landroid/content/pm/UserInfo;
    monitor-exit v2

    .line 1443
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1444
    return-void

    .line 1440
    .local v1, "ui":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 1448
    .local v1, "ui":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1449
    return-void

    .line 1451
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1455
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1454
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1456
    .local v0, "newRestrictions":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1458
    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 1435
    return-void

    .line 1451
    .end local v0    # "newRestrictions":Landroid/os/Bundle;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3675
    const-string/jumbo v3, "Cannot check seed account information"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3676
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3677
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3678
    .local v2, "userSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 3679
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3680
    .local v0, "data":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3678
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3681
    :cond_1
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3684
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 3687
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .end local v0    # "data":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2
    monitor-exit v4

    .line 3690
    const/4 v3, 0x0

    return v3

    .line 3676
    .end local v1    # "i":I
    .end local v2    # "userSize":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method systemReady()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 538
    const-string/jumbo v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 537
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 540
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 541
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 544
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 545
    .local v0, "currentGuestUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 546
    const-string/jumbo v1, "no_config_wifi"

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    .line 545
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 553
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 554
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 552
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 536
    return-void

    .line 540
    .end local v0    # "currentGuestUser":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 550
    .restart local v0    # "currentGuestUser":Landroid/content/pm/UserInfo;
    :cond_1
    const-string/jumbo v1, "no_config_wifi"

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto :goto_0
.end method

.method public trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z
    .locals 10
    .param p1, "userHandle"    # I
    .param p2, "target"    # Landroid/content/IntentSender;

    .prologue
    const/4 v9, 0x0

    .line 925
    const-string/jumbo v6, "silence profile"

    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 926
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 927
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 933
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 936
    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 937
    const-string/jumbo v7, "keyguard"

    .line 936
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 941
    .local v1, "km":Landroid/app/KeyguardManager;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 943
    .local v5, "unlockIntent":Landroid/content/Intent;
    if-nez v5, :cond_1

    .line 967
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 944
    return v9

    .line 929
    .end local v1    # "km":Landroid/app/KeyguardManager;
    .end local v2    # "identity":J
    .end local v5    # "unlockIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, v9}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZ)V

    .line 930
    const/4 v6, 0x1

    return v6

    .line 946
    .restart local v1    # "km":Landroid/app/KeyguardManager;
    .restart local v2    # "identity":J
    .restart local v5    # "unlockIntent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 947
    const-string/jumbo v6, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    .line 946
    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 948
    .local v0, "callBackIntent":Landroid/content/Intent;
    if-eqz p2, :cond_2

    .line 949
    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 951
    :cond_2
    const-string/jumbo v6, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 952
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 955
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 956
    const/4 v7, 0x0

    .line 958
    const/high16 v8, 0x54000000

    .line 954
    invoke-static {v6, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 963
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 964
    const/high16 v6, 0x10800000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 965
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 969
    return v9

    .line 966
    .end local v0    # "callBackIntent":Landroid/content/Intent;
    .end local v1    # "km":Landroid/app/KeyguardManager;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "unlockIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v6

    .line 967
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 966
    throw v6
.end method
