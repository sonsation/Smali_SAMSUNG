.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$10;,
        Lcom/android/server/net/NetworkPolicyManagerService$11;,
        Lcom/android/server/net/NetworkPolicyManagerService$12;,
        Lcom/android/server/net/NetworkPolicyManagerService$13;,
        Lcom/android/server/net/NetworkPolicyManagerService$14;,
        Lcom/android/server/net/NetworkPolicyManagerService$15;,
        Lcom/android/server/net/NetworkPolicyManagerService$16;,
        Lcom/android/server/net/NetworkPolicyManagerService$17;,
        Lcom/android/server/net/NetworkPolicyManagerService$18;,
        Lcom/android/server/net/NetworkPolicyManagerService$19;,
        Lcom/android/server/net/NetworkPolicyManagerService$1;,
        Lcom/android/server/net/NetworkPolicyManagerService$20;,
        Lcom/android/server/net/NetworkPolicyManagerService$21;,
        Lcom/android/server/net/NetworkPolicyManagerService$22;,
        Lcom/android/server/net/NetworkPolicyManagerService$23;,
        Lcom/android/server/net/NetworkPolicyManagerService$2;,
        Lcom/android/server/net/NetworkPolicyManagerService$3;,
        Lcom/android/server/net/NetworkPolicyManagerService$4;,
        Lcom/android/server/net/NetworkPolicyManagerService$5;,
        Lcom/android/server/net/NetworkPolicyManagerService$6;,
        Lcom/android/server/net/NetworkPolicyManagerService$7;,
        Lcom/android/server/net/NetworkPolicyManagerService$8;,
        Lcom/android/server/net/NetworkPolicyManagerService$9;,
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;,
        Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final APPLICATION_RUNNING:I = 0x1

.field private static final APPLICATION_START:I = 0x0

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final DB_RESTRICT_BACKGROUND_DURING_LOWPOWER_MODE:Ljava/lang/String; = "low_power_back_data_off"

.field private static final DB_RESTRICT_BACKGROUND_DURING_MAX_LOWPOWER_MODE:Ljava/lang/String; = "ultra_power_mode_back_data_off"

.field private static final DB_ULTRA_POWER_SAVING_MODE:Ljava/lang/String; = "ultra_powersaving_mode"

.field private static final DB_USER_RESTRICT_BACKGROUND_UIDLIST:Ljava/lang/String; = "user_restrict_background_uidlist"

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_CHECK_BACKGROUND_RESTRICTTION_ON_PSM:I = 0x3ed

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_POWER_SAVE_WHITELIST_CHANGED:I = 0x3eb

.field private static final MSG_REMOVE_INTERFACE_QUOTA:I = 0xb

.field private static final MSG_RESTRICT_BACKGROUND_BLACKLIST_CHANGED:I = 0xc

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RESTRICT_BACKGROUND_WHITELIST_CHANGED:I = 0x9

.field private static final MSG_ROAMING_STATE_CHANGED:I = 0x3ec

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final MSG_SET_DEVICE_IDLE_MODE:I = 0x3ee

.field private static final MSG_SHOW_FIREWALL_PERMISSION_TOAST:I = 0xd

.field private static final MSG_UID_GONE:I = 0x3ea

.field private static final MSG_UID_STATE_CHANGED:I = 0x3e9

.field private static final MSG_UPDATE_INTERFACE_QUOTA:I = 0xa

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_FIREWALL_POLICY:Ljava/lang/String; = "firewall-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict-background"

.field private static final TAG_REVOKED_RESTRICT_BACKGROUND:Ljava/lang/String; = "revoked-restrict-background"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_UID_ROAMING_POLICY:Ljava/lang/String; = "uid-roaming-policy"

.field private static final TAG_WHITELIST:Ljava/lang/String; = "whitelist"

.field private static final TIME_CACHE_MAX_AGE:J = 0x5265c00L

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field public static final TYPE_WARNING:I = 0x1

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xa

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa

.field private static mRoamingState:Z

.field private static mRrEnabledInCscChameleon:Z


# instance fields
.field volatile DataWarningFlag:Z

.field private firewallMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBackGroundDataSetObserver:Landroid/database/ContentObserver;

.field private mChargingState:Z

.field private final mChargingStateReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityListener:Landroid/net/INetworkPolicyListener;

.field private final mContext:Landroid/content/Context;

.field private final mCscChameleonUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

.field private mDensityDpi:I

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field volatile mDeviceIdleMode:Z

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field final mFirewallRules:Landroid/util/SparseIntArray;

.field final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mHasEpdgCall:Z

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private volatile mIsVideoCall:Z

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleReceiver:Landroid/content/BroadcastReceiver;

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final mNetworkRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageMonitor:Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mPowerManager:Landroid/os/IPowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field private mProxSensorScreenOff:Z

.field private mRRWhiteListApplied:Z

.field volatile mRestrictBackground:Z

.field private final mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

.field private final mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

.field private mRestrictBgInLowPowerObserver:Landroid/database/ContentObserver;

.field private mRestrictBgInMaxLowPowerObserver:Landroid/database/ContentObserver;

.field volatile mRestrictPower:Z

.field private mRoamingAppliedReason:Ljava/lang/String;

.field private mRoamingReduction:Z

.field private mRoamingReductionPolicy:Landroid/util/SparseIntArray;

.field private mRoamingReductionRule:Landroid/util/SparseBooleanArray;

.field final mRulesLock:Ljava/lang/Object;

.field volatile mScreenOn:Z

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

.field private final mTime:Landroid/util/TrustedTime;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;

.field final mUidState:Landroid/util/SparseIntArray;

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mUserRestrictBackgroundUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCallLimitAlreadySent:Z

.field private mVideoCallWarningAlreadySent:Z

.field private final mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConnected:Z

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private mcfgNetTypeCap:Ljava/lang/String;

.field private volatile mdeleteNotifications:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/PowerManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get13()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z

    return v0
.end method

.method static synthetic -get14()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRrEnabledInCscChameleon:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConnected:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/net/NetworkPolicyManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDensityDpi:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/net/NetworkPolicyManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDensityDpi:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    return p1
.end method

.method static synthetic -set4(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z

    return p0
.end method

.method static synthetic -set5(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRrEnabledInCscChameleon:Z

    return p0
.end method

.method static synthetic -set6(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserRestrictBackgroundUidList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "capability"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getLinkPropertiesForNetworkType(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveEntPolicyLocked()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)V
    .locals 0
    .param p1, "applicationStatus"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->handleCheckFireWallPermission(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallPolicyLocked(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidState(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRoamingReductionRules(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->changePowerSaveMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/net/NetworkPolicyManagerService;IIZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidRoamingPolicyUncheckedLocked(IIZ)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidLocked(I)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p1, "restrictedNetworksChanged"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsLocked(I)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeLocked()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidState(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/net/NetworkPolicyManagerService;IZZ)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z
    .param p3, "updateNow"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidLocked(IZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getBackgroundDataRestrictList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "blacklisted"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundBlacklistChanged(Landroid/net/INetworkPolicyListener;IZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "whitelisted"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundWhitelistChanged(Landroid/net/INetworkPolicyListener;IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z

    .line 394
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRrEnabledInCscChameleon:Z

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 541
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 540
    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    .line 539
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p6, "time"    # Landroid/util/TrustedTime;
    .param p7, "systemDir"    # Ljava/io/File;
    .param p8, "suppressDefaultPolicy"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 548
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 392
    iput-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 395
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    .line 396
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    .line 397
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRRWhiteListApplied:Z

    .line 398
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    .line 399
    iput-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingAppliedReason:Ljava/lang/String;

    .line 400
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConnected:Z

    .line 417
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    .line 424
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->DataWarningFlag:Z

    .line 427
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    .line 430
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mdeleteNotifications:Z

    .line 434
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 436
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    .line 439
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 441
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 443
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 444
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 445
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 448
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 450
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    .line 451
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->firewallMap:Ljava/util/HashMap;

    .line 452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserRestrictBackgroundUidList:Ljava/util/List;

    .line 459
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 466
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 468
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 473
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 479
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 478
    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 486
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 485
    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 489
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 491
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 494
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 497
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 503
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 515
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    .line 516
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    .line 517
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    .line 518
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    .line 522
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z

    .line 526
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mcfgNetTypeCap:Ljava/lang/String;

    .line 592
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 616
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCscChameleonUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 979
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1004
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 1022
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1092
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    .line 1103
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 1112
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 1175
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 1193
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1226
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 1244
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 1259
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 1273
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 1300
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1345
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1344
    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1675
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$17;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1719
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$18;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$18;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    .line 1729
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$19;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$19;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 2700
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$20;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService$20;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerObserver:Landroid/database/ContentObserver;

    .line 2709
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$21;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService$21;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInMaxLowPowerObserver:Landroid/database/ContentObserver;

    .line 2750
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$22;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService$22;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackGroundDataSetObserver:Landroid/database/ContentObserver;

    .line 4774
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$23;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$23;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 552
    const-string/jumbo v2, "missing context"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 553
    const-string/jumbo v2, "missing activityManager"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 554
    const-string/jumbo v2, "missing powerManager"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IPowerManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    .line 555
    const-string/jumbo v2, "missing networkStats"

    invoke-static {p4, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkStatsService;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 556
    const-string/jumbo v2, "missing networkManagement"

    invoke-static {p5, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 558
    const-string/jumbo v2, "deviceidle"

    .line 557
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 559
    const-string/jumbo v2, "missing TrustedTime"

    invoke-static {p6, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/TrustedTime;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    .line 560
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 561
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 563
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "NetworkPolicy"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 564
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 565
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 567
    iput-boolean p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 569
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "netpolicy.xml"

    invoke-direct {v3, p7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 571
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 573
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;

    invoke-direct {v2, p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageMonitor:Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;

    .line 576
    const-class v2, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 577
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-direct {v3, p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;)V

    .line 576
    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "cscAllowRRList":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    .line 582
    const-string/jumbo v3, "CscFeature_Common_ConfigAllowedPackagesDuringRoamingReduction"

    .line 581
    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "cscAllowRRList":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 585
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    .line 551
    :cond_0
    return-void
.end method

.method private addDefaultRestrictBackgroundWhitelistUidsLocked(I)Z
    .locals 17
    .param p1, "userId"    # I

    .prologue
    .line 687
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v12

    .line 688
    .local v12, "sysConfig":Lcom/android/server/SystemConfig;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 689
    .local v11, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v12}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    move-result-object v2

    .line 690
    .local v2, "allowDataUsage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 691
    .local v5, "changed":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v14

    if-ge v8, v14, :cond_2

    .line 692
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 698
    .local v10, "pkg":Ljava/lang/String;
    const/high16 v14, 0x100000

    :try_start_0
    move/from16 v0, p1

    invoke-virtual {v11, v10, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 704
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v14

    if-nez v14, :cond_1

    .line 705
    const-string/jumbo v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "pm.getApplicationInfoAsUser() returned non-privileged app: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 699
    :catch_0
    move-exception v7

    .line 701
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "No ApplicationInfo for package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 708
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v14, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p1

    invoke-static {v0, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 710
    .local v13, "uid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/4 v15, 0x1

    invoke-virtual {v14, v13, v15}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 715
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 716
    const-string/jumbo v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "adding default package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " (uid "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " for user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 717
    const-string/jumbo v16, ") to restrict background whitelist"

    .line 716
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/4 v15, 0x1

    invoke-virtual {v14, v13, v15}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 719
    const/4 v5, 0x1

    goto :goto_1

    .line 724
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v13    # "uid":I
    :cond_2
    const/4 v6, 0x0

    .line 725
    .local v6, "cscAllowDataSaverList":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    .line 726
    const-string/jumbo v15, "CscFeature_Common_ConfigAllowedPackagesDuringDataSaving"

    .line 725
    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 728
    .local v6, "cscAllowDataSaverList":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_4

    .line 729
    const-string/jumbo v14, ","

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 731
    .local v9, "listApps":[Ljava/lang/String;
    const-string/jumbo v14, "NetworkPolicy"

    const-string/jumbo v15, "Apply DataSaver Whitelist."

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v8, 0x0

    :goto_2
    array-length v14, v9

    if-ge v8, v14, :cond_5

    .line 733
    aget-object v14, v9, v8

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 734
    .restart local v10    # "pkg":Ljava/lang/String;
    const-string/jumbo v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "package name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v14, 0x0

    :try_start_1
    move/from16 v0, p1

    invoke-virtual {v11, v10, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 738
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_3

    .line 740
    iget v14, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p1

    invoke-static {v0, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 741
    .local v4, "appid":I
    const-string/jumbo v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "package uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/4 v15, 0x1

    invoke-virtual {v14, v4, v15}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 748
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v14

    if-nez v14, :cond_3

    .line 749
    const-string/jumbo v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "adding default package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " (uid "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " for user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 750
    const-string/jumbo v16, ") to restrict background whitelist"

    .line 749
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/4 v15, 0x1

    invoke-virtual {v14, v4, v15}, Landroid/util/SparseBooleanArray;->append(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 752
    const/4 v5, 0x1

    .line 732
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "appid":I
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 755
    :catch_1
    move-exception v7

    .line 756
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "No ApplicationInfo for package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 761
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "listApps":[Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_4
    const-string/jumbo v14, "NetworkPolicy"

    const-string/jumbo v15, "cscAllowDataSaverList is null."

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_5
    return v5
.end method

.method private applyFirewallRules(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2642
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 2643
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 2644
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "apply FIREWALL_POLICY_REJECT_MOBILE_DATA for UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 2648
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 2649
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "apply FIREWALL_POLICY_REJECT_WIFI for UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2640
    :cond_1
    :goto_0
    return-void

    .line 2651
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 5154
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 5164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5165
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    .line 5166
    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.net.NetworkOverLimitActivity"

    .line 5165
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5167
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5168
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5169
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    .prologue
    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 5158
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5159
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5160
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 5181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5182
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    .line 5183
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    .line 5182
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5184
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5185
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5186
    return-object v0
.end method

.method private static buildViewDataUsageIntentUDS(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 5173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5174
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.sm.SHOW_UDS_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5175
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5176
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5177
    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1663
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1664
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 1665
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1664
    invoke-interface {v2, v1, p1, v3, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1666
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private changePowerSaveMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4145
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 4146
    .local v0, "oldRestrictPower":Z
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4147
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundInLowerPowerMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    if-eqz v3, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 4149
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eq v0, v3, :cond_2

    :goto_1
    return v1

    :cond_1
    move v3, v1

    .line 4147
    goto :goto_0

    .line 4146
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_2
    move v1, v2

    .line 4149
    goto :goto_1
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 5195
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 5196
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5197
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5194
    :cond_0
    return-void
.end method

.method private currentTimeMillis()J
    .locals 2

    .prologue
    .line 5150
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    .line 4736
    if-eqz p1, :cond_0

    .line 4738
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4735
    :cond_0
    :goto_0
    return-void

    .line 4739
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchRestrictBackgroundBlacklistChanged(Landroid/net/INetworkPolicyListener;IZ)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "blacklisted"    # Z

    .prologue
    .line 4766
    if-eqz p1, :cond_0

    .line 4768
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundBlacklistChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4765
    :cond_0
    :goto_0
    return-void

    .line 4769
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    .prologue
    .line 4746
    if-eqz p1, :cond_0

    .line 4748
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4745
    :cond_0
    :goto_0
    return-void

    .line 4749
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchRestrictBackgroundWhitelistChanged(Landroid/net/INetworkPolicyListener;IZ)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "whitelisted"    # Z

    .prologue
    .line 4756
    if-eqz p1, :cond_0

    .line 4758
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundWhitelistChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4755
    :cond_0
    :goto_0
    return-void

    .line 4759
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    .prologue
    .line 4726
    if-eqz p1, :cond_0

    .line 4728
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4725
    :cond_0
    :goto_0
    return-void

    .line 4729
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enableFirewallChainLocked(IZ)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 5101
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 5102
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 5104
    return-void

    .line 5106
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5108
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5100
    :goto_0
    return-void

    .line 5109
    :catch_0
    move-exception v1

    .line 5110
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "problem enable firewall chain"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5111
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 27
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    .line 1494
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v11

    .line 1495
    .local v11, "tag":Ljava/lang/String;
    new-instance v17, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1496
    .local v17, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1497
    const-wide/16 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1499
    const v3, 0x106005a

    .line 1498
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 1502
    .local v21, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    .line 1649
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1650
    .local v9, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v14, v2, [I

    .line 1651
    .local v14, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 1652
    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v13

    const/4 v12, 0x0

    .line 1653
    const/4 v15, -0x1

    move-object v10, v9

    .line 1651
    invoke-interface/range {v8 .. v15}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v14    # "idReceived":[I
    :goto_1
    return-void

    .line 1504
    :pswitch_0
    const v2, 0x10404da

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    .line 1505
    .local v25, "title":Ljava/lang/CharSequence;
    const v2, 0x10404db

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1507
    .local v16, "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1508
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1509
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1510
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1512
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v24

    .line 1514
    .local v24, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    .line 1513
    move-object/from16 v0, v24

    invoke-static {v2, v3, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1516
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v4

    .line 1517
    .local v4, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1519
    .local v20, "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1522
    new-instance v7, Landroid/os/UserHandle;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v3

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1521
    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    .line 1522
    const/4 v6, 0x0

    .line 1520
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1558
    .end local v20    # "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-eqz v2, :cond_0

    .line 1559
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.DATAUSAGE_REACH_TO_WARNING"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1560
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1561
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    goto/16 :goto_0

    .line 1526
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    .line 1525
    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 1567
    .end local v4    # "viewIntent":Landroid/content/Intent;
    .end local v16    # "body":Ljava/lang/CharSequence;
    .end local v24    # "snoozeIntent":Landroid/content/Intent;
    .end local v25    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    const v2, 0x10404e0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1570
    .restart local v16    # "body":Ljava/lang/CharSequence;
    const v19, 0x108086e

    .line 1571
    .local v19, "icon":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 1586
    const/16 v25, 0x0

    .line 1590
    :goto_3
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1591
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1592
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1593
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1594
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1596
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v7

    .line 1598
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    .line 1597
    invoke-static {v2, v3, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1573
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_2
    const v2, 0x10404dc

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    .restart local v25    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1576
    .end local v25    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x10404dd

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    .restart local v25    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1579
    .end local v25    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v2, 0x10404de

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    .restart local v25    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1582
    .end local v25    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v2, 0x10404df

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    .line 1583
    .restart local v25    # "title":Ljava/lang/CharSequence;
    const v19, 0x1080078

    .line 1584
    goto :goto_3

    .line 1602
    .end local v16    # "body":Ljava/lang/CharSequence;
    .end local v19    # "icon":I
    .end local v25    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v22, p3, v2

    .line 1603
    .local v22, "overBytes":J
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 1603
    const v3, 0x10404e5

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1607
    .restart local v16    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 1621
    const/16 v25, 0x0

    .line 1625
    :goto_4
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1626
    const v2, 0x1080078

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1627
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1628
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1629
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1631
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v7

    .line 1632
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1634
    .restart local v20    # "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 1636
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1637
    new-instance v10, Landroid/os/UserHandle;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v10, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1636
    const/4 v6, 0x0

    const/high16 v8, 0x8000000

    .line 1637
    const/4 v9, 0x0

    .line 1635
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1609
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v20    # "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    :pswitch_7
    const v2, 0x10404e1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    .restart local v25    # "title":Ljava/lang/CharSequence;
    goto :goto_4

    .line 1612
    .end local v25    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v2, 0x10404e2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    .restart local v25    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_4

    .line 1615
    .end local v25    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v2, 0x10404e3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    .restart local v25    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_4

    .line 1618
    .end local v25    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v2, 0x10404e4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    .restart local v25    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_4

    .line 1641
    .end local v25    # "title":Ljava/lang/CharSequence;
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    .line 1640
    invoke-static {v2, v3, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1655
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "body":Ljava/lang/CharSequence;
    .end local v22    # "overBytes":J
    :catch_0
    move-exception v18

    .local v18, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 1502
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1571
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 1607
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private ensureActiveEntPolicyLocked()V
    .locals 7

    .prologue
    .line 2144
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v5, :cond_0

    return-void

    .line 2146
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 2147
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 2150
    .local v0, "sub":Landroid/telephony/SubscriptionManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isDdsSimStateReady()Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 2152
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v2

    .line 2153
    .local v2, "subIds":[I
    const/4 v5, 0x0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_2

    aget v1, v2, v5

    .line 2154
    .local v1, "subId":I
    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 2155
    .local v3, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveEntPolicyLocked(Ljava/lang/String;)V

    .line 2153
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2142
    .end local v1    # "subId":I
    .end local v3    # "subscriberId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private ensureActiveEntPolicyLocked(Ljava/lang/String;)V
    .locals 22
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 2160
    const-string/jumbo v3, "NetworkPolicy"

    const-string/jumbo v6, "ensureActiveEntPolicyLocked"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    new-instance v2, Landroid/net/NetworkIdentity;

    const/16 v3, 0x1c

    .line 2163
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    .line 2162
    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 2164
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_0
    if-ltz v19, :cond_1

    .line 2165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 2166
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2171
    return-void

    .line 2164
    :cond_0
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 2174
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v20

    .line 2176
    .local v20, "sub":Landroid/telephony/SubscriptionManager;
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No ent policy for subscriber "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2177
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2176
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2178
    const-string/jumbo v10, "; generating default policy"

    .line 2176
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    const-wide/16 v8, -0x1

    .line 2183
    .local v8, "warningBytes":J
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .line 2184
    .local v21, "time":Landroid/text/format/Time;
    invoke-virtual/range {v21 .. v21}, Landroid/text/format/Time;->setToNow()V

    .line 2188
    const/16 v18, 0x1

    .line 2190
    .local v18, "cycleDay":I
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2192
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 2193
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    const/4 v6, 0x1

    .line 2194
    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 2193
    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 2195
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    .line 2159
    return-void
.end method

.method private ensureActiveMobilePolicyLocked()V
    .locals 7

    .prologue
    .line 2078
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v5, :cond_0

    return-void

    .line 2080
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 2081
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 2084
    .local v0, "sub":Landroid/telephony/SubscriptionManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isDdsSimStateReady()Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 2087
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v2

    .line 2088
    .local v2, "subIds":[I
    const/4 v5, 0x0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_2

    aget v1, v2, v5

    .line 2089
    .local v1, "subId":I
    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 2090
    .local v3, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked(Ljava/lang/String;)V

    .line 2088
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2076
    .end local v1    # "subId":I
    .end local v3    # "subscriberId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private ensureActiveMobilePolicyLocked(Ljava/lang/String;)V
    .locals 22
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 2096
    new-instance v2, Landroid/net/NetworkIdentity;

    const/4 v3, 0x0

    .line 2097
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v5, p1

    .line 2096
    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 2098
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_0
    if-ltz v19, :cond_1

    .line 2099
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 2100
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2105
    return-void

    .line 2098
    :cond_0
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 2108
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v20

    .line 2111
    .local v20, "sub":Landroid/telephony/SubscriptionManager;
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No policy for subscriber "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2112
    const-string/jumbo v10, "; generating default policy"

    .line 2111
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultWarningBytes()I

    move-result v3

    int-to-long v10, v3

    const-wide/32 v12, 0x100000

    mul-long v8, v10, v12

    .line 2119
    .local v8, "warningBytes":J
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-gez v3, :cond_2

    .line 2120
    const-wide/16 v8, -0x1

    .line 2123
    :cond_2
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .line 2124
    .local v21, "time":Landroid/text/format/Time;
    invoke-virtual/range {v21 .. v21}, Landroid/text/format/Time;->setToNow()V

    .line 2128
    const/16 v18, 0x1

    .line 2130
    .local v18, "cycleDay":I
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2132
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 2133
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    const/4 v6, 0x1

    .line 2134
    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 2133
    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 2135
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    .line 2137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    .line 2138
    const-string/jumbo v10, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    .line 2137
    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2094
    return-void
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 3425
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3426
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 3427
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3428
    return-object v1

    .line 3425
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3431
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getBackgroundDataRestrictList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2758
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2759
    .local v3, "userRestrictBackgroundUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_restrict_background_uidlist"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2760
    .local v2, "userAllowedUids":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2761
    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2762
    .local v1, "uidArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 2763
    const-string/jumbo v4, ""

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2764
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2762
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2768
    .end local v0    # "i":I
    .end local v1    # "uidArray":[Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getDefaultWarningBytes()I
    .locals 4

    .prologue
    .line 5319
    const/16 v1, 0x800

    .line 5320
    .local v1, "warningBytes":I
    const-string/jumbo v2, "ro.csc.sales_code"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5322
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5347
    :cond_0
    :goto_0
    return v1

    .line 5323
    :cond_1
    const-string/jumbo v2, "VZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5327
    :cond_2
    const/4 v1, -0x1

    .line 5328
    goto :goto_0

    .line 5323
    :cond_3
    const-string/jumbo v2, "SPR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "SBM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "SKC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5333
    :cond_4
    const/16 v1, 0x1800

    .line 5334
    goto :goto_0

    .line 5323
    :cond_5
    const-string/jumbo v2, "KTC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "LUC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "TMB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5339
    :cond_6
    const v1, 0x19000

    .line 5340
    goto :goto_0

    .line 5323
    :cond_7
    const-string/jumbo v2, "FTN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "MTR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 5343
    const/16 v1, 0x800

    .line 5344
    goto :goto_0
.end method

.method private getLinkPropertiesForNetworkType(I)Landroid/net/LinkProperties;
    .locals 6
    .param p1, "capability"    # I

    .prologue
    const/4 v5, 0x0

    .line 5269
    const/4 v1, 0x0

    .line 5271
    .local v1, "lp":Landroid/net/LinkProperties;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1}, Landroid/net/IConnectivityManager;->getLinkForPropertiesForCapability(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5276
    .local v1, "lp":Landroid/net/LinkProperties;
    if-nez v1, :cond_0

    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find getLinkProperties by capability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5277
    :cond_0
    return-object v1

    .line 5272
    .local v1, "lp":Landroid/net/LinkProperties;
    :catch_0
    move-exception v0

    .line 5273
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception during getLinkProperties, capability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5274
    return-object v5
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 22
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 3689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    .line 3692
    .local v8, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3693
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .local v18, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v2

    .line 3696
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3701
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v6

    .line 3704
    .local v6, "currentTime":J
    move-object/from16 v0, v18

    invoke-static {v6, v7, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 3705
    .local v4, "start":J
    move-wide/from16 v16, v6

    .line 3706
    .local v16, "end":J
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 3709
    .local v10, "totalBytes":J
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_1

    move-object/from16 v0, v18

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 3711
    .local v12, "softLimitBytes":J
    :goto_0
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_2

    move-object/from16 v0, v18

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3714
    .local v14, "hardLimitBytes":J
    :goto_1
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    return-object v9

    .line 3692
    .end local v4    # "start":J
    .end local v6    # "currentTime":J
    .end local v10    # "totalBytes":J
    .end local v12    # "softLimitBytes":J
    .end local v14    # "hardLimitBytes":J
    .end local v16    # "end":J
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 3698
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 3710
    .restart local v4    # "start":J
    .restart local v6    # "currentTime":J
    .restart local v10    # "totalBytes":J
    .restart local v16    # "end":J
    :cond_1
    const-wide/16 v12, -0x1

    .restart local v12    # "softLimitBytes":J
    goto :goto_0

    .line 3712
    :cond_2
    const-wide/16 v14, -0x1

    .restart local v14    # "hardLimitBytes":J
    goto :goto_1
.end method

.method private getRestrictBackgroundInLowerPowerMode()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2719
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2720
    const-string/jumbo v7, "low_power_back_data_off"

    .line 2719
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2721
    .local v2, "lowPwrRestricted":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2722
    const-string/jumbo v7, "ultra_power_mode_back_data_off"

    .line 2721
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2723
    .local v5, "ultraPwrRestricted":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2724
    const-string/jumbo v7, "ultra_powersaving_mode"

    .line 2723
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_2

    const/4 v4, 0x1

    .line 2725
    .local v4, "ultraPwrEnabled":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v6}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v3

    .line 2726
    .local v3, "psmMode":Z
    const/4 v1, 0x0

    .line 2728
    .local v1, "enabled":Z
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2729
    const v7, 0x1120013

    .line 2728
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2730
    .local v0, "allowBgDataInCHN":Z
    const-string/jumbo v6, "ro.csc.country_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "China"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_3

    .line 2735
    :cond_0
    if-eqz v3, :cond_1

    .line 2736
    if-nez v4, :cond_4

    if-ne v2, v8, :cond_4

    .line 2738
    :goto_1
    const/4 v1, 0x1

    .line 2742
    :cond_1
    const-string/jumbo v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getRestrictBackgroundInLowerPowerMode: enabled("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") - psmMode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2743
    const-string/jumbo v8, "), isEmergencyMode("

    .line 2742
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2743
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v8

    .line 2742
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2743
    const-string/jumbo v8, "), lowPwrRestricted("

    .line 2742
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2744
    const-string/jumbo v8, "), ultraPwrRestricted("

    .line 2742
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2744
    const-string/jumbo v8, "), ultraPwrEnabled("

    .line 2742
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2744
    const-string/jumbo v8, ")"

    .line 2742
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    return v1

    .line 2723
    .end local v0    # "allowBgDataInCHN":Z
    .end local v1    # "enabled":Z
    .end local v3    # "psmMode":Z
    .end local v4    # "ultraPwrEnabled":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "ultraPwrEnabled":Z
    goto/16 :goto_0

    .line 2731
    .restart local v0    # "allowBgDataInCHN":Z
    .restart local v1    # "enabled":Z
    .restart local v3    # "psmMode":Z
    :cond_3
    const-string/jumbo v6, "NetworkPolicy"

    const-string/jumbo v7, "CHN don\'t use RestrictBackgroundData during PowerSave mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    return v9

    .line 2737
    :cond_4
    if-eqz v4, :cond_1

    if-ne v5, v8, :cond_1

    goto :goto_1
.end method

.method private getRestrictBackgroundbyPco()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3655
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigPco"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3656
    .local v0, "feature":Ljava/lang/String;
    const-string/jumbo v2, "COMMON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3658
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "background_data_by_pco"

    .line 3657
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    const/4 v1, 0x1

    .line 3659
    .local v1, "restrictBackgroundbyPco":Z
    :goto_0
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRestrictBackgroundbyPco() restrictBackgroundbyPco: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    return v1

    .line 3657
    .end local v1    # "restrictBackgroundbyPco":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "restrictBackgroundbyPco":Z
    goto :goto_0

    .line 3662
    .end local v1    # "restrictBackgroundbyPco":Z
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private getRestrictBackgroundbyUser()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3668
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "background_data_by_user"

    .line 3667
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    .line 3669
    .local v0, "restrictBackgroundbyUser":Z
    :goto_0
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRestrictBackgroundbyUser() restrictBackgroundbyUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    return v0

    .line 3667
    .end local v0    # "restrictBackgroundbyUser":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "restrictBackgroundbyUser":Z
    goto :goto_0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 545
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 5118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 5122
    :catch_0
    move-exception v6

    .line 5124
    .local v6, "e":Landroid/os/RemoteException;
    return-wide v8

    .line 5119
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 5120
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5121
    return-wide v8
.end method

.method private handleCheckFireWallPermission(ILjava/lang/String;)V
    .locals 11
    .param p1, "applicationStatus"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2834
    if-nez p1, :cond_0

    .line 2835
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->firewallMap:Ljava/util/HashMap;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, p2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    :cond_0
    const/4 v6, 0x0

    .line 2838
    .local v6, "newStatus":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->firewallMap:Ljava/util/HashMap;

    invoke-virtual {v9, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2839
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->firewallMap:Ljava/util/HashMap;

    invoke-virtual {v9, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2841
    :cond_1
    const/4 v9, 0x3

    if-ne v6, v9, :cond_2

    .line 2842
    return-void

    .line 2844
    :cond_2
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2845
    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 2846
    .local v2, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v7, :cond_3

    if-nez v2, :cond_4

    .line 2847
    :cond_3
    return-void

    .line 2846
    :cond_4
    const-string/jumbo v9, "android"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2850
    const/4 v0, 0x0

    .line 2852
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v7, p2, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2858
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 2859
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_5

    if-nez v0, :cond_6

    .line 2860
    :cond_5
    return-void

    .line 2853
    .end local v5    # "networkInfo":Landroid/net/NetworkInfo;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 2854
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2855
    return-void

    .line 2863
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_6
    if-eqz v0, :cond_a

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2864
    .local v1, "appName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, ""

    .line 2865
    .local v4, "messageStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 2866
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_7

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getFirewallRuleMobileData(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2869
    :cond_7
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getFirewallRuleWifi(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2874
    :cond_8
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 2875
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 2833
    :cond_9
    return-void

    .line 2863
    .end local v1    # "appName":Ljava/lang/String;
    .end local v4    # "messageStr":Ljava/lang/String;
    .end local v8    # "res":Landroid/content/res/Resources;
    :cond_a
    const-string/jumbo v1, ""

    .restart local v1    # "appName":Ljava/lang/String;
    goto :goto_0

    .line 2866
    .restart local v4    # "messageStr":Ljava/lang/String;
    .restart local v8    # "res":Landroid/content/res/Resources;
    :cond_b
    const/4 v9, 0x1

    if-eq v6, v9, :cond_7

    .line 2867
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const v10, 0x104089d

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2868
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->firewallMap:Ljava/util/HashMap;

    if-nez v6, :cond_c

    const/4 v9, 0x1

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, p2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_c
    const/4 v9, 0x3

    goto :goto_2

    .line 2869
    :cond_d
    const/4 v9, 0x2

    if-eq v6, v9, :cond_8

    .line 2870
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const v10, 0x104089e

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2871
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->firewallMap:Ljava/util/HashMap;

    if-nez v6, :cond_e

    .line 2872
    const/4 v9, 0x2

    .line 2871
    :goto_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, p2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2872
    :cond_e
    const/4 v9, 0x3

    goto :goto_3
.end method

.method private hasInternetPermissions(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 4413
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string/jumbo v2, "android.permission.INTERNET"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 4415
    return v3

    .line 4417
    :catch_0
    move-exception v0

    .line 4419
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 5129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5131
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 5136
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5131
    return v1

    .line 5132
    :catch_0
    move-exception v0

    .line 5134
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 5136
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5134
    return v1

    .line 5135
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 5136
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5135
    throw v1
.end method

.method private isDdsSimStateReady()Z
    .locals 5

    .prologue
    .line 5244
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 5245
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 5246
    .local v0, "phoneId":I
    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "ABSENT"

    invoke-static {v0, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5247
    .local v1, "simstateProperty":Ljava/lang/String;
    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private isNaGsm()Z
    .locals 1

    .prologue
    .line 5252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNaGsm(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 5255
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5256
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string/jumbo v1, "ALL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5257
    :cond_0
    if-eqz v0, :cond_3

    const-string/jumbo v1, "GSM-USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5258
    return v3

    .line 5260
    :cond_1
    const-string/jumbo v1, "ATT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "TMO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "MTR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5261
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5262
    return v3

    .line 5265
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method static isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z
    .locals 1
    .param p0, "procState"    # I

    .prologue
    .line 4168
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isProcStateAllowedWhileOnRestrictBackgroundLocked(I)Z
    .locals 1
    .param p0, "procState"    # I

    .prologue
    .line 4172
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTemplateRelevant(Landroid/net/NetworkTemplate;)Z
    .locals 13
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1433
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1434
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    .line 1435
    .local v10, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    .line 1438
    .local v7, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 1441
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isDdsSimStateReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1443
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 1442
    invoke-virtual {v10, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 1444
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1442
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1450
    :cond_0
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v9

    .line 1451
    .local v9, "subIds":[I
    array-length v12, v9

    move v11, v1

    :goto_0
    if-ge v11, v12, :cond_2

    aget v8, v9, v11

    .line 1452
    .local v8, "subId":I
    invoke-virtual {v10, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 1453
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    .line 1454
    const/4 v4, 0x0

    move v2, v1

    move v5, v1

    .line 1453
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1455
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1456
    return v6

    .line 1451
    :cond_1
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    .line 1459
    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v8    # "subId":I
    :cond_2
    return v1

    .line 1461
    .end local v7    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v9    # "subIds":[I
    .end local v10    # "tele":Landroid/telephony/TelephonyManager;
    :cond_3
    return v6
.end method

.method private isUidForegroundLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 4017
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4016
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForegroundLocked(I)Z

    move-result v0

    return v0
.end method

.method private isUidForegroundOnRestrictBackgroundLocked(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 4021
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4022
    .local v0, "procState":I
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackgroundLocked(I)Z

    move-result v1

    return v1
.end method

.method private isUidForegroundOnRestrictPowerLocked(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 4026
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4027
    .local v0, "procState":I
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v1

    return v1
.end method

.method private isUidIdle(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 4384
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 4385
    .local v1, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4386
    .local v2, "userId":I
    if-nez v1, :cond_0

    .line 4387
    return v4

    .line 4391
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v3}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4392
    return v4

    .line 4396
    :cond_1
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4397
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v1, v3

    .line 4398
    .local v0, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v0, p1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4399
    return v4

    .line 4397
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4403
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method private isUidStateForegroundLocked(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 4032
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUidValidForBlacklistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 4371
    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3fb

    if-ne p1, v0, :cond_1

    .line 4373
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 4372
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    .line 4371
    if-nez v0, :cond_0

    .line 4376
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isUidValidForWhitelistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 4380
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWhitelistedBatterySaverLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 4240
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4241
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static newWifiPolicy(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkPolicy;
    .locals 14
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "metered"    # Z

    .prologue
    const-wide/16 v4, -0x1

    .line 1336
    new-instance v0, Landroid/net/NetworkPolicy;

    const-string/jumbo v3, "UTC"

    const/4 v2, -0x1

    .line 1338
    const/4 v13, 0x1

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    move v12, p1

    .line 1336
    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    return-object v0
.end method

.method private normalizePoliciesLocked()V
    .locals 1

    .prologue
    .line 3108
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    .line 3107
    return-void
.end method

.method private normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V
    .locals 9
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    const/4 v4, 0x0

    .line 3112
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 3113
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    .line 3115
    .local v1, "merged":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 3116
    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, p1, v4

    .line 3119
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 3120
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 3121
    .local v0, "existing":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v6

    if-lez v6, :cond_2

    .line 3122
    :cond_0
    if-eqz v0, :cond_1

    .line 3123
    const-string/jumbo v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Normalization replaced "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :cond_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3126
    const-string/jumbo v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NetworkPolicy.put: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3111
    .end local v0    # "existing":Landroid/net/NetworkPolicy;
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1472
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1473
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotificationsLocked() - template : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_0
    return-void
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1477
    return-void
.end method

.method private notifyVideoCallOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1771
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "matchRule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AlreadySent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1768
    :cond_0
    :goto_0
    return-void

    .line 1776
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    if-nez v1, :cond_0

    .line 1777
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.intent.action.VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1779
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1780
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    goto :goto_0

    .line 1772
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readPolicyLocked()V
    .locals 38

    .prologue
    .line 2202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 2203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 2204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 2206
    const/16 v23, 0x0

    .line 2208
    .local v23, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v23

    .line 2209
    .local v23, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v24

    .line 2210
    .local v24, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2213
    const/16 v34, 0x1

    .line 2214
    .local v34, "version":I
    const/16 v25, 0x0

    .line 2215
    .local v25, "insideWhitelist":Z
    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    .local v32, "type":I
    const/4 v4, 0x1

    move/from16 v0, v32

    if-eq v0, v4, :cond_17

    .line 2216
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    .line 2217
    .local v31, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    move/from16 v0, v32

    if-ne v0, v4, :cond_16

    .line 2218
    const-string/jumbo v4, "policy-list"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    move/from16 v28, v0

    .line 2220
    .local v28, "oldValue":Z
    const-string/jumbo v4, "version"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v34

    .line 2221
    const/4 v4, 0x3

    move/from16 v0, v34

    if-lt v0, v4, :cond_2

    .line 2223
    const-string/jumbo v4, "restrictBackground"

    .line 2222
    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2228
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v35, "CscFeature_Common_ConfigPco"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2229
    .local v22, "feature":Ljava/lang/String;
    const-string/jumbo v4, "COMMON"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2230
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyPco()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2231
    const-string/jumbo v4, "NetworkPolicy"

    const-string/jumbo v35, "readPolicyLocked() PCO forces to set mRestrictBackground as true"

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2235
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    move/from16 v0, v28

    if-eq v4, v0, :cond_0

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    .line 2239
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 2238
    :goto_2
    const/16 v36, 0x6

    .line 2239
    const/16 v37, 0x0

    .line 2238
    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2359
    .end local v22    # "feature":Ljava/lang/String;
    .end local v23    # "fis":Ljava/io/FileInputStream;
    .end local v24    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v25    # "insideWhitelist":Z
    .end local v28    # "oldValue":Z
    .end local v31    # "tag":Ljava/lang/String;
    .end local v32    # "type":I
    .end local v34    # "version":I
    :catch_0
    move-exception v19

    .line 2361
    .local v19, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2367
    invoke-static/range {v23 .. v23}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2198
    .end local v19    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    return-void

    .line 2225
    .restart local v23    # "fis":Ljava/io/FileInputStream;
    .restart local v24    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25    # "insideWhitelist":Z
    .restart local v28    # "oldValue":Z
    .restart local v31    # "tag":Ljava/lang/String;
    .restart local v32    # "type":I
    .restart local v34    # "version":I
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2362
    .end local v23    # "fis":Ljava/io/FileInputStream;
    .end local v24    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v25    # "insideWhitelist":Z
    .end local v28    # "oldValue":Z
    .end local v31    # "tag":Ljava/lang/String;
    .end local v32    # "type":I
    .end local v34    # "version":I
    :catch_1
    move-exception v20

    .line 2363
    .local v20, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v4, "NetworkPolicy"

    const-string/jumbo v35, "problem reading network policy"

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2367
    invoke-static/range {v23 .. v23}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .line 2239
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v22    # "feature":Ljava/lang/String;
    .restart local v23    # "fis":Ljava/io/FileInputStream;
    .restart local v24    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25    # "insideWhitelist":Z
    .restart local v28    # "oldValue":Z
    .restart local v31    # "tag":Ljava/lang/String;
    .restart local v32    # "type":I
    .restart local v34    # "version":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 2242
    .end local v22    # "feature":Ljava/lang/String;
    .end local v28    # "oldValue":Z
    :cond_4
    :try_start_4
    const-string/jumbo v4, "network-policy"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2243
    const-string/jumbo v4, "networkTemplate"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v27

    .line 2244
    .local v27, "networkTemplate":I
    const-string/jumbo v4, "subscriberId"

    const/16 v35, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2246
    .local v30, "subscriberId":Ljava/lang/String;
    const/16 v4, 0x9

    move/from16 v0, v34

    if-lt v0, v4, :cond_5

    .line 2247
    const-string/jumbo v4, "networkId"

    const/16 v35, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2251
    :goto_4
    const-string/jumbo v4, "cycleDay"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 2253
    .local v6, "cycleDay":I
    const/4 v4, 0x6

    move/from16 v0, v34

    if-lt v0, v4, :cond_6

    .line 2254
    const-string/jumbo v4, "cycleTimezone"

    const/16 v35, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2258
    .local v7, "cycleTimezone":Ljava/lang/String;
    :goto_5
    const-string/jumbo v4, "warningBytes"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 2259
    .local v8, "warningBytes":J
    const-string/jumbo v4, "limitBytes"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .line 2261
    .local v10, "limitBytes":J
    const/4 v4, 0x5

    move/from16 v0, v34

    if-lt v0, v4, :cond_7

    .line 2262
    const-string/jumbo v4, "lastLimitSnooze"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 2269
    .local v14, "lastLimitSnooze":J
    :goto_6
    const/4 v4, 0x4

    move/from16 v0, v34

    if-lt v0, v4, :cond_9

    .line 2270
    const-string/jumbo v4, "metered"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .line 2284
    :goto_7
    const/4 v4, 0x5

    move/from16 v0, v34

    if-lt v0, v4, :cond_a

    .line 2285
    const-string/jumbo v4, "lastWarningSnooze"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .line 2290
    .local v12, "lastWarningSnooze":J
    :goto_8
    const/4 v4, 0x7

    move/from16 v0, v34

    if-lt v0, v4, :cond_b

    .line 2291
    const-string/jumbo v4, "inferred"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 2296
    :goto_9
    new-instance v5, Landroid/net/NetworkTemplate;

    move/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-direct {v5, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2298
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v35, v0

    new-instance v4, Landroid/net/NetworkPolicy;

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2364
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v23    # "fis":Ljava/io/FileInputStream;
    .end local v24    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v25    # "insideWhitelist":Z
    .end local v27    # "networkTemplate":I
    .end local v30    # "subscriberId":Ljava/lang/String;
    .end local v31    # "tag":Ljava/lang/String;
    .end local v32    # "type":I
    .end local v34    # "version":I
    :catch_2
    move-exception v21

    .line 2365
    .local v21, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string/jumbo v4, "NetworkPolicy"

    const-string/jumbo v35, "problem reading network policy"

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2367
    invoke-static/range {v23 .. v23}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_3

    .line 2249
    .end local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v23    # "fis":Ljava/io/FileInputStream;
    .restart local v24    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25    # "insideWhitelist":Z
    .restart local v27    # "networkTemplate":I
    .restart local v30    # "subscriberId":Ljava/lang/String;
    .restart local v31    # "tag":Ljava/lang/String;
    .restart local v32    # "type":I
    .restart local v34    # "version":I
    :cond_5
    const/16 v26, 0x0

    .local v26, "networkId":Ljava/lang/String;
    goto/16 :goto_4

    .line 2256
    .end local v26    # "networkId":Ljava/lang/String;
    .restart local v6    # "cycleDay":I
    :cond_6
    :try_start_6
    const-string/jumbo v7, "UTC"

    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    goto/16 :goto_5

    .line 2263
    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    :cond_7
    const/4 v4, 0x2

    move/from16 v0, v34

    if-lt v0, v4, :cond_8

    .line 2264
    const-string/jumbo v4, "lastSnooze"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_6

    .line 2266
    .end local v14    # "lastLimitSnooze":J
    :cond_8
    const-wide/16 v14, -0x1

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_6

    .line 2272
    :cond_9
    sparse-switch v27, :sswitch_data_0

    .line 2280
    const/16 v16, 0x0

    .local v16, "metered":Z
    goto :goto_7

    .line 2277
    .end local v16    # "metered":Z
    :sswitch_0
    const/16 v16, 0x1

    .line 2278
    .restart local v16    # "metered":Z
    goto :goto_7

    .line 2287
    .end local v16    # "metered":Z
    :cond_a
    const-wide/16 v12, -0x1

    .restart local v12    # "lastWarningSnooze":J
    goto :goto_8

    .line 2293
    :cond_b
    const/16 v17, 0x0

    .local v17, "inferred":Z
    goto :goto_9

    .line 2304
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v17    # "inferred":Z
    .end local v27    # "networkTemplate":I
    .end local v30    # "subscriberId":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "uid-policy"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2305
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v33

    .line 2306
    .local v33, "uid":I
    const-string/jumbo v4, "policy"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v29

    .line 2308
    .local v29, "policy":I
    invoke-static/range {v33 .. v33}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2309
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 2366
    .end local v23    # "fis":Ljava/io/FileInputStream;
    .end local v24    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v25    # "insideWhitelist":Z
    .end local v29    # "policy":I
    .end local v31    # "tag":Ljava/lang/String;
    .end local v32    # "type":I
    .end local v33    # "uid":I
    .end local v34    # "version":I
    :catchall_0
    move-exception v4

    .line 2367
    invoke-static/range {v23 .. v23}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2366
    throw v4

    .line 2311
    .restart local v23    # "fis":Ljava/io/FileInputStream;
    .restart local v24    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25    # "insideWhitelist":Z
    .restart local v29    # "policy":I
    .restart local v31    # "tag":Ljava/lang/String;
    .restart local v32    # "type":I
    .restart local v33    # "uid":I
    .restart local v34    # "version":I
    :cond_d
    :try_start_7
    const-string/jumbo v4, "NetworkPolicy"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "unable to apply policy to UID "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "; ignoring"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2314
    .end local v29    # "policy":I
    .end local v33    # "uid":I
    :cond_e
    const-string/jumbo v4, "uid-roaming-policy"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2315
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v33

    .line 2316
    .restart local v33    # "uid":I
    const-string/jumbo v4, "policy"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v29

    .line 2318
    .restart local v29    # "policy":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setRoamingReduction(II)V

    goto/16 :goto_0

    .line 2320
    .end local v29    # "policy":I
    .end local v33    # "uid":I
    :cond_f
    const-string/jumbo v4, "firewall-policy"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2321
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v33

    .line 2322
    .restart local v33    # "uid":I
    const-string/jumbo v4, "policy"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v29

    .line 2324
    .restart local v29    # "policy":I
    invoke-static/range {v33 .. v33}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2325
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyUncheckedLocked(IIZ)V

    .line 2326
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->applyFirewallRules(II)V

    goto/16 :goto_0

    .line 2328
    :cond_10
    const-string/jumbo v4, "NetworkPolicy"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "unable to apply policy to UID "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "; ignoring"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2330
    .end local v29    # "policy":I
    .end local v33    # "uid":I
    :cond_11
    const-string/jumbo v4, "app-policy"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2331
    const-string/jumbo v4, "appId"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    .line 2332
    .local v18, "appId":I
    const-string/jumbo v4, "policy"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v29

    .line 2336
    .restart local v29    # "policy":I
    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v33

    .line 2337
    .restart local v33    # "uid":I
    invoke-static/range {v33 .. v33}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2338
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    goto/16 :goto_0

    .line 2340
    :cond_12
    const-string/jumbo v4, "NetworkPolicy"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "unable to apply policy to UID "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "; ignoring"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2342
    .end local v18    # "appId":I
    .end local v29    # "policy":I
    .end local v33    # "uid":I
    :cond_13
    const-string/jumbo v4, "whitelist"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2343
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 2344
    :cond_14
    const-string/jumbo v4, "restrict-background"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v25, :cond_15

    .line 2345
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v33

    .line 2346
    .restart local v33    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/16 v35, 0x1

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_0

    .line 2347
    .end local v33    # "uid":I
    :cond_15
    const-string/jumbo v4, "revoked-restrict-background"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v25, :cond_0

    .line 2348
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v33

    .line 2349
    .restart local v33    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    const/16 v35, 0x1

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_0

    .line 2351
    .end local v33    # "uid":I
    :cond_16
    const/4 v4, 0x3

    move/from16 v0, v32

    if-ne v0, v4, :cond_0

    .line 2352
    const-string/jumbo v4, "whitelist"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 2353
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 2367
    .end local v31    # "tag":Ljava/lang/String;
    :cond_17
    invoke-static/range {v23 .. v23}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_3

    .line 2272
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method private removeFirewallPolicyLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 2632
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2633
    .local v0, "policy":I
    if-eqz v0, :cond_0

    .line 2634
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2635
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2636
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V

    .line 2631
    :cond_0
    return-void
.end method

.method private removeFirewallRules(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2658
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 2659
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 2660
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove FIREWALL_POLICY_REJECT_MOBILE_DATA for UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 2664
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 2665
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove FIREWALL_POLICY_REJECT_WIFI for UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2656
    :cond_1
    :goto_0
    return-void

    .line 2667
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 5018
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5016
    :goto_0
    return-void

    .line 5019
    :catch_0
    move-exception v1

    .line 5020
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "problem removing interface quota"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5021
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private removeRestrictBackgroundWhitelistedUidLocked(IZZ)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z
    .param p3, "updateNow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3319
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 3320
    .local v1, "oldStatus":Z
    if-nez v1, :cond_0

    if-eqz p2, :cond_5

    .line 3324
    :cond_0
    if-nez p2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v0

    .line 3325
    :goto_0
    if-eqz v1, :cond_1

    .line 3326
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removing uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from restrict background whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3329
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3330
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3335
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 3337
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(IZ)V

    .line 3339
    :cond_3
    if-eqz p3, :cond_4

    .line 3341
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 3345
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v3, :cond_8

    :goto_2
    return v0

    .line 3322
    :cond_5
    return v2

    .line 3324
    :cond_6
    const/4 v0, 0x1

    .local v0, "needFirewallRules":Z
    goto :goto_0

    .line 3333
    .end local v0    # "needFirewallRules":Z
    :cond_7
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_1

    :cond_8
    move v0, v2

    .line 3345
    goto :goto_2
.end method

.method private removeUidState(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 4139
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4140
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4138
    return-void

    .line 4139
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private removeUidStateLocked(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 4064
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 4065
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 4066
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 4067
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 4068
    if-eq v1, v4, :cond_2

    .line 4069
    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedLocked(III)V

    .line 4071
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_0

    .line 4072
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    .line 4074
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v2, :cond_1

    .line 4075
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerLocked(I)V

    .line 4077
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsLocked(I)V

    .line 4078
    invoke-direct {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V

    .line 4063
    .end local v1    # "oldUidState":I
    :cond_2
    return-void
.end method

.method private setFirewallPolicyUncheckedLocked(IIZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 2620
    if-nez p2, :cond_1

    .line 2621
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2626
    :goto_0
    if-eqz p3, :cond_0

    .line 2627
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2619
    :cond_0
    return-void

    .line 2623
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 5004
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5002
    :goto_0
    return-void

    .line 5009
    :catch_0
    move-exception v1

    .line 5010
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "problem setting interface quota"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5011
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setMeteredNetworkBlacklist(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 5029
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5026
    :goto_0
    return-void

    .line 5030
    :catch_0
    move-exception v1

    .line 5031
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem setting blacklist ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") rules for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5032
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setMeteredNetworkWhitelist(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 5040
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5037
    :goto_0
    return-void

    .line 5041
    :catch_0
    move-exception v1

    .line 5042
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem setting whitelist ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") rules for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5043
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .prologue
    .line 1843
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1845
    .local v0, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1884
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unexpected template"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1851
    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isDdsSimStateReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1852
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 1851
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 1852
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1851
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1853
    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    .line 1854
    const/4 v1, 0x6

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    .line 1842
    :cond_0
    :goto_0
    :sswitch_1
    return-void

    .line 1859
    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isDdsSimStateReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1860
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    .line 1859
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 1860
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1859
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1861
    const/16 v1, 0x1c

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 1866
    :sswitch_3
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 1869
    :sswitch_4
    const/16 v1, 0x9

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 1845
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0x3e9 -> :sswitch_2
    .end sparse-switch
.end method

.method private setPolicyDataEnable(IZ)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1893
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setPolicyDataEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    :goto_0
    return-void

    .line 1894
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setRestrictBackgroundLocked(Z)V
    .locals 5
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 3248
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundLocked(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3250
    .local v1, "oldRestrictBackground":Z
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3254
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 3256
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3257
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not change Data Saver Mode on NMS to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3261
    return-void

    .line 3263
    :catch_0
    move-exception v0

    .line 3266
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 3267
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 3247
    return-void
.end method

.method private setRoamingReductionRules(Z)V
    .locals 17
    .param p1, "allowed"    # Z

    .prologue
    .line 3541
    const-string/jumbo v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setRoamingReductionRules allowed:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRRWhiteListApplied:Z

    if-nez v14, :cond_6

    .line 3545
    const/4 v4, 0x0

    .line 3546
    .local v4, "cscAllowRRList":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    .line 3547
    const-string/jumbo v15, "CscFeature_Common_ConfigAllowedPackagesDuringRoamingReduction"

    .line 3546
    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3548
    .local v4, "cscAllowRRList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 3550
    .local v11, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3

    .line 3551
    const-string/jumbo v14, ","

    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3554
    .local v9, "listApps":[Ljava/lang/String;
    const-string/jumbo v14, "NetworkPolicy"

    const-string/jumbo v15, "Delete previous Whitelist."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    if-ge v8, v14, :cond_1

    .line 3556
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 3557
    .local v13, "uid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    .line 3559
    .local v12, "policy":I
    const/16 v14, 0x1002

    if-ne v12, v14, :cond_0

    .line 3560
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidRoamingPolicyUncheckedLocked(IIZ)V

    .line 3555
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3565
    .end local v12    # "policy":I
    .end local v13    # "uid":I
    :cond_1
    const-string/jumbo v14, "NetworkPolicy"

    const-string/jumbo v15, "Apply Roaming Reduction Whitelist."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    const/4 v8, 0x0

    :goto_1
    array-length v14, v9

    if-ge v8, v14, :cond_4

    .line 3567
    aget-object v14, v9, v8

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3568
    .local v10, "pkg":Ljava/lang/String;
    const-string/jumbo v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "package name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v11, v10, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3571
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    .line 3572
    iget v14, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 3573
    .local v2, "appid":I
    const-string/jumbo v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "package uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    const/16 v14, 0x270f

    if-le v2, v14, :cond_2

    .line 3575
    const/16 v14, 0x1002

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidRoamingPolicyUncheckedLocked(IIZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3566
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "appid":I
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3581
    .end local v8    # "i":I
    .end local v9    # "listApps":[Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_3
    new-instance v14, Ljava/lang/String;

    const-string/jumbo v15, "cscAllowRRList is null."

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingAppliedReason:Ljava/lang/String;

    .line 3582
    const-string/jumbo v14, "NetworkPolicy"

    const-string/jumbo v15, "cscAllowRRList is null."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRRWhiteListApplied:Z

    .line 3585
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 3586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingAppliedReason:Ljava/lang/String;

    if-nez v14, :cond_5

    new-instance v14, Ljava/lang/String;

    const-string/jumbo v15, "success"

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingAppliedReason:Ljava/lang/String;

    .line 3592
    .end local v4    # "cscAllowRRList":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    :goto_3
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    if-ge v8, v14, :cond_8

    .line 3593
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 3594
    .restart local v13    # "uid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    .line 3595
    .restart local v12    # "policy":I
    const-string/jumbo v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mRoamingReductionPolicy uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", policy: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    if-eqz p1, :cond_7

    .line 3598
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setWhiteListUidNetworkRules(II)V

    .line 3592
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3588
    .end local v8    # "i":I
    .end local v12    # "policy":I
    .end local v13    # "uid":I
    :cond_6
    new-instance v14, Ljava/lang/String;

    const-string/jumbo v15, "already applied"

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingAppliedReason:Ljava/lang/String;

    goto :goto_3

    .line 3600
    .restart local v8    # "i":I
    .restart local v12    # "policy":I
    .restart local v13    # "uid":I
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->setWhiteListUidNetworkRules(II)V

    goto :goto_5

    .line 3605
    .end local v12    # "policy":I
    .end local v13    # "uid":I
    :cond_8
    if-eqz p1, :cond_9

    .line 3606
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V

    .line 3611
    :cond_9
    if-nez p1, :cond_b

    .line 3612
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    if-ge v8, v14, :cond_b

    .line 3613
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    .line 3614
    .restart local v13    # "uid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 3615
    .local v3, "applied":Z
    const-string/jumbo v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mRoamingReductionRule uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", applied: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    if-eqz v3, :cond_a

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->setWhiteListUidNetworkRules(II)V

    .line 3612
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 3622
    .end local v3    # "applied":Z
    .end local v13    # "uid":I
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move/from16 v0, p1

    invoke-interface {v14, v0}, Landroid/os/INetworkManagementService;->setRoamingReductionRules(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3540
    :goto_7
    return-void

    .line 3623
    :catch_0
    move-exception v7

    .line 3624
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v14, "NetworkPolicy"

    const-string/jumbo v15, "problem setting uid rules"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 3625
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_7

    .line 3577
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v4    # "cscAllowRRList":Ljava/lang/String;
    .restart local v9    # "listApps":[Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v5

    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_2
.end method

.method private setUidFirewallRule(III)V
    .locals 6
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    .line 5076
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 5077
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5089
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5073
    :goto_1
    return-void

    .line 5078
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 5079
    :try_start_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5083
    :catch_0
    move-exception v1

    .line 5084
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Chain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "rule :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5080
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 5081
    :try_start_3
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 5090
    :catch_1
    move-exception v2

    .line 5091
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "NetworkPolicy"

    const-string/jumbo v4, "problem setting firewall uid rules"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5092
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private setUidFirewallRules(ILandroid/util/SparseIntArray;)V
    .locals 8
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .prologue
    .line 5055
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 5056
    .local v4, "size":I
    new-array v5, v4, [I

    .line 5057
    .local v5, "uids":[I
    new-array v3, v4, [I

    .line 5058
    .local v3, "rules":[I
    add-int/lit8 v2, v4, -0x1

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_0

    .line 5059
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    aput v6, v5, v2

    .line 5060
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    aput v6, v3, v2

    .line 5058
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5062
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v6, p1, v5, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5053
    .end local v2    # "index":I
    .end local v3    # "rules":[I
    .end local v4    # "size":I
    .end local v5    # "uids":[I
    :goto_1
    return-void

    .line 5063
    :catch_0
    move-exception v1

    .line 5064
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v6, "NetworkPolicy"

    const-string/jumbo v7, "problem setting firewall uid rules"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5065
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private setUidPolicyUncheckedLocked(IIIZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "oldPolicy"    # I
    .param p3, "policy"    # I
    .param p4, "persist"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2888
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    .line 2890
    if-ne p3, v3, :cond_4

    const/4 v0, 0x1

    .line 2891
    .local v0, "isBlacklisted":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 2892
    if-eqz v0, :cond_0

    move v2, v3

    .line 2891
    :cond_0
    const/16 v5, 0xc

    invoke-virtual {v4, v5, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2894
    if-ne p2, v3, :cond_5

    const/4 v1, 0x1

    .line 2896
    .local v1, "wasBlacklisted":Z
    :goto_1
    if-nez p2, :cond_1

    if-nez v0, :cond_2

    .line 2897
    :cond_1
    if-eqz v1, :cond_3

    if-nez p3, :cond_3

    .line 2898
    :cond_2
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p1, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2887
    :cond_3
    return-void

    .line 2890
    .end local v0    # "isBlacklisted":Z
    .end local v1    # "wasBlacklisted":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isBlacklisted":Z
    goto :goto_0

    .line 2894
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "wasBlacklisted":Z
    goto :goto_1
.end method

.method private setUidPolicyUncheckedLocked(IIZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 2904
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2907
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(I)V

    .line 2908
    if-eqz p3, :cond_0

    .line 2909
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2903
    :cond_0
    return-void
.end method

.method private setUidRoamingPolicyUncheckedLocked(IIZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 3532
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3534
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setWhiteListUidNetworkRules(II)V

    .line 3535
    :cond_0
    if-eqz p3, :cond_1

    .line 3536
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 3531
    :cond_1
    return-void
.end method

.method private setWhiteListUidNetworkRules(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    const/4 v5, 0x0

    .line 3631
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 3632
    .local v0, "allowed":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 3634
    .local v1, "appliedRule":Z
    if-ne v0, v1, :cond_1

    .line 3635
    const-string/jumbo v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Roaming rule("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "is already applied for uid("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    return-void

    .line 3631
    .end local v0    # "allowed":Z
    .end local v1    # "appliedRule":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "allowed":Z
    goto :goto_0

    .line 3638
    .restart local v1    # "appliedRule":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3640
    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/server/net/NetworkPolicyManagerService;->mRrEnabledInCscChameleon:Z

    if-eqz v4, :cond_2

    .line 3642
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1, v0}, Landroid/os/INetworkManagementService;->setWhiteListUidNetworkRules(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3630
    :cond_2
    :goto_1
    return-void

    .line 3643
    :catch_0
    move-exception v3

    .line 3644
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "NetworkPolicy"

    const-string/jumbo v5, "problem setting uid rules"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3645
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateNetworkStats(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .prologue
    .line 4086
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4084
    :goto_0
    return-void

    .line 4087
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedLocked(III)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .prologue
    const/4 v5, 0x0

    .line 4095
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackgroundLocked(I)Z

    move-result v3

    .line 4097
    .local v3, "oldForeground":Z
    invoke-static {p3}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackgroundLocked(I)Z

    move-result v2

    .line 4099
    .local v2, "newForeground":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    .line 4100
    const-string/jumbo v7, "CscFeature_RIL_ConfigNetworkTypeCapability"

    .line 4099
    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4103
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    if-eq v3, v2, :cond_1

    .line 4104
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(I)V

    .line 4107
    if-eqz v0, :cond_1

    const-string/jumbo v6, "SPR-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4108
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    .line 4107
    if-eqz v6, :cond_1

    .line 4108
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->mRrEnabledInCscChameleon:Z

    .line 4107
    if-eqz v6, :cond_1

    .line 4109
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z

    if-eqz v6, :cond_1

    .line 4110
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v1

    .line 4111
    .local v1, "isFg":Z
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 4112
    .local v4, "policy_rule":I
    if-nez v4, :cond_1

    .line 4114
    if-eqz v1, :cond_0

    const/16 v5, 0x1001

    .line 4113
    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setWhiteListUidNetworkRules(II)V

    .line 4093
    .end local v1    # "isFg":Z
    .end local v4    # "policy_rule":I
    :cond_1
    return-void
.end method

.method private updateRestrictionRulesForUidLocked(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 4437
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    .line 4438
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    .line 4439
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerLocked(I)V

    .line 4442
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsLocked(I)V

    .line 4445
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(I)V

    .line 4435
    return-void
.end method

.method private updateRulesForDataUsageRestrictionsLocked(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 4491
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(IZ)V

    .line 4490
    return-void
.end method

.method private updateRulesForDataUsageRestrictionsLocked(IZ)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z

    .prologue
    .line 4499
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4504
    :cond_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 4505
    .local v9, "uidPolicy":I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 4506
    .local v8, "oldUidRules":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundLocked(I)Z

    move-result v3

    .line 4508
    .local v3, "isForeground":Z
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_6

    const/4 v2, 0x1

    .line 4509
    .local v2, "isBlacklisted":Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 4510
    .local v4, "isWhitelisted":Z
    and-int/lit8 v7, v8, 0xf

    .line 4511
    .local v7, "oldRule":I
    const/4 v5, 0x0

    .line 4514
    .local v5, "newRule":I
    if-eqz v3, :cond_8

    .line 4515
    if-nez v2, :cond_7

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v10, :cond_1

    if-eqz v4, :cond_7

    .line 4517
    :cond_1
    if-eqz v4, :cond_2

    .line 4518
    const/4 v5, 0x1

    .line 4527
    :cond_2
    :goto_1
    and-int/lit16 v10, v8, 0xf0

    or-int v6, v5, v10

    .line 4542
    .local v6, "newUidRules":I
    if-nez v6, :cond_a

    .line 4543
    :try_start_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4551
    :goto_2
    const/4 v0, 0x0

    .line 4554
    .local v0, "changed":Z
    if-eq v5, v7, :cond_4

    .line 4555
    const/4 v0, 0x1

    .line 4557
    and-int/lit8 v10, v5, 0x2

    if-eqz v10, :cond_b

    .line 4561
    const/4 v10, 0x1

    invoke-direct {p0, p1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4565
    if-eqz v2, :cond_3

    .line 4566
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    .line 4606
    :cond_3
    :goto_3
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, p1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 4498
    :cond_4
    return-void

    .line 4501
    .end local v0    # "changed":Z
    .end local v2    # "isBlacklisted":Z
    .end local v3    # "isForeground":Z
    .end local v4    # "isWhitelisted":Z
    .end local v5    # "newRule":I
    .end local v6    # "newUidRules":I
    .end local v7    # "oldRule":I
    .end local v8    # "oldUidRules":I
    .end local v9    # "uidPolicy":I
    :cond_5
    return-void

    .line 4508
    .restart local v3    # "isForeground":Z
    .restart local v8    # "oldUidRules":I
    .restart local v9    # "uidPolicy":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "isBlacklisted":Z
    goto :goto_0

    .line 4516
    .restart local v4    # "isWhitelisted":Z
    .restart local v5    # "newRule":I
    .restart local v7    # "oldRule":I
    :cond_7
    const/4 v5, 0x2

    .line 4515
    goto :goto_1

    .line 4521
    :cond_8
    if-eqz v2, :cond_9

    .line 4522
    const/4 v5, 0x4

    goto :goto_1

    .line 4523
    :cond_9
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v10, :cond_2

    if-eqz v4, :cond_2

    .line 4524
    const/4 v5, 0x1

    goto :goto_1

    .line 4545
    .restart local v6    # "newUidRules":I
    :cond_a
    :try_start_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1, v6}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 4547
    :catch_0
    move-exception v1

    .line 4548
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v10, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mUidRules: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4568
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v0    # "changed":Z
    :cond_b
    and-int/lit8 v10, v7, 0x2

    if-eqz v10, :cond_d

    .line 4575
    if-nez v4, :cond_c

    .line 4576
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4578
    :cond_c
    if-eqz v2, :cond_3

    .line 4579
    const/4 v10, 0x1

    invoke-direct {p0, p1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto :goto_3

    .line 4581
    :cond_d
    and-int/lit8 v10, v5, 0x4

    if-nez v10, :cond_e

    .line 4582
    and-int/lit8 v10, v7, 0x4

    if-eqz v10, :cond_f

    .line 4584
    :cond_e
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    .line 4585
    and-int/lit8 v10, v7, 0x4

    if-eqz v10, :cond_3

    if-eqz v4, :cond_3

    .line 4589
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    goto :goto_3

    .line 4591
    :cond_f
    and-int/lit8 v10, v5, 0x1

    if-nez v10, :cond_10

    .line 4592
    and-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_11

    .line 4594
    :cond_10
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    goto :goto_3

    .line 4597
    :cond_11
    const-string/jumbo v10, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unexpected change of metered UID state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4598
    const-string/jumbo v12, ": foreground="

    .line 4597
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4599
    const-string/jumbo v12, ", whitelisted="

    .line 4597
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4600
    const-string/jumbo v12, ", blacklisted="

    .line 4597
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4601
    const-string/jumbo v12, ", newRule="

    .line 4597
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4601
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    .line 4597
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4602
    const-string/jumbo v12, ", oldRule="

    .line 4597
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4602
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    .line 4597
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private updateRulesForGlobalChangeLocked(Z)V
    .locals 1
    .param p1, "restrictedNetworksChanged"    # Z

    .prologue
    .line 4309
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    .line 4310
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleLocked()V

    .line 4311
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerLocked()V

    .line 4312
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 4313
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundLocked(Z)V

    .line 4316
    if-eqz p1, :cond_0

    .line 4317
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 4318
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 4305
    :cond_0
    return-void
.end method

.method private updateRulesForNonMeteredNetworksLocked()V
    .locals 0

    .prologue
    .line 4235
    return-void
.end method

.method private updateRulesForPowerRestrictionsLocked(I)V
    .locals 13
    .param p1, "uid"    # I

    .prologue
    const/4 v11, 0x0

    .line 4629
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4631
    return-void

    .line 4634
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v2

    .line 4635
    .local v2, "isIdle":Z
    if-nez v2, :cond_5

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-nez v10, :cond_5

    iget-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 4636
    :goto_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 4637
    .local v9, "uidPolicy":I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 4638
    .local v7, "oldUidRules":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerLocked(I)Z

    move-result v1

    .line 4640
    .local v1, "isForeground":Z
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverLocked(I)Z

    move-result v3

    .line 4641
    .local v3, "isWhitelisted":Z
    and-int/lit16 v6, v7, 0xf0

    .line 4642
    .local v6, "oldRule":I
    const/4 v4, 0x0

    .line 4648
    .local v4, "newRule":I
    if-eqz v1, :cond_6

    .line 4649
    if-eqz v8, :cond_1

    .line 4650
    const/16 v4, 0x20

    .line 4656
    :cond_1
    :goto_1
    and-int/lit8 v10, v7, 0xf

    or-int v5, v10, v4

    .line 4671
    .local v5, "newUidRules":I
    if-nez v5, :cond_8

    .line 4674
    :try_start_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4683
    :cond_2
    :goto_2
    if-eq v4, v6, :cond_4

    .line 4684
    if-eqz v4, :cond_3

    and-int/lit8 v10, v4, 0x20

    if-eqz v10, :cond_9

    .line 4696
    :cond_3
    :goto_3
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 4628
    :cond_4
    return-void

    .line 4635
    .end local v1    # "isForeground":Z
    .end local v3    # "isWhitelisted":Z
    .end local v4    # "newRule":I
    .end local v5    # "newUidRules":I
    .end local v6    # "oldRule":I
    .end local v7    # "oldUidRules":I
    .end local v9    # "uidPolicy":I
    :cond_5
    const/4 v8, 0x1

    .local v8, "restrictMode":Z
    goto :goto_0

    .line 4652
    .end local v8    # "restrictMode":Z
    .restart local v1    # "isForeground":Z
    .restart local v3    # "isWhitelisted":Z
    .restart local v4    # "newRule":I
    .restart local v6    # "oldRule":I
    .restart local v7    # "oldUidRules":I
    .restart local v9    # "uidPolicy":I
    :cond_6
    if-eqz v8, :cond_1

    .line 4653
    if-eqz v3, :cond_7

    const/16 v4, 0x20

    goto :goto_1

    :cond_7
    const/16 v4, 0x40

    goto :goto_1

    .line 4675
    .restart local v5    # "newUidRules":I
    :catch_0
    move-exception v0

    .line 4676
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v10, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mUidRules "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "exception :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4679
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_8
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 4686
    :cond_9
    and-int/lit8 v10, v4, 0x40

    if-nez v10, :cond_3

    .line 4690
    const-string/jumbo v10, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unexpected change of non-metered UID state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4691
    const-string/jumbo v12, ": foreground="

    .line 4690
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4692
    const-string/jumbo v12, ", whitelisted="

    .line 4690
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4693
    const-string/jumbo v12, ", newRule="

    .line 4690
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4693
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    .line 4690
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4694
    const-string/jumbo v12, ", oldRule="

    .line 4690
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4694
    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    .line 4690
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private updateRulesForRestrictBackgroundLocked()V
    .locals 12

    .prologue
    .line 4328
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 4331
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 4333
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const v10, 0xc2200

    .line 4332
    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 4337
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 4338
    .local v9, "usersSize":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 4339
    .local v2, "appsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_1

    .line 4340
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 4341
    .local v7, "user":Landroid/content/pm/UserInfo;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 4342
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 4343
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 4344
    .local v6, "uid":I
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(I)V

    .line 4345
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsLocked(I)V

    .line 4341
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4339
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "uid":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4327
    .end local v4    # "j":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 5

    .prologue
    .line 4158
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 4159
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4160
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    .line 4161
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 4162
    .local v2, "uid":I
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidLocked(I)V

    .line 4159
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4156
    :cond_1
    return-void
.end method

.method private updateRulesForTempWhitelistChangeLocked()V
    .locals 7

    .prologue
    .line 4351
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 4352
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 4353
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4354
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 4355
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 4356
    .local v0, "appId":I
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 4358
    .local v3, "uid":I
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    .line 4359
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    .line 4360
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerLocked(I)V

    .line 4362
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsLocked(I)V

    .line 4354
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4352
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4350
    .end local v2    # "j":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveLocked(IZI)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "enabled"    # Z
    .param p3, "chain"    # I

    .prologue
    .line 4247
    if-eqz p2, :cond_1

    .line 4248
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4249
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v0

    .line 4248
    if-eqz v0, :cond_2

    .line 4250
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 4246
    :cond_1
    :goto_0
    return-void

    .line 4252
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_0
.end method

.method private updateRulesForWhitelistedPowerSaveLocked(ZILandroid/util/SparseIntArray;)V
    .locals 11
    .param p1, "enabled"    # Z
    .param p2, "chain"    # I
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    .prologue
    .line 4199
    if-eqz p1, :cond_6

    .line 4202
    move-object v5, p3

    .line 4203
    .local v5, "uidRules":Landroid/util/SparseIntArray;
    :try_start_0
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 4204
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 4205
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "ui":I
    :goto_0
    if-ltz v3, :cond_3

    .line 4206
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 4207
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 4208
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4209
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 4210
    .local v0, "appId":I
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4211
    .local v4, "uid":I
    const/4 v8, 0x1

    invoke-virtual {p3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4207
    .end local v0    # "appId":I
    .end local v4    # "uid":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4214
    :cond_1
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_2
    if-ltz v2, :cond_2

    .line 4215
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 4216
    .restart local v0    # "appId":I
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4217
    .restart local v4    # "uid":I
    const/4 v8, 0x1

    invoke-virtual {p3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 4214
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 4205
    .end local v0    # "appId":I
    .end local v4    # "uid":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4220
    .end local v2    # "i":I
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .restart local v2    # "i":I
    :goto_3
    if-ltz v2, :cond_5

    .line 4221
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-static {v8}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4222
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 4220
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 4225
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4232
    .end local v2    # "i":I
    .end local v3    # "ui":I
    .end local v5    # "uidRules":Landroid/util/SparseIntArray;
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    :goto_4
    invoke-direct {p0, p2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    .line 4196
    return-void

    .line 4227
    .restart local v5    # "uidRules":Landroid/util/SparseIntArray;
    :catch_0
    move-exception v1

    .line 4228
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Chain: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private updateScreenOn()V
    .locals 3

    .prologue
    .line 4123
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4125
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4129
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 4122
    return-void

    .line 4123
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 4126
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateUidState(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 4134
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4135
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4133
    return-void

    .line 4134
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateUidStateLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    .line 4041
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4042
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_4

    .line 4044
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4045
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedLocked(III)V

    .line 4046
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v1

    .line 4047
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v2

    .line 4046
    if-eq v1, v2, :cond_3

    .line 4048
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4049
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    .line 4051
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_1

    .line 4052
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    .line 4054
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v1, :cond_2

    .line 4055
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerLocked(I)V

    .line 4057
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsLocked(I)V

    .line 4059
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForegroundLocked(I)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V

    .line 4040
    :cond_4
    return-void
.end method

.method private updateVideoCallLocked()V
    .locals 14

    .prologue
    .line 1751
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v4

    .line 1752
    .local v4, "currentTime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "policy$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkPolicy;

    .line 1753
    .local v8, "policy":Landroid/net/NetworkPolicy;
    iget-wide v0, v8, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v12, -0x1

    cmp-long v0, v0, v12

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    invoke-static {v4, v5, v8}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 1757
    .local v2, "start":J
    move-wide v6, v4

    .line 1758
    .local v6, "end":J
    iget-object v1, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 1760
    .local v10, "totalBytes":J
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mIsVideoCall: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, ", mHasEpdgCall:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-eqz v0, :cond_0

    invoke-virtual {v8, v10, v11}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, v8, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyVideoCallOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto :goto_0

    .line 1748
    .end local v2    # "start":J
    .end local v6    # "end":J
    .end local v8    # "policy":Landroid/net/NetworkPolicy;
    .end local v10    # "totalBytes":J
    :cond_1
    return-void
.end method

.method private upgradeLegacyBackgroundData()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2377
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "background_data"

    .line 2376
    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v5, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2380
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    .line 2381
    .local v1, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    if-eqz v1, :cond_0

    .line 2382
    const-string/jumbo v4, "NetworkPolicy"

    const-string/jumbo v7, "edm is not null 1"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v3

    .line 2384
    .local v3, "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    if-eqz v3, :cond_0

    .line 2385
    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2386
    iput-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2395
    .end local v3    # "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    :cond_0
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v6, "CscFeature_Common_ConfigPco"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2396
    .local v2, "feature":Ljava/lang/String;
    const-string/jumbo v4, "COMMON"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2397
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyPco()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2398
    const-string/jumbo v4, "NetworkPolicy"

    const-string/jumbo v6, "upgradeLegacyBackgroundData() PCO forces to set mRestrictBackground as true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    iput-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2404
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v4, :cond_2

    .line 2405
    new-instance v0, Landroid/content/Intent;

    .line 2406
    const-string/jumbo v4, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    .line 2405
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2407
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2375
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_2
    return-void

    .end local v1    # "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .end local v2    # "feature":Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 2376
    goto :goto_0

    .line 2387
    .restart local v1    # "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .restart local v3    # "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2388
    iput-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    goto :goto_1
.end method

.method private validatePoliciesToSet([Landroid/net/NetworkPolicy;)V
    .locals 4
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 3026
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 3027
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 3040
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected template "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3041
    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    .line 3040
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3026
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3025
    .end local v0    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    return-void

    .line 3027
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method addDefaultRestrictBackgroundWhitelistUidsLocked()Z
    .locals 6

    .prologue
    .line 675
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 676
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 678
    .local v2, "numberUsers":I
    const/4 v0, 0x0

    .line 679
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 680
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 681
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsLocked(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 679
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 681
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 683
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return v0
.end method

.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 5191
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5190
    return-void
.end method

.method addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 3083
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 3084
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policies":[Landroid/net/NetworkPolicy;
    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 3085
    .restart local v0    # "policies":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3082
    return-void
.end method

.method public addRestrictBackgroundWhitelistedUid(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 3272
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3276
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3277
    .local v2, "oldStatus":Z
    if-eqz v2, :cond_0

    monitor-exit v4

    .line 3279
    return-void

    .line 3281
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v1

    .line 3282
    .local v1, "needFirewallRules":Z
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "adding uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to restrict background whitelist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 3284
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3285
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 3284
    if-eqz v3, :cond_1

    .line 3288
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3290
    :cond_1
    if-eqz v1, :cond_2

    .line 3292
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsLocked(I)V

    .line 3295
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 3297
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const/4 v0, 0x0

    .line 3298
    .local v0, "changed":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3299
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3298
    const/16 v5, 0x9

    invoke-virtual {v3, v5, p1, v0, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3271
    return-void

    .line 3275
    .end local v0    # "changed":I
    .end local v1    # "needFirewallRules":Z
    .end local v2    # "oldStatus":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3297
    .restart local v1    # "needFirewallRules":Z
    .restart local v2    # "oldStatus":Z
    :cond_4
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "changed":I
    goto :goto_0
.end method

.method public addUidPolicy(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2565
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2568
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cannot apply policy to UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2571
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2572
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2574
    .local v1, "oldPolicy":I
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 2575
    .local v0, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    if-eqz v0, :cond_1

    .line 2576
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    .line 2577
    .local v2, "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    if-eqz v2, :cond_1

    .line 2578
    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDataSavingAllowed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v4

    .line 2579
    return-void

    .line 2584
    .end local v2    # "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    :cond_1
    or-int/2addr p2, v1

    .line 2585
    if-eq v1, p2, :cond_2

    .line 2586
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v4

    .line 2564
    return-void

    .line 2571
    .end local v0    # "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .end local v1    # "oldPolicy":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 640
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 639
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    .prologue
    .line 644
    const-string/jumbo v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 643
    return-void
.end method

.method public checkFireWallPermission(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isFirstActivityStart"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2881
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2882
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2883
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2884
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2880
    return-void

    .line 2882
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3748
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "android.permission.DUMP"

    const-string/jumbo v16, "NetworkPolicy"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3750
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v14, "  "

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v14}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3752
    .local v4, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v3, Landroid/util/ArraySet;

    move-object/from16 v0, p3

    array-length v14, v0

    invoke-direct {v3, v14}, Landroid/util/ArraySet;-><init>(I)V

    .line 3753
    .local v3, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    move-object/from16 v0, p3

    array-length v15, v0

    :goto_0
    if-ge v14, v15, :cond_0

    aget-object v2, p3, v14

    .line 3754
    .local v2, "arg":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3753
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3757
    .end local v2    # "arg":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 3758
    const-string/jumbo v15, "low_power_back_data_off"

    const/16 v16, 0x1

    .line 3757
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 3759
    .local v7, "lowPwrRestricted":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 3760
    const-string/jumbo v15, "ultra_power_mode_back_data_off"

    const/16 v16, 0x1

    .line 3759
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 3762
    .local v13, "ultraPwrRestricted":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3763
    :try_start_0
    const-string/jumbo v14, "--unsnooze"

    invoke-virtual {v3, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3764
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_1

    .line 3765
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkPolicy;

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3764
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 3768
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 3769
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 3770
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 3771
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 3772
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 3774
    const-string/jumbo v14, "Cleared snooze timestamps"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v15

    .line 3775
    return-void

    .line 3778
    .end local v5    # "i":I
    :cond_2
    :try_start_1
    const-string/jumbo v14, "System ready: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3779
    const-string/jumbo v14, "Restrict background: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3780
    const-string/jumbo v14, "Device idle: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3781
    const-string/jumbo v14, "Restrict power: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3782
    const-string/jumbo v14, "Restrict background in LPSM: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 3783
    const-string/jumbo v14, "Restrict background in UPSM: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 3784
    const-string/jumbo v14, "Charging: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3785
    const-string/jumbo v14, "mRoamingReduction: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3786
    const-string/jumbo v14, "mRrEnabledInCscChameleon: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v14, Lcom/android/server/net/NetworkPolicyManagerService;->mRrEnabledInCscChameleon:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3787
    const-string/jumbo v14, "mRoamingState: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v14, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3788
    const-string/jumbo v14, "mRRWhiteListApplied: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRRWhiteListApplied:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3789
    const-string/jumbo v14, "mRoamingAppliedReason: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingAppliedReason:Ljava/lang/String;

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3791
    const-string/jumbo v14, "Network policies:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3792
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3793
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v5, v14, :cond_3

    .line 3794
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkPolicy;

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3793
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3796
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3798
    const-string/jumbo v14, "Metered ifaces: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3800
    const-string/jumbo v14, "Policy for UIDs:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3801
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3802
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 3803
    .local v9, "size":I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v9, :cond_4

    .line 3804
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 3805
    .local v11, "uid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 3806
    .local v8, "policy":I
    const-string/jumbo v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3807
    invoke-virtual {v4, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3808
    const-string/jumbo v14, " policy="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3809
    invoke-virtual {v4, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3810
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3803
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3812
    .end local v8    # "policy":I
    .end local v11    # "uid":I
    :cond_4
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3814
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    .line 3815
    if-lez v9, :cond_6

    .line 3816
    const-string/jumbo v14, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3817
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3818
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v9, :cond_5

    .line 3819
    const-string/jumbo v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3820
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3821
    const-string/jumbo v14, ": "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3822
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3823
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3818
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3825
    :cond_5
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3828
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    .line 3829
    if-lez v9, :cond_8

    .line 3830
    const-string/jumbo v14, "Power save whitelist app ids:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3831
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3832
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v9, :cond_7

    .line 3833
    const-string/jumbo v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3834
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3835
    const-string/jumbo v14, ": "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3836
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3837
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3832
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3839
    :cond_7
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3842
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    .line 3843
    if-lez v9, :cond_a

    .line 3844
    const-string/jumbo v14, "Restrict background whitelist uids:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3845
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3846
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v9, :cond_9

    .line 3847
    const-string/jumbo v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3848
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3849
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3846
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 3851
    :cond_9
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3854
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    .line 3855
    if-lez v9, :cond_c

    .line 3856
    const-string/jumbo v14, "Default restrict background whitelist uids:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3857
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3858
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v9, :cond_b

    .line 3859
    const-string/jumbo v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3860
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3861
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3858
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 3863
    :cond_b
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3866
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    .line 3867
    if-lez v9, :cond_e

    .line 3868
    const-string/jumbo v14, "Default restrict background whitelist uids revoked by users:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3869
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3870
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v9, :cond_d

    .line 3871
    const-string/jumbo v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3872
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3873
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3870
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 3875
    :cond_d
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3879
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    .line 3880
    if-lez v9, :cond_10

    .line 3881
    const-string/jumbo v14, "Power save temp whitelist app ids:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3882
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3883
    const/4 v5, 0x0

    :goto_9
    if-ge v5, v9, :cond_f

    .line 3884
    const-string/jumbo v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3885
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3886
    const-string/jumbo v14, ": "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3887
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3888
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3883
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 3890
    :cond_f
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3895
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 3896
    const-string/jumbo v14, "Status for Roaming Reduction Policy UIDs:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3897
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3898
    const/4 v5, 0x0

    :goto_a
    if-ge v5, v9, :cond_14

    .line 3899
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 3900
    .restart local v11    # "uid":I
    const-string/jumbo v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {v4, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3903
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v11, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 3904
    .local v10, "state":I
    const-string/jumbo v14, " state="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3905
    invoke-virtual {v4, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3906
    const/4 v14, 0x2

    if-gt v10, v14, :cond_11

    .line 3907
    const-string/jumbo v14, " (fg)"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3914
    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v11, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 3915
    .restart local v8    # "policy":I
    const-string/jumbo v14, " policy ="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3916
    const/4 v14, -0x1

    if-ne v8, v14, :cond_13

    .line 3917
    const-string/jumbo v14, "UNKNOWN"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3921
    :goto_c
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3898
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 3909
    .end local v8    # "policy":I
    :cond_11
    const/4 v14, 0x4

    if-gt v10, v14, :cond_12

    .line 3910
    const-string/jumbo v14, " (fg svc)"

    .line 3909
    :goto_d
    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_b

    .line 3762
    .end local v5    # "i":I
    .end local v9    # "size":I
    .end local v10    # "state":I
    .end local v11    # "uid":I
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 3910
    .restart local v5    # "i":I
    .restart local v9    # "size":I
    .restart local v10    # "state":I
    .restart local v11    # "uid":I
    :cond_12
    :try_start_2
    const-string/jumbo v14, " (bg)"

    goto :goto_d

    .line 3919
    .restart local v8    # "policy":I
    :cond_13
    invoke-virtual {v4, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    goto :goto_c

    .line 3923
    .end local v8    # "policy":I
    .end local v10    # "state":I
    .end local v11    # "uid":I
    :cond_14
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3925
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    .line 3926
    const-string/jumbo v14, "Status for Roaming Reduction Rule UIDs:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3927
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3928
    const/4 v5, 0x0

    :goto_e
    if-ge v5, v9, :cond_18

    .line 3929
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    .line 3930
    .restart local v11    # "uid":I
    const-string/jumbo v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3931
    invoke-virtual {v4, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3933
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v11, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 3934
    .restart local v10    # "state":I
    const-string/jumbo v14, " state="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3935
    invoke-virtual {v4, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3936
    const/4 v14, 0x2

    if-gt v10, v14, :cond_15

    .line 3937
    const-string/jumbo v14, " (fg)"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3943
    :goto_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 3944
    .local v1, "applied":Z
    if-eqz v1, :cond_17

    .line 3945
    const-string/jumbo v14, " applied = true"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3949
    :goto_10
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3928
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 3939
    .end local v1    # "applied":Z
    :cond_15
    const/4 v14, 0x4

    if-gt v10, v14, :cond_16

    .line 3940
    const-string/jumbo v14, " (fg svc)"

    .line 3939
    :goto_11
    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    .line 3940
    :cond_16
    const-string/jumbo v14, " (bg)"

    goto :goto_11

    .line 3947
    .restart local v1    # "applied":Z
    :cond_17
    const-string/jumbo v14, " applied = false"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_10

    .line 3951
    .end local v1    # "applied":Z
    .end local v10    # "state":I
    .end local v11    # "uid":I
    :cond_18
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3954
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3955
    .local v6, "knownUids":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v14, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3956
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v14, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3958
    const-string/jumbo v14, "Status for all known UIDs:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3960
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    .line 3961
    const/4 v5, 0x0

    :goto_12
    if-ge v5, v9, :cond_1b

    .line 3962
    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    .line 3963
    .restart local v11    # "uid":I
    const-string/jumbo v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3964
    invoke-virtual {v4, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3966
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v11, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 3967
    .restart local v10    # "state":I
    const-string/jumbo v14, " state="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3968
    invoke-virtual {v4, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3969
    const/4 v14, 0x2

    if-gt v10, v14, :cond_19

    .line 3970
    const-string/jumbo v14, " (fg)"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3976
    :goto_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v11, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 3977
    .local v12, "uidRules":I
    const-string/jumbo v14, " rules="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3978
    invoke-static {v12}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3979
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3961
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 3972
    .end local v12    # "uidRules":I
    :cond_19
    const/4 v14, 0x4

    if-gt v10, v14, :cond_1a

    .line 3973
    const-string/jumbo v14, " (fg svc)"

    .line 3972
    :goto_14
    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_13

    .line 3973
    :cond_1a
    const-string/jumbo v14, " (bg)"

    goto :goto_14

    .line 3981
    .end local v10    # "state":I
    .end local v11    # "uid":I
    :cond_1b
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3983
    const-string/jumbo v14, "Status for just UIDs with rules:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3984
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3985
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 3986
    const/4 v5, 0x0

    :goto_15
    if-ge v5, v9, :cond_1c

    .line 3987
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 3988
    .restart local v11    # "uid":I
    const-string/jumbo v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3989
    invoke-virtual {v4, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3990
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v11, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 3991
    .restart local v12    # "uidRules":I
    const-string/jumbo v14, " rules="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3992
    invoke-static {v12}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3993
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3986
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 3995
    .end local v11    # "uid":I
    .end local v12    # "uidRules":I
    :cond_1c
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v15

    .line 3747
    return-void
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 12
    .param p1, "subscriber"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 5203
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v9, "NetworkPolicy"

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5205
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v8, "no_network_reset"

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5206
    return-void

    .line 5209
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultWarningBytes()I

    move-result v6

    int-to-long v8, v6

    const-wide/32 v10, 0x100000

    mul-long v4, v8, v10

    .line 5212
    .local v4, "warningBytes":J
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-gez v6, :cond_1

    .line 5213
    const-wide/16 v4, -0x1

    .line 5217
    :cond_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 5218
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 5219
    .local v2, "template":Landroid/net/NetworkTemplate;
    array-length v8, v0

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v1, v0, v6

    .line 5220
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v9, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v9, v2}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 5221
    const-wide/16 v10, -0x1

    iput-wide v10, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 5223
    iput-wide v4, v1, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 5224
    iput-boolean v7, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 5225
    invoke-virtual {v1}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 5219
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5228
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 5229
    const-string/jumbo v6, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "factoryReset - CallingUid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5230
    const-string/jumbo v9, ", CallingPid : "

    .line 5229
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5230
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 5229
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5232
    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 5234
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v8, "no_control_apps"

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 5236
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_4

    aget v3, v8, v6

    .line 5237
    .local v3, "uid":I
    invoke-virtual {p0, v3, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 5236
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5202
    .end local v3    # "uid":I
    :cond_4
    return-void
.end method

.method public getFirewallRuleMobileData(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 2813
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2816
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2817
    .local v0, "policy":I
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFirewallRuleMobileData UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " policy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2818
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    return v1

    .line 2815
    .end local v0    # "policy":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getFirewallRuleWifi(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 2824
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2827
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2828
    .local v0, "policy":I
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFirewallRuleWifi UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " policy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2829
    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    return v1

    .line 2826
    .end local v0    # "policy":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getMeteredIfaces()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 3242
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 3090
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3093
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0x33

    invoke-virtual {v3, v5, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 3095
    new-array v3, v6, [Landroid/net/NetworkPolicy;

    return-object v3

    .line 3097
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3098
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3099
    .local v2, "size":I
    new-array v1, v2, [Landroid/net/NetworkPolicy;

    .line 3100
    .local v1, "policies":[Landroid/net/NetworkPolicy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3101
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    aput-object v3, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    .line 3103
    return-object v1

    .line 3097
    .end local v0    # "i":I
    .end local v1    # "policies":[Landroid/net/NetworkPolicy;
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 3676
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3682
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3682
    return-object v2

    .line 3683
    :catchall_0
    move-exception v2

    .line 3684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3683
    throw v2
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3396
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3397
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 3396
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRestrictBackgroundByCaller()I
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x1

    .line 3367
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.ACCESS_NETWORK_STATE"

    const-string/jumbo v7, "NetworkPolicy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3370
    .local v1, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3372
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 3375
    .local v2, "token":J
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 3377
    .local v0, "policy":I
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3379
    if-ne v0, v8, :cond_0

    monitor-exit v5

    .line 3381
    return v4

    .line 3376
    .end local v0    # "policy":I
    :catchall_0
    move-exception v4

    .line 3377
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3376
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3370
    .end local v2    # "token":J
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 3383
    .restart local v0    # "policy":I
    .restart local v2    # "token":J
    :cond_0
    :try_start_4
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v6, :cond_1

    monitor-exit v5

    .line 3384
    return v8

    .line 3386
    :cond_1
    :try_start_5
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v6

    if-eqz v6, :cond_2

    .line 3387
    const/4 v4, 0x2

    :cond_2
    monitor-exit v5

    .line 3386
    return v4
.end method

.method public getRestrictBackgroundWhitelistedUids()[I
    .locals 6

    .prologue
    .line 3350
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3352
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 3353
    .local v1, "size":I
    new-array v2, v1, [I

    .line 3354
    .local v2, "whitelist":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3355
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    .line 3361
    return-object v2

    .line 3351
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "whitelist":[I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getRoamingReduction(I)I
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 3514
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    .line 3517
    const-string/jumbo v2, "CscFeature_RIL_ConfigNetworkTypeCapability"

    .line 3516
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3518
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3519
    const-string/jumbo v1, "SPR-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3520
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRrEnabledInCscChameleon:Z

    if-eqz v1, :cond_1

    .line 3526
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3527
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 3521
    :cond_1
    const-string/jumbo v1, "NetworkPolicy"

    const-string/jumbo v2, "setRoamingReduction API allows only SPR model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    return v4

    .line 3526
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2918
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2917
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .param p1, "policy"    # I

    .prologue
    .line 2924
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2926
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 2927
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2928
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 2929
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 2930
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 2931
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    .line 2932
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2928
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_1
    monitor-exit v5

    .line 2936
    return-object v3

    .line 2927
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 6
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3719
    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-nez v3, :cond_0

    .line 3720
    return v4

    .line 3723
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 3726
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3727
    return v5

    .line 3731
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3732
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3

    .line 3735
    if-eqz v1, :cond_2

    .line 3736
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    return v3

    .line 3731
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 3738
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 3739
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 3740
    :cond_4
    return v5

    .line 3742
    :cond_5
    return v4
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 4008
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4010
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4011
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 4010
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method maybeRefreshTrustedTime()V
    .locals 4

    .prologue
    .line 5144
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 5145
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 5143
    :cond_0
    return-void
.end method

.method public onScreenStateChanged(ZI)V
    .locals 3
    .param p1, "state"    # Z
    .param p2, "reason"    # I

    .prologue
    .line 3480
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenStateChanged, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    if-nez p1, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 3482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z

    .line 3479
    :goto_0
    return-void

    .line 3484
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z

    goto :goto_0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4002
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;-><init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 4001
    return-void
.end method

.method public onTetheringChanged(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "tethering"    # Z

    .prologue
    .line 3176
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3177
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3178
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tethering on ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "); disable Data Saver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 3173
    return-void

    .line 3176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 3145
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v0

    .line 3146
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3148
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 3149
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    .line 3150
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to find policy for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3146
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3153
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 3161
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "unexpected type"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3155
    :pswitch_0
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 3164
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 3165
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 3166
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 3167
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 3168
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 3143
    return-void

    .line 3158
    :pswitch_1
    :try_start_2
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method purgePowerSaveTempWhitelistLocked()V
    .locals 3

    .prologue
    .line 789
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 790
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 791
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 792
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 790
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 788
    :cond_1
    return-void
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3007
    return-void
.end method

.method public removeRestrictBackgroundWhitelistedUid(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3304
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3307
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidLocked(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "changed":Z
    monitor-exit v3

    .line 3309
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3310
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3309
    const/16 v4, 0x9

    invoke-virtual {v3, v4, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3303
    return-void

    .line 3306
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .restart local v0    # "changed":Z
    :cond_0
    move v1, v2

    .line 3309
    goto :goto_0
.end method

.method public removeUidPolicy(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2593
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2595
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2596
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cannot apply policy to UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2600
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 2601
    .local v0, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    if-eqz v0, :cond_1

    .line 2602
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    .line 2603
    .local v2, "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    if-eqz v2, :cond_1

    .line 2604
    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2605
    return-void

    .line 2611
    .end local v2    # "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2612
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2613
    .local v1, "oldPolicy":I
    not-int v3, p2

    and-int p2, v1, v3

    .line 2614
    if-eq v1, p2, :cond_2

    .line 2615
    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v4

    .line 2592
    return-void

    .line 2611
    .end local v1    # "oldPolicy":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method removeUserStateLocked(IZ)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "writePolicy"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2946
    const/4 v0, 0x0

    .line 2949
    .local v0, "changed":Z
    new-array v4, v5, [I

    .line 2950
    .local v4, "wlUids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 2951
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2952
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 2953
    invoke-static {v4, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    .line 2950
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2957
    .end local v2    # "uid":I
    :cond_1
    array-length v6, v4

    if-lez v6, :cond_3

    .line 2958
    array-length v7, v4

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_2

    aget v2, v4, v6

    .line 2959
    .restart local v2    # "uid":I
    invoke-direct {p0, v2, v5, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidLocked(IZZ)Z

    .line 2958
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2961
    .end local v2    # "uid":I
    :cond_2
    const/4 v0, 0x1

    .line 2965
    :cond_3
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_2
    if-ltz v1, :cond_5

    .line 2966
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2967
    .restart local v2    # "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_4

    .line 2968
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 2969
    const/4 v0, 0x1

    .line 2965
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2974
    .end local v2    # "uid":I
    :cond_5
    new-array v3, v5, [I

    .line 2975
    .local v3, "uids":[I
    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 2976
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 2977
    .restart local v2    # "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_6

    .line 2978
    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 2975
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2982
    .end local v2    # "uid":I
    :cond_7
    array-length v6, v3

    if-lez v6, :cond_9

    .line 2983
    array-length v6, v3

    :goto_4
    if-ge v5, v6, :cond_8

    aget v2, v3, v5

    .line 2984
    .restart local v2    # "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2983
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2986
    .end local v2    # "uid":I
    :cond_8
    const/4 v0, 0x1

    .line 2989
    :cond_9
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 2991
    if-eqz p2, :cond_a

    if-eqz v0, :cond_a

    .line 2992
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2994
    :cond_a
    return v0
.end method

.method public setConnectivityListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 2999
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    if-eqz v0, :cond_0

    .line 3001
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Connectivity listener already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3003
    :cond_0
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    .line 2998
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 3403
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3405
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3406
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eq v1, p1, :cond_1

    .line 3407
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 3408
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 3410
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3411
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3412
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3415
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    if-eqz p1, :cond_2

    .line 3416
    const-string/jumbo v1, "net"

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    .line 3402
    return-void

    .line 3418
    :cond_2
    :try_start_1
    const-string/jumbo v1, "net"

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3405
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setFirewallRuleMobileData(IZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2674
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserRestrictBackgroundUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2676
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 2680
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2681
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2682
    .local v0, "policy":I
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFirewallRuleMobileData UID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " allow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " policy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    if-nez p2, :cond_3

    .line 2684
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 2685
    or-int/lit8 v0, v0, 0x1

    .line 2686
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyUncheckedLocked(IIZ)V

    .line 2687
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->applyFirewallRules(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v2

    .line 2673
    return-void

    .line 2678
    .end local v0    # "policy":I
    :cond_1
    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 2690
    .restart local v0    # "policy":I
    :cond_3
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 2691
    and-int/lit8 v0, v0, -0x2

    .line 2692
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyUncheckedLocked(IIZ)V

    .line 2693
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2680
    .end local v0    # "policy":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setFirewallRuleMobileDataMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "uidAllowedMap"    # Ljava/util/Map;

    .prologue
    .line 2797
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2799
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallRuleMobileData(IZ)V

    goto :goto_0

    .line 2796
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public setFirewallRuleWifi(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 2774
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2777
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2778
    .local v0, "policy":I
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFirewallRuleWifi UID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " allow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " policy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    if-nez p2, :cond_1

    .line 2780
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 2781
    or-int/lit8 v0, v0, 0x2

    .line 2782
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyUncheckedLocked(IIZ)V

    .line 2783
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->applyFirewallRules(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 2773
    return-void

    .line 2786
    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 2787
    and-int/lit8 v0, v0, -0x3

    .line 2788
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyUncheckedLocked(IIZ)V

    .line 2789
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2776
    .end local v0    # "policy":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setFirewallRuleWifiMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "uidAllowedMap"    # Ljava/util/Map;

    .prologue
    .line 2805
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2807
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallRuleWifi(IZ)V

    goto :goto_0

    .line 2804
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 6
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 3049
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    const-string/jumbo v1, "NetworkPolicy"

    const-string/jumbo v4, "setNetworkPolicies"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3058
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->validatePoliciesToSet([Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3066
    :try_start_1
    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "China"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "Hong Kong"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    .line 3067
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 3070
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3071
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    .line 3072
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 3073
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 3074
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 3075
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3078
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3048
    return-void

    .line 3059
    :catch_0
    move-exception v0

    .line 3060
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "NetworkPolicy"

    const-string/jumbo v4, "IllegalArgumentException"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    return-void

    .line 3066
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 3070
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v4

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3077
    :catchall_1
    move-exception v1

    .line 3078
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3077
    throw v1
.end method

.method public setRestrictBackground(Z)V
    .locals 10
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 3186
    const-string/jumbo v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setRestrictBackground - CallingUid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3187
    const-string/jumbo v9, ", CallingPid : "

    .line 3186
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 3186
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3187
    const-string/jumbo v9, ", enabled: "

    .line 3186
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3191
    iput-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mdeleteNotifications:Z

    .line 3192
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 3193
    .local v0, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 3194
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    .line 3195
    .local v2, "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    if-eqz v2, :cond_0

    .line 3196
    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3197
    const/4 p1, 0x0

    .line 3198
    .local p1, "restrictBackground":Z
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mdeleteNotifications:Z

    .line 3207
    .end local v2    # "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .end local p1    # "restrictBackground":Z
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3210
    .local v4, "token":J
    :try_start_0
    const-string/jumbo v7, "ro.csc.country_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "China"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "ro.csc.country_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Hong Kong"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_1
    if-nez v7, :cond_1

    .line 3211
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 3214
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3215
    :try_start_1
    iget-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-ne p1, v8, :cond_4

    .line 3217
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRestrictBackground: already "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3232
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3218
    return-void

    .line 3199
    .end local v4    # "token":J
    .restart local v2    # "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .local p1, "restrictBackground":Z
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3200
    const/4 p1, 0x1

    .line 3201
    .local p1, "restrictBackground":Z
    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mdeleteNotifications:Z

    goto :goto_0

    .end local v2    # "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .end local p1    # "restrictBackground":Z
    .restart local v4    # "token":J
    :cond_3
    move v7, v3

    .line 3210
    goto :goto_1

    .line 3221
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Common_ConfigPco"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3222
    .local v1, "feature":Ljava/lang/String;
    const-string/jumbo v8, "COMMON"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3223
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyPco()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3224
    const-string/jumbo v8, "NetworkPolicy"

    const-string/jumbo v9, "setRestrictBackground() PCO forces to set mRestrictBackground as true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3228
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundLocked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3232
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3235
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    :goto_2
    const/4 v8, 0x6

    invoke-virtual {v7, v8, v3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3185
    return-void

    .line 3214
    .end local v1    # "feature":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v7

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3231
    :catchall_1
    move-exception v3

    .line 3232
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3231
    throw v3

    .restart local v1    # "feature":Ljava/lang/String;
    :cond_6
    move v3, v6

    .line 3235
    goto :goto_2
.end method

.method public setRestrictBackgroundByPco(Z)V
    .locals 7
    .param p1, "restrictBackgroundPco"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3438
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Common_ConfigPco"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3439
    .local v0, "feature":Ljava/lang/String;
    const-string/jumbo v2, "COMMON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3440
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRestrictBackgroundByPco() restrictBackgroundPco: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyPco()Z

    move-result v2

    if-ne v2, p1, :cond_0

    .line 3444
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "setRestrictBackgroundByPco() same PCO value as before, then discard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    :goto_0
    return-void

    .line 3446
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3447
    const-string/jumbo v6, "background_data_by_pco"

    if-eqz p1, :cond_1

    move v2, v3

    .line 3446
    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3448
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRestrictBackgroundByPco() save PCO: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyPco()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    if-eqz p1, :cond_3

    .line 3453
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3454
    const-string/jumbo v5, "background_data_by_user"

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v6, :cond_2

    .line 3453
    :goto_2
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3455
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRestrictBackgroundByPco() save USER: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyUser()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 3447
    goto :goto_1

    :cond_2
    move v3, v4

    .line 3454
    goto :goto_2

    .line 3461
    :cond_3
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyUser()Z

    move-result v1

    .line 3462
    .local v1, "restrictBackgroundbyUser":Z
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRestrictBackgroundByPco() PCO false, restore by USER: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    if-eqz v1, :cond_4

    .line 3465
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    goto/16 :goto_0

    .line 3467
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    goto/16 :goto_0

    .line 3472
    .end local v1    # "restrictBackgroundbyUser":Z
    :cond_5
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "setRestrictBackgroundByPco() is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setRoamingReduction(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 3492
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3494
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    .line 3495
    const-string/jumbo v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    .line 3494
    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3496
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3497
    const-string/jumbo v2, "SPR-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3498
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRrEnabledInCscChameleon:Z

    if-eqz v2, :cond_2

    .line 3504
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3505
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3506
    .local v1, "oldPolicy":I
    if-eq v1, p2, :cond_1

    .line 3507
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidRoamingPolicyUncheckedLocked(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 3491
    return-void

    .line 3499
    .end local v1    # "oldPolicy":I
    :cond_2
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "setRoamingReduction API allows only SPR model"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    return-void

    .line 3504
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setUidPolicy(II)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2533
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v7, "NetworkPolicy"

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2536
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot apply policy to UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2539
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2540
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .line 2542
    .local v4, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2544
    .local v1, "oldPolicy":I
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 2545
    .local v0, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    if-eqz v0, :cond_1

    .line 2546
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    .line 2547
    .local v2, "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    if-eqz v2, :cond_1

    .line 2548
    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2549
    const/4 p2, 0x0

    .line 2554
    .end local v2    # "rp":Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    :cond_1
    if-eq v1, p2, :cond_2

    .line 2555
    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2558
    :cond_2
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    .line 2532
    return-void

    .line 2557
    .end local v0    # "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .end local v1    # "oldPolicy":I
    :catchall_0
    move-exception v3

    .line 2558
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2557
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2539
    .end local v4    # "token":J
    :catchall_1
    move-exception v3

    monitor-exit v6

    throw v3
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3133
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3137
    .local v0, "token":J
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3132
    return-void

    .line 3138
    :catchall_0
    move-exception v2

    .line 3139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3138
    throw v2
.end method

.method public systemReady()V
    .locals 30

    .prologue
    .line 798
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v25

    if-nez v25, :cond_0

    .line 799
    const-string/jumbo v25, "NetworkPolicy"

    const-string/jumbo v26, "bandwidth controls disabled, unable to enforce policy"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return-void

    .line 803
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v25

    const-string/jumbo v26, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 804
    .local v9, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string/jumbo v25, "SPR-"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "phone"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 807
    const-string/jumbo v25, "NetworkPolicy"

    const-string/jumbo v26, "listener registered"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 813
    const-string/jumbo v25, "NetworkPolicy"

    const-string/jumbo v26, "rrChanged intent registered"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance v17, Landroid/content/IntentFilter;

    const-string/jumbo v25, "android.intent.action.CHAMELEON_RR_UPDATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 815
    .local v17, "rrChanged":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCscChameleonUpdateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    move-object/from16 v3, v28

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 817
    const-string/jumbo v25, "ro.home.operator.rrenabled"

    const-string/jumbo v26, "1"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "0"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 818
    const-string/jumbo v25, "NetworkPolicy"

    const-string/jumbo v26, "mRrEnabledInCscChameleon = false"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/16 v25, 0x0

    sput-boolean v25, Lcom/android/server/net/NetworkPolicyManagerService;->mRrEnabledInCscChameleon:Z

    .line 824
    .end local v17    # "rrChanged":Landroid/content/IntentFilter;
    :cond_2
    const-class v25, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static/range {v25 .. v25}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 826
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v25

    const-string/jumbo v26, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 827
    .local v11, "cscValues":Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string/jumbo v25, "trafficmanager"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 829
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/os/INetworkManagementService;->buildFirewall()V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "user_restrict_background_uidlist"

    invoke-static/range {v26 .. v26}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackGroundDataSetObserver:Landroid/database/ContentObserver;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 831
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getBackgroundDataRestrictList()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserRestrictBackgroundUidList:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 837
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageMonitor:Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v27

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v29, 0x1

    invoke-virtual/range {v25 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 840
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistLocked()V

    .line 841
    const-class v25, Landroid/os/PowerManagerInternal;

    invoke-static/range {v25 .. v25}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/PowerManagerInternal;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v25, v0

    .line 843
    new-instance v27, Lcom/android/server/net/NetworkPolicyManagerService$24;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$24;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 842
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-class v27, Landroid/os/BatteryManager;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/BatteryManager;

    invoke-virtual/range {v25 .. v25}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    .line 857
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundInLowerPowerMode()Z

    move-result v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingState:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    :cond_4
    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v27, "low_power_back_data_off"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    .line 860
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v27, "ultra_power_mode_back_data_off"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInMaxLowPowerObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    .line 862
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 866
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 869
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyLocked()V

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsLocked()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 875
    :cond_5
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v26

    .line 879
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    .line 882
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    move-object/from16 v26, v0

    .line 883
    const/16 v27, 0x3

    .line 882
    invoke-interface/range {v25 .. v27}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;I)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 892
    :goto_2
    new-instance v18, Landroid/content/IntentFilter;

    invoke-direct/range {v18 .. v18}, Landroid/content/IntentFilter;-><init>()V

    .line 893
    .local v18, "screenFilter":Landroid/content/IntentFilter;
    const-string/jumbo v25, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 894
    const-string/jumbo v25, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 898
    new-instance v22, Landroid/content/IntentFilter;

    .line 899
    const-string/jumbo v25, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 898
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 900
    .local v22, "whitelistFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v28

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 903
    const-class v25, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static/range {v25 .. v25}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/DeviceIdleController$LocalService;

    .line 904
    .local v12, "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/android/server/DeviceIdleController$LocalService;->setNetworkPolicyTempWhitelistCallback(Ljava/lang/Runnable;)V

    .line 907
    new-instance v10, Landroid/content/IntentFilter;

    const-string/jumbo v25, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 908
    .local v10, "connFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 911
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 912
    .local v16, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v25, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 913
    const-string/jumbo v25, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 914
    const-string/jumbo v25, "package"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    move-object/from16 v3, v28

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    new-instance v27, Landroid/content/IntentFilter;

    const-string/jumbo v28, "android.intent.action.UID_REMOVED"

    invoke-direct/range {v27 .. v28}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    .line 918
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v29

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 922
    new-instance v21, Landroid/content/IntentFilter;

    invoke-direct/range {v21 .. v21}, Landroid/content/IntentFilter;-><init>()V

    .line 923
    .local v21, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v25, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 924
    const-string/jumbo v25, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-object/from16 v3, v28

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 928
    new-instance v20, Landroid/content/IntentFilter;

    const-string/jumbo v25, "com.android.server.action.NETWORK_STATS_UPDATED"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 929
    .local v20, "statsFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    const-string/jumbo v27, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    .line 929
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 933
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v25, "com.android.server.net.action.ALLOW_BACKGROUND"

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 934
    .local v5, "allowFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    const-string/jumbo v27, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 937
    new-instance v19, Landroid/content/IntentFilter;

    const-string/jumbo v25, "com.android.server.net.action.SNOOZE_WARNING"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 938
    .local v19, "snoozeWarningFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    .line 939
    const-string/jumbo v27, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    .line 938
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 942
    new-instance v23, Landroid/content/IntentFilter;

    const-string/jumbo v25, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 943
    .local v23, "wifiConfigFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 946
    new-instance v24, Landroid/content/IntentFilter;

    .line 947
    const-string/jumbo v25, "android.net.wifi.STATE_CHANGE"

    .line 946
    invoke-direct/range {v24 .. v25}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 948
    .local v24, "wifiStateFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, v28

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;)V

    invoke-virtual/range {v25 .. v26}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 953
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 954
    .local v7, "chargingStateFilter":Landroid/content/IntentFilter;
    const-string/jumbo v25, "android.os.action.CHARGING"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 955
    const-string/jumbo v25, "android.os.action.DISCHARGING"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingStateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 961
    const-string/jumbo v25, "NetworkPolicy"

    const-string/jumbo v26, ">> NetworkPolicyManagerService"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    new-instance v15, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 963
    .local v15, "mVideoCallReceiver":Landroid/content/BroadcastReceiver;
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 964
    .local v6, "callFilter":Landroid/content/IntentFilter;
    const-string/jumbo v25, "android.intent.action.PRECISE_CALL_STATE"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 966
    const-string/jumbo v25, "NetworkPolicy"

    const-string/jumbo v26, "<< NetworkPolicyManagerService"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance v14, Landroid/content/IntentFilter;

    const-string/jumbo v25, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 970
    .local v14, "localeChanged":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 973
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v25, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 974
    .local v8, "configChanged":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConfigReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDensityDpi:I

    .line 797
    return-void

    .line 857
    .end local v5    # "allowFilter":Landroid/content/IntentFilter;
    .end local v6    # "callFilter":Landroid/content/IntentFilter;
    .end local v7    # "chargingStateFilter":Landroid/content/IntentFilter;
    .end local v8    # "configChanged":Landroid/content/IntentFilter;
    .end local v10    # "connFilter":Landroid/content/IntentFilter;
    .end local v12    # "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v14    # "localeChanged":Landroid/content/IntentFilter;
    .end local v15    # "mVideoCallReceiver":Landroid/content/BroadcastReceiver;
    .end local v16    # "packageFilter":Landroid/content/IntentFilter;
    .end local v18    # "screenFilter":Landroid/content/IntentFilter;
    .end local v19    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .end local v20    # "statsFilter":Landroid/content/IntentFilter;
    .end local v21    # "userFilter":Landroid/content/IntentFilter;
    .end local v22    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v23    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .end local v24    # "wifiStateFilter":Landroid/content/IntentFilter;
    :cond_6
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 839
    :catchall_0
    move-exception v25

    monitor-exit v26

    throw v25

    .line 885
    :catch_0
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    .line 832
    .end local v13    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .restart local v13    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 3016
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3014
    return-void
.end method

.method updateNetworkEnabledLocked()V
    .locals 20

    .prologue
    .line 1798
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1799
    .local v8, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string/jumbo v2, "VZW-"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1800
    :cond_0
    const-string/jumbo v2, "ATT"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    move-result v2

    .line 1799
    if-nez v2, :cond_1

    .line 1800
    const-string/jumbo v2, "TMO"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isNaGsm(Ljava/lang/String;)Z

    move-result v2

    .line 1799
    if-eqz v2, :cond_2

    .line 1801
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateVideoCallLocked()V

    .line 1808
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v6

    .line 1809
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_8

    .line 1810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkPolicy;

    .line 1812
    .local v15, "policy":Landroid/net/NetworkPolicy;
    iget-wide v2, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v18, -0x1

    cmp-long v2, v2, v18

    if-eqz v2, :cond_4

    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1821
    invoke-static {v6, v7, v15}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1822
    .local v4, "start":J
    move-wide v10, v6

    .line 1823
    .local v10, "end":J
    iget-object v3, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v16

    .line 1826
    .local v16, "totalBytes":J
    invoke-virtual/range {v15 .. v17}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-eqz v2, :cond_5

    :cond_3
    const/4 v14, 0x0

    .line 1828
    .local v14, "overLimitWithoutSnooze":Z
    :goto_1
    if-eqz v14, :cond_7

    const/4 v13, 0x0

    .line 1830
    .local v13, "networkEnabled":Z
    :goto_2
    :try_start_0
    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1809
    .end local v4    # "start":J
    .end local v10    # "end":J
    .end local v13    # "networkEnabled":Z
    .end local v14    # "overLimitWithoutSnooze":Z
    .end local v16    # "totalBytes":J
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 1814
    :cond_4
    :try_start_1
    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1815
    :catch_0
    move-exception v9

    .line 1816
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1827
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "start":J
    .restart local v10    # "end":J
    .restart local v16    # "totalBytes":J
    :cond_5
    iget-wide v2, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    const/4 v2, 0x1

    :goto_4
    move v14, v2

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 1828
    .restart local v14    # "overLimitWithoutSnooze":Z
    :cond_7
    const/4 v13, 0x1

    .restart local v13    # "networkEnabled":Z
    goto :goto_2

    .line 1831
    :catch_1
    move-exception v9

    .line 1832
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1794
    .end local v4    # "start":J
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "end":J
    .end local v13    # "networkEnabled":Z
    .end local v14    # "overLimitWithoutSnooze":Z
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    .end local v16    # "totalBytes":J
    :cond_8
    return-void
.end method

.method updateNetworkRulesLocked()V
    .locals 44

    .prologue
    .line 1910
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v37

    .line 1918
    .local v37, "states":[Landroid/net/NetworkState;
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    array-length v6, v0

    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1919
    .local v13, "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    new-instance v14, Landroid/util/ArraySet;

    move-object/from16 v0, v37

    array-length v6, v0

    invoke-direct {v14, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 1920
    .local v14, "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object/from16 v0, v37

    array-length v7, v0

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v36, v37, v6

    .line 1921
    .local v36, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v40, v0

    if-eqz v40, :cond_3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v40

    if-eqz v40, :cond_3

    .line 1922
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 1923
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v40, v0

    .line 1924
    const/16 v41, 0x0

    .line 1923
    invoke-virtual/range {v40 .. v41}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 1925
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v40, v0

    .line 1926
    const/16 v41, 0x13

    .line 1925
    invoke-virtual/range {v40 .. v41}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v40

    .line 1922
    if-nez v40, :cond_0

    .line 1927
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v40, v0

    .line 1928
    const/16 v41, 0xc

    .line 1927
    invoke-virtual/range {v40 .. v41}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v40

    .line 1921
    if-eqz v40, :cond_3

    .line 1929
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v19

    .line 1931
    .local v19, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .line 1932
    .local v12, "baseIface":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 1933
    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    :cond_1
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v35

    .line 1939
    .local v35, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "stackedLink$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_3

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/net/LinkProperties;

    .line 1940
    .local v33, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v33 .. v33}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v32

    .line 1941
    .local v32, "stackedIface":Ljava/lang/String;
    if-eqz v32, :cond_2

    .line 1942
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1911
    .end local v12    # "baseIface":Ljava/lang/String;
    .end local v13    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .end local v14    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "ident":Landroid/net/NetworkIdentity;
    .end local v32    # "stackedIface":Ljava/lang/String;
    .end local v33    # "stackedLink":Landroid/net/LinkProperties;
    .end local v34    # "stackedLink$iterator":Ljava/util/Iterator;
    .end local v35    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v36    # "state":Landroid/net/NetworkState;
    .end local v37    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v15

    .line 1913
    .local v15, "e":Landroid/os/RemoteException;
    return-void

    .line 1920
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v13    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .restart local v14    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "state":Landroid/net/NetworkState;
    .restart local v37    # "states":[Landroid/net/NetworkState;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1949
    .end local v36    # "state":Landroid/net/NetworkState;
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 1950
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .line 1951
    .local v22, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    .local v18, "i":I
    :goto_2
    if-ltz v18, :cond_8

    .line 1952
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/net/NetworkPolicy;

    .line 1954
    .local v29, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1955
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v24, v6, -0x1

    .local v24, "j":I
    :goto_3
    if-ltz v24, :cond_6

    .line 1956
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .line 1957
    .local v20, "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/net/NetworkIdentity;

    invoke-virtual {v7, v6}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1958
    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1955
    :cond_5
    add-int/lit8 v24, v24, -0x1

    goto :goto_3

    .line 1962
    .end local v20    # "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    :cond_6
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 1963
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    .line 1964
    .local v23, "ifaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    .end local v23    # "ifaces":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    .line 1968
    .end local v24    # "j":I
    .end local v29    # "policy":Landroid/net/NetworkPolicy;
    :cond_8
    const-wide v26, 0x7fffffffffffffffL

    .line 1969
    .local v26, "lowestRule":J
    new-instance v28, Landroid/util/ArraySet;

    move-object/from16 v0, v37

    array-length v6, v0

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 1973
    .local v28, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v10

    .line 1974
    .local v10, "currentTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    :goto_4
    if-ltz v18, :cond_15

    .line 1975
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/net/NetworkPolicy;

    .line 1976
    .restart local v29    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    .line 1980
    .restart local v23    # "ifaces":[Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1981
    move-object/from16 v0, v29

    invoke-static {v10, v11, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1982
    .local v8, "start":J
    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v38

    .line 1992
    .local v38, "totalBytes":J
    :goto_5
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v40, -0x1

    cmp-long v6, v6, v40

    if-eqz v6, :cond_c

    const/16 v17, 0x1

    .line 1993
    .local v17, "hasWarning":Z
    :goto_6
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v40, -0x1

    cmp-long v6, v6, v40

    if-eqz v6, :cond_d

    const/16 v16, 0x1

    .line 1994
    .local v16, "hasLimit":Z
    :goto_7
    if-nez v16, :cond_9

    move-object/from16 v0, v29

    iget-boolean v6, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v6, :cond_11

    .line 1997
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    if-eqz v6, :cond_e

    .line 1998
    const-wide v30, 0x7fffffffffffffffL

    .line 2015
    .local v30, "quotaBytes":J
    :goto_8
    move-object/from16 v0, v23

    array-length v6, v0

    const/4 v7, 0x1

    if-le v6, v7, :cond_a

    .line 2017
    const-string/jumbo v6, "NetworkPolicy"

    const-string/jumbo v7, "shared quota unsupported; generating rule for each iface"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :cond_a
    const/4 v6, 0x0

    move-object/from16 v0, v23

    array-length v7, v0

    :goto_9
    if-ge v6, v7, :cond_11

    aget-object v21, v23, v6

    .line 2022
    .local v21, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    .line 2023
    const/16 v41, 0x20

    shr-long v42, v30, v41

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v41, v0

    const-wide/16 v42, -0x1

    and-long v42, v42, v30

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v42, v0

    .line 2022
    const/16 v43, 0xa

    move-object/from16 v0, v40

    move/from16 v1, v43

    move/from16 v2, v41

    move/from16 v3, v42

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/os/Message;->sendToTarget()V

    .line 2025
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2020
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1984
    .end local v8    # "start":J
    .end local v16    # "hasLimit":Z
    .end local v17    # "hasWarning":Z
    .end local v21    # "iface":Ljava/lang/String;
    .end local v30    # "quotaBytes":J
    .end local v38    # "totalBytes":J
    :cond_b
    const-wide v8, 0x7fffffffffffffffL

    .line 1985
    .restart local v8    # "start":J
    const-wide/16 v38, 0x0

    .restart local v38    # "totalBytes":J
    goto/16 :goto_5

    .line 1992
    :cond_c
    const/16 v17, 0x0

    .restart local v17    # "hasWarning":Z
    goto :goto_6

    .line 1993
    :cond_d
    const/16 v16, 0x0

    goto :goto_7

    .line 2000
    .restart local v16    # "hasLimit":Z
    :cond_e
    if-nez v16, :cond_f

    .line 2003
    const-wide v30, 0x7fffffffffffffffL

    .restart local v30    # "quotaBytes":J
    goto :goto_8

    .line 2004
    .end local v30    # "quotaBytes":J
    :cond_f
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_10

    .line 2007
    const-wide v30, 0x7fffffffffffffffL

    .restart local v30    # "quotaBytes":J
    goto :goto_8

    .line 2012
    .end local v30    # "quotaBytes":J
    :cond_10
    const-wide/16 v6, 0x1

    move-object/from16 v0, v29

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v40, v0

    sub-long v40, v40, v38

    move-wide/from16 v0, v40

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v30

    .restart local v30    # "quotaBytes":J
    goto/16 :goto_8

    .line 2031
    .end local v30    # "quotaBytes":J
    :cond_11
    if-eqz v17, :cond_12

    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v6, v6, v26

    if-gez v6, :cond_12

    .line 2032
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v6, v6, v38

    if-lez v6, :cond_12

    .line 2033
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    sub-long v6, v6, v38

    const-wide/16 v40, 0x2

    div-long v26, v6, v40

    .line 2036
    :cond_12
    if-eqz v16, :cond_13

    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v6, v6, v26

    if-gez v6, :cond_13

    .line 2037
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v6, v6, v38

    if-lez v6, :cond_14

    .line 2038
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v6, v6, v38

    const-wide/16 v40, 0x2

    div-long v26, v6, v40

    .line 1974
    :cond_13
    :goto_a
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_4

    .line 2041
    :cond_14
    const-wide/32 v26, 0x200000

    goto :goto_a

    .line 2047
    .end local v8    # "start":J
    .end local v16    # "hasLimit":Z
    .end local v17    # "hasWarning":Z
    .end local v23    # "ifaces":[Ljava/lang/String;
    .end local v29    # "policy":Landroid/net/NetworkPolicy;
    .end local v38    # "totalBytes":J
    :cond_15
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    :goto_b
    if-ltz v18, :cond_16

    .line 2048
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 2050
    .restart local v21    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    .line 2051
    const v40, 0x7fffffff

    const/16 v41, -0x1

    .line 2050
    move/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v21

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2053
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2047
    add-int/lit8 v18, v18, -0x1

    goto :goto_b

    .line 2056
    .end local v21    # "iface":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v40, 0x7

    move/from16 v0, v40

    invoke-virtual {v6, v0, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2059
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    :goto_c
    if-ltz v18, :cond_18

    .line 2060
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 2061
    .restart local v21    # "iface":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 2062
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    move-object/from16 v0, v21

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2059
    :cond_17
    add-int/lit8 v18, v18, -0x1

    goto :goto_c

    .line 2066
    .end local v21    # "iface":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 2068
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/String;

    .line 2069
    .local v25, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1905
    return-void
.end method

.method updateNotificationsLocked()V
    .locals 22

    .prologue
    .line 1364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v20

    .line 1367
    .local v20, "ultraPwrEnabled":Z
    new-instance v10, Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v10, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1368
    .local v10, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 1374
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 1375
    .local v8, "currentTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_8

    .line 1376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/NetworkPolicy;

    .line 1378
    .local v16, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1375
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 1379
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1381
    move-object/from16 v0, v16

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1382
    .local v6, "start":J
    move-wide v12, v8

    .line 1383
    .local v12, "end":J
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v18

    .line 1384
    .local v18, "totalBytes":J
    const-string/jumbo v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "updateNotificationsLocked() - totalBytes : "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v21, ", policy : "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-eqz v4, :cond_5

    .line 1397
    :cond_2
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    .line 1398
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1399
    .local v11, "cscValues":Ljava/lang/String;
    if-eqz v11, :cond_4

    const-string/jumbo v4, "trafficmanager"

    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1400
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 1401
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->DataWarningFlag:Z

    if-eqz v4, :cond_7

    .line 1405
    :cond_3
    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->DataWarningFlag:Z

    if-eqz v4, :cond_4

    .line 1406
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->DataWarningFlag:Z

    .line 1407
    const-string/jumbo v4, "com.samsung.intent.action.ACTION_DATA_WARNING_CANCEL"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1411
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_2
    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 1412
    if-nez v20, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto/16 :goto_1

    .line 1387
    .end local v11    # "cscValues":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v16

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    .line 1388
    if-nez v20, :cond_0

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto/16 :goto_1

    .line 1390
    :cond_6
    if-nez v20, :cond_0

    .line 1391
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    .line 1392
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto/16 :goto_1

    .line 1402
    .restart local v11    # "cscValues":Ljava/lang/String;
    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->DataWarningFlag:Z

    .line 1403
    const-string/jumbo v4, "com.samsung.intent.action.ACTION_DATA_WARNING"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 1418
    .end local v6    # "start":J
    .end local v11    # "cscValues":Ljava/lang/String;
    .end local v12    # "end":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "policy":Landroid/net/NetworkPolicy;
    .end local v18    # "totalBytes":J
    :cond_8
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    :goto_3
    if-ltz v14, :cond_a

    .line 1419
    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1420
    .local v17, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1421
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    .line 1418
    :cond_9
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .line 1361
    .end local v17    # "tag":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method updatePowerSaveTempWhitelistLocked()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 770
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 771
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 772
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 771
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 775
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v6}, Landroid/os/IDeviceIdleController;->getAppIdTempWhitelist()[I

    move-result-object v4

    .line 776
    .local v4, "whitelist":[I
    if-eqz v4, :cond_1

    .line 777
    array-length v6, v4

    :goto_1
    if-ge v5, v6, :cond_1

    aget v3, v4, v5

    .line 778
    .local v3, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 781
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "uid":I
    .end local v4    # "whitelist":[I
    :catch_0
    move-exception v1

    .line 767
    :cond_1
    return-void
.end method

.method updatePowerSaveWhitelistLocked()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 649
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v2

    .line 650
    .local v2, "whitelist":[I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 651
    if-eqz v2, :cond_0

    .line 652
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget v1, v2, v4

    .line 653
    .local v1, "uid":I
    const-string/jumbo v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePowerSaveWhitelistLocked, uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 652
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 657
    .end local v1    # "uid":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v2

    .line 658
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 659
    if-eqz v2, :cond_1

    .line 660
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    .line 661
    .restart local v1    # "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 664
    .end local v1    # "uid":I
    .end local v2    # "whitelist":[I
    :catch_0
    move-exception v0

    .line 647
    :cond_1
    return-void
.end method

.method updateRuleForAppIdleLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x2

    .line 4282
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4284
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4285
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4286
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4289
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 4281
    :goto_0
    return-void

    .line 4287
    :cond_2
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_0
.end method

.method updateRuleForDeviceIdleLocked(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 4190
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveLocked(IZI)V

    .line 4189
    return-void
.end method

.method updateRuleForRestrictPowerLocked(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 4181
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveLocked(IZI)V

    .line 4180
    return-void
.end method

.method updateRulesForAppIdleLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    .line 4258
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 4259
    .local v3, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 4262
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 4263
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "ui":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4264
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4265
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v0

    .line 4266
    .local v0, "idleUids":[I
    array-length v8, v0

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_1

    aget v2, v0, v6

    .line 4267
    .local v2, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-virtual {v9, v10, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-nez v9, :cond_0

    .line 4271
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4272
    invoke-virtual {v3, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 4266
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4263
    .end local v2    # "uid":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4278
    .end local v0    # "idleUids":[I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-direct {p0, v11, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    .line 4257
    return-void
.end method

.method updateRulesForAppIdleParoleLocked()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4294
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v2}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 4295
    .local v0, "enableChain":Z
    :goto_0
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    .line 4297
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 4293
    return-void

    .line 4294
    .end local v0    # "enableChain":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateRulesForDeviceIdleLocked()V
    .locals 3

    .prologue
    .line 4185
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 4186
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 4185
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveLocked(ZILandroid/util/SparseIntArray;)V

    .line 4184
    return-void
.end method

.method updateRulesForRestrictPowerLocked()V
    .locals 3

    .prologue
    .line 4176
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 4177
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 4176
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveLocked(ZILandroid/util/SparseIntArray;)V

    .line 4175
    return-void
.end method

.method writePolicyLocked()V
    .locals 14

    .prologue
    .line 2414
    const/4 v1, 0x0

    .line 2416
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 2418
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2419
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2420
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2422
    const-string/jumbo v11, "policy-list"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2423
    const-string/jumbo v11, "version"

    const/16 v12, 0xa

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2424
    const-string/jumbo v11, "restrictBackground"

    iget-boolean v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2427
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v2, v11, :cond_4

    .line 2428
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    .line 2429
    .local v6, "policy":Landroid/net/NetworkPolicy;
    iget-object v9, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2430
    .local v9, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2427
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2432
    :cond_0
    const-string/jumbo v11, "network-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2433
    const-string/jumbo v11, "networkTemplate"

    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v12

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2434
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    .line 2435
    .local v8, "subscriberId":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 2436
    const-string/jumbo v11, "subscriberId"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2438
    :cond_1
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .line 2439
    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2440
    const-string/jumbo v11, "networkId"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2442
    :cond_2
    const-string/jumbo v11, "cycleDay"

    iget v12, v6, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2443
    const-string/jumbo v11, "cycleTimezone"

    iget-object v12, v6, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v4, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2444
    const-string/jumbo v11, "warningBytes"

    iget-wide v12, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2445
    const-string/jumbo v11, "limitBytes"

    iget-wide v12, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2446
    const-string/jumbo v11, "lastWarningSnooze"

    iget-wide v12, v6, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2447
    const-string/jumbo v11, "lastLimitSnooze"

    iget-wide v12, v6, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2448
    const-string/jumbo v11, "metered"

    iget-boolean v12, v6, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2449
    const-string/jumbo v11, "inferred"

    iget-boolean v12, v6, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2450
    const-string/jumbo v11, "network-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2524
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "i":I
    .end local v3    # "networkId":Ljava/lang/String;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "policy":Landroid/net/NetworkPolicy;
    .end local v8    # "subscriberId":Ljava/lang/String;
    .end local v9    # "template":Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v0

    .line 2525
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 2526
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v11, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2411
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void

    .line 2454
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "i":I
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_4
    const/4 v2, 0x0

    :goto_3
    :try_start_1
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v2, v11, :cond_6

    .line 2455
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 2456
    .local v10, "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 2459
    .local v5, "policy":I
    if-nez v5, :cond_5

    .line 2454
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2461
    :cond_5
    const-string/jumbo v11, "uid-roaming-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2462
    const-string/jumbo v11, "uid"

    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2463
    const-string/jumbo v11, "policy"

    invoke-static {v4, v11, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2464
    const-string/jumbo v11, "uid-roaming-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    .line 2469
    .end local v5    # "policy":I
    .end local v10    # "uid":I
    :cond_6
    const/4 v2, 0x0

    :goto_5
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v2, v11, :cond_8

    .line 2470
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 2471
    .restart local v10    # "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 2474
    .restart local v5    # "policy":I
    if-nez v5, :cond_7

    .line 2469
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2476
    :cond_7
    const-string/jumbo v11, "firewall-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2477
    const-string/jumbo v11, "uid"

    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2478
    const-string/jumbo v11, "policy"

    invoke-static {v4, v11, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2479
    const-string/jumbo v11, "firewall-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    .line 2483
    .end local v5    # "policy":I
    .end local v10    # "uid":I
    :cond_8
    const/4 v2, 0x0

    :goto_7
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v2, v11, :cond_a

    .line 2484
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 2485
    .restart local v10    # "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 2488
    .restart local v5    # "policy":I
    if-nez v5, :cond_9

    .line 2483
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2490
    :cond_9
    const-string/jumbo v11, "uid-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2491
    const-string/jumbo v11, "uid"

    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2492
    const-string/jumbo v11, "policy"

    invoke-static {v4, v11, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2493
    const-string/jumbo v11, "uid-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 2496
    .end local v5    # "policy":I
    .end local v10    # "uid":I
    :cond_a
    const-string/jumbo v11, "policy-list"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2499
    const-string/jumbo v11, "whitelist"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2502
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2503
    .local v7, "size":I
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v7, :cond_b

    .line 2504
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 2505
    .restart local v10    # "uid":I
    const-string/jumbo v11, "restrict-background"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2506
    const-string/jumbo v11, "uid"

    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2507
    const-string/jumbo v11, "restrict-background"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2503
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2511
    .end local v10    # "uid":I
    :cond_b
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2512
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v7, :cond_c

    .line 2513
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 2514
    .restart local v10    # "uid":I
    const-string/jumbo v11, "revoked-restrict-background"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2515
    const-string/jumbo v11, "uid"

    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2516
    const-string/jumbo v11, "revoked-restrict-background"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2512
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2519
    .end local v10    # "uid":I
    :cond_c
    const-string/jumbo v11, "whitelist"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2521
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2523
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v11, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
