.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$1;,
        Lcom/android/server/connectivity/Vpn$2;,
        Lcom/android/server/connectivity/Vpn$Connection;,
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    }
.end annotation


# static fields
.field private static final ANDROID_BC_PROVIDER:Ljava/lang/String; = "AndroidKeyStoreBCWorkaroundProvider"

.field private static final CC_PROPERTY:Ljava/lang/String; = "security.mdpp"

.field private static final DBG:Z

.field private static final LOGD:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final PER_APP_VPN:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field private static mSecurityManager:Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;


# instance fields
.field private final KNOXVPN_CONTAINER_ENABLED:I

.field private KNOXVPN_FEATURE:I

.field private final KNOXVPN_MDM_ENABLED:I

.field private mAddress:Ljava/lang/String;

.field private mAlwaysOn:Z

.field private mBlockedUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEgressIface:Ljava/lang/String;

.field private volatile mEnableLockdownVpn:Z

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mIsPackageIntentReceiverRegistered:Z

.field private mKnoxOldInterface:Ljava/lang/String;

.field private mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

.field private mLegacyAddress:Ljava/lang/String;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mLockdown:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mProfileName:Ljava/lang/String;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private mTun_type:I

.field private final mUserHandle:I

.field private mV6Address:Ljava/lang/String;

.field private mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

.field private mVpnUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field private mdppModeEnabled:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Vpn;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/Vpn;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/Vpn;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/connectivity/Vpn;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/connectivity/Vpn;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mTun_type:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/connectivity/Vpn;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/connectivity/Vpn;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mdppModeEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableLockdownVpn:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/Vpn;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/server/connectivity/Vpn;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/Vpn;->mTun_type:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/server/connectivity/Vpn;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/connectivity/Vpn;Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->securityManagerReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->setAndSaveAlwaysOnPackage(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->testStrongSwanIntegrity()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .locals 1
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "block"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->SetFirewallForVPN_CCMode(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p1, "user"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/Vpn;->DBG:Z

    .line 304
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
    .locals 6
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 196
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mEnableLockdownVpn:Z

    .line 207
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 214
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 227
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    .line 235
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    .line 245
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;

    .line 247
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;

    .line 248
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;

    .line 249
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    .line 250
    iput v5, p0, Lcom/android/server/connectivity/Vpn;->mTun_type:I

    .line 251
    iput v3, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_MDM_ENABLED:I

    .line 252
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_CONTAINER_ENABLED:I

    .line 263
    new-instance v1, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    .line 302
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mdppModeEnabled:Z

    .line 1257
    new-instance v1, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 308
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 309
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    .line 310
    iput p4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 311
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 313
    const-string/jumbo v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    new-instance v1, Landroid/net/NetworkInfo;

    const-string/jumbo v2, "VPN"

    const-string/jumbo v3, ""

    const/16 v4, 0x11

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 324
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 325
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 326
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 307
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Vpn"

    const-string/jumbo v2, "Problem registering observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private SetFirewallForVPN_CCMode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "block"    # Z

    .prologue
    .line 2755
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2756
    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "CC Mode is enforced"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    if-eqz p2, :cond_1

    .line 2758
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_0

    .line 2760
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 2761
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v3, 0x1f4

    const/4 v4, 0x1

    invoke-interface {v2, p1, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2762
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v3, 0x1194

    const/4 v4, 0x1

    invoke-interface {v2, p1, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2763
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v3, 0x6a5

    const/4 v4, 0x1

    invoke-interface {v2, p1, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2764
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "ipsec0"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 2765
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mLegacyAddress:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 2766
    const-string/jumbo v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetFirewallForVPN_CCMode enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2770
    .local v0, "clatIpv6addr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v3, 0x1f4

    const/4 v4, 0x1

    invoke-interface {v2, v0, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2771
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v3, 0x1194

    const/4 v4, 0x1

    invoke-interface {v2, v0, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2772
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/16 v3, 0x6a5

    const/4 v4, 0x1

    invoke-interface {v2, v0, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 2773
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "fe80::/64"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 2774
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "2000::/4"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 2775
    const-string/jumbo v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetFirewallForVPN_CCMode enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2754
    .end local v0    # "clatIpv6addr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2776
    :catch_0
    move-exception v1

    .line 2777
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "Exception when enabling SetFirewallForVPN_CCMode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2783
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_0

    .line 2784
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 2785
    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "SetFirewallForVPN_CCMode disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2787
    :catch_1
    move-exception v1

    .line 2788
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "Exception when disabling SetFirewallForVPN_CCMode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private agentConnect()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xc

    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 753
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 755
    .local v7, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 761
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    new-instance v9, Landroid/net/NetworkMisc;

    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    .line 764
    .local v9, "networkMisc":Landroid/net/NetworkMisc;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    iput-boolean v0, v9, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 768
    .local v10, "token":J
    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/Vpn$3;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "VPN"

    .line 769
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v8, 0x0

    move-object v1, p0

    .line 768
    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 780
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 779
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    .line 781
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V

    .line 783
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v12}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 784
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "agentConnect"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 752
    return-void

    .line 758
    .end local v9    # "networkMisc":Landroid/net/NetworkMisc;
    .end local v10    # "token":J
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .restart local v9    # "networkMisc":Landroid/net/NetworkMisc;
    :cond_3
    move v0, v12

    .line 764
    goto :goto_1

    .line 775
    .restart local v10    # "token":J
    :catchall_0
    move-exception v0

    .line 776
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    throw v0
.end method

.method private agentDisconnect()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 809
    :cond_0
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .locals 2
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    .line 805
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 806
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 804
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V
    .locals 2
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    const/4 v1, 0x0

    .line 797
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 798
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1, v0, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    if-eqz p2, :cond_0

    .line 800
    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 796
    :cond_0
    return-void
.end method

.method private canHaveRestrictedProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 790
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->canHaveRestrictedProfile(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 792
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 790
    return v2

    .line 791
    :catchall_0
    move-exception v2

    .line 792
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 791
    throw v2
.end method

.method private enforceControlPermission()V
    .locals 3

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONTROL_VPN"

    const-string/jumbo v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    return-void
.end method

.method private enforceControlPermissionOrInternalCaller()V
    .locals 3

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONTROL_VPN"

    .line 1309
    const-string/jumbo v2, "Unauthorized Caller"

    .line 1308
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    .line 1530
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "route$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1532
    .local v0, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 1533
    return-object v0

    .line 1537
    .end local v0    # "route":Landroid/net/RouteInfo;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .locals 4
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 676
    const-string/jumbo v3, "[Legacy VPN]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 677
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    return v3

    .line 679
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 682
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 686
    .local v2, "result":I
    :goto_0
    return v2

    .line 683
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .locals 5
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 944
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 945
    .local v3, "uids":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 946
    .local v0, "app":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v2

    .line 947
    .local v2, "uid":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    .end local v0    # "app":Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_1
    return-object v3
.end method

.method private getKnoxVpnFeature()I
    .locals 1

    .prologue
    .line 1916
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    .line 1918
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I

    return v0
.end method

.method private getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1924
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnFeature()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 1925
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_0

    .line 1927
    const-string/jumbo v0, "knox_vpn_policy"

    .line 1926
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 1932
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object v0

    .line 1930
    :cond_1
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    goto :goto_0
.end method

.method private getVpnTypeString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2807
    packed-switch p1, :pswitch_data_0

    .line 2825
    const-string/jumbo v0, ""

    return-object v0

    .line 2809
    :pswitch_0
    const-string/jumbo v0, "PPTP"

    return-object v0

    .line 2811
    :pswitch_1
    const-string/jumbo v0, "L2TP_IPSEC_RSA"

    return-object v0

    .line 2813
    :pswitch_2
    const-string/jumbo v0, "L2TP_IPSEC_PSK"

    return-object v0

    .line 2815
    :pswitch_3
    const-string/jumbo v0, "IPSEC_XAUTH_RSA"

    return-object v0

    .line 2817
    :pswitch_4
    const-string/jumbo v0, "IPSEC_XAUTH_PSK"

    return-object v0

    .line 2819
    :pswitch_5
    const-string/jumbo v0, "IPSEC_IKEV2_RSA"

    return-object v0

    .line 2821
    :pswitch_6
    const-string/jumbo v0, "IPSEC_IKEV2_PSK"

    return-object v0

    .line 2823
    :pswitch_7
    const-string/jumbo v0, "IPSEC_HYBRID_RSA"

    return-object v0

    .line 2807
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private hideNotification(I)V
    .locals 6
    .param p1, "user"    # I

    .prologue
    const/4 v1, 0x0

    .line 1376
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 1378
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1377
    check-cast v0, Landroid/app/NotificationManager;

    .line 1380
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 1381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1383
    .local v2, "token":J
    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    const v5, 0x1080b08

    invoke-virtual {v0, v4, v5, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1375
    .end local v2    # "token":J
    :cond_0
    return-void

    .line 1384
    .restart local v2    # "token":J
    :catchall_0
    move-exception v1

    .line 1385
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1384
    throw v1
.end method

.method private isCallerEstablishedOwnerLocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 939
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCurrentPreparedPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 575
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 396
    if-eqz p0, :cond_0

    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isRunningLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 933
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isVpnConnectionSecure([Ljava/lang/String;)Z
    .locals 5
    .param p1, "racoon"    # [Ljava/lang/String;

    .prologue
    .line 2739
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2740
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 2741
    const-string/jumbo v4, "enterprise_policy_new"

    .line 2740
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2742
    const/4 v0, 0x1

    .line 2743
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 2744
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getVpnPolicy()Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    .line 2746
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    if-eqz v1, :cond_1

    .line 2747
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnPolicy:Lcom/samsung/android/knox/net/vpn/VpnPolicy;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->checkRacoonSecurity([Ljava/lang/String;)Z

    move-result v0

    .line 2749
    .end local v0    # "result":Z
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2750
    return v0
.end method

.method private isVpnUserPreConsented(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 668
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 671
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(IZ)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .locals 18

    .prologue
    .line 698
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v4, v14, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 699
    .local v4, "allowIPv4":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v5, v14, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 701
    .local v5, "allowIPv6":Z
    new-instance v11, Landroid/net/LinkProperties;

    invoke-direct {v11}, Landroid/net/LinkProperties;-><init>()V

    .line 703
    .local v11, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v14, :cond_0

    .line 706
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "address$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 707
    .local v1, "address":Landroid/net/LinkAddress;
    invoke-virtual {v11, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 708
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    instance-of v14, v14, Ljava/net/Inet4Address;

    or-int/2addr v4, v14

    .line 709
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    instance-of v14, v14, Ljava/net/Inet6Address;

    or-int/2addr v5, v14

    goto :goto_0

    .line 713
    .end local v1    # "address":Landroid/net/LinkAddress;
    .end local v3    # "address$iterator":Ljava/util/Iterator;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v14, :cond_1

    .line 714
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "route$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/RouteInfo;

    .line 715
    .local v12, "route":Landroid/net/RouteInfo;
    invoke-virtual {v11, v12}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 716
    invoke-virtual {v12}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 717
    .local v2, "address":Ljava/net/InetAddress;
    instance-of v14, v2, Ljava/net/Inet4Address;

    or-int/2addr v4, v14

    .line 718
    instance-of v14, v2, Ljava/net/Inet6Address;

    or-int/2addr v5, v14

    goto :goto_1

    .line 722
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v12    # "route":Landroid/net/RouteInfo;
    .end local v13    # "route$iterator":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v14, :cond_2

    .line 723
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "dnsServer$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 724
    .local v7, "dnsServer":Ljava/lang/String;
    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 725
    .restart local v2    # "address":Ljava/net/InetAddress;
    invoke-virtual {v11, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 726
    instance-of v14, v2, Ljava/net/Inet4Address;

    or-int/2addr v4, v14

    .line 727
    instance-of v14, v2, Ljava/net/Inet6Address;

    or-int/2addr v5, v14

    goto :goto_2

    .line 731
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v7    # "dnsServer":Ljava/lang/String;
    .end local v8    # "dnsServer$iterator":Ljava/util/Iterator;
    :cond_2
    if-nez v4, :cond_3

    .line 732
    new-instance v14, Landroid/net/RouteInfo;

    new-instance v15, Landroid/net/IpPrefix;

    sget-object v16, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v16, 0x7

    invoke-direct/range {v14 .. v16}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 734
    :cond_3
    if-nez v5, :cond_4

    .line 735
    new-instance v14, Landroid/net/RouteInfo;

    new-instance v15, Landroid/net/IpPrefix;

    sget-object v16, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v16, 0x7

    invoke-direct/range {v14 .. v16}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 739
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    .local v6, "buffer":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v14, :cond_5

    .line 741
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "domain$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 742
    .local v9, "domain":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 745
    .end local v9    # "domain":Ljava/lang/String;
    .end local v10    # "domain$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 749
    return-object v11
.end method

.method private maybeRegisterPackageChangeReceiverLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 409
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->unregisterPackageChangeReceiverLocked()V

    .line 411
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    .line 414
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 416
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 420
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 421
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    move-object v5, v4

    .line 420
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 407
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .locals 10
    .param p1, "newPackage"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 583
    .local v2, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 584
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    if-eqz v6, :cond_0

    .line 585
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "uidRange$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/UidRange;

    .line 586
    .local v4, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v4}, Landroid/net/UidRange;->getStartUser()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 633
    .end local v4    # "uidRange":Landroid/net/UidRange;
    .end local v5    # "uidRange$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    .line 634
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    throw v6

    .line 589
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 590
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 591
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 592
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 593
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    .line 597
    :cond_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    if-eqz v6, :cond_3

    .line 599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 601
    .local v0, "data":Landroid/os/Parcel;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-static {v6}, Lcom/android/server/connectivity/Vpn$Connection;->-get0(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v6

    const v7, 0xffffff

    .line 602
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 601
    invoke-interface {v6, v7, v0, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 607
    :try_start_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    :goto_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 610
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 617
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_2
    :goto_2
    :try_start_4
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 622
    :goto_3
    :try_start_5
    const-string/jumbo v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Switched from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 624
    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v6}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 626
    :try_start_6
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 630
    :goto_4
    const/4 v6, 0x0

    :try_start_7
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 632
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v7, "prepare"

    invoke-direct {p0, v6, v7}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 634
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    return-void

    .line 603
    .restart local v0    # "data":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 607
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 605
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 605
    throw v6

    .line 611
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v6, :cond_2

    .line 612
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 613
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    goto :goto_2

    .line 618
    :catch_1
    move-exception v1

    .line 619
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to disallow UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to call protect() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 627
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 628
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to allow UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to call protect() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4
.end method

.method private prepareStatusIntent()V
    .locals 3

    .prologue
    .line 1327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1329
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1326
    return-void

    .line 1330
    :catchall_0
    move-exception v2

    .line 1331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    throw v2
.end method

.method private removeVpnUserLocked(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 1108
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1109
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "VPN is not active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1111
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    move-result-object v0

    .line 1112
    .local v0, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_1

    .line 1113
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/UidRange;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    invoke-virtual {v2, v1}, Landroid/net/NetworkAgent;->removeUidRanges([Landroid/net/UidRange;)V

    .line 1115
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1107
    return-void
.end method

.method private securityManagerReady()Z
    .locals 1

    .prologue
    .line 2832
    sget-object v0, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .locals 6
    .param p1, "enforce"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/UidRange;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/UidRange;>;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1221
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1222
    return v3

    .line 1224
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    .line 1226
    .local v1, "rangesArray":[Landroid/net/UidRange;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    if-eqz p1, :cond_1

    .line 1233
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1237
    :goto_0
    return v3

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Updating blocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1229
    const-string/jumbo v4, " for UIDs "

    .line 1228
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1229
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1228
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1229
    const-string/jumbo v4, " failed"

    .line 1228
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1230
    return v5

    .line 1235
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private declared-synchronized setAndSaveAlwaysOnPackage(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z

    .prologue
    monitor-enter p0

    .line 460
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 464
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVpnForcedLocked(Z)V
    .locals 6
    .param p1, "enforce"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1193
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1194
    .local v1, "removedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz p1, :cond_0

    .line 1195
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 1197
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1196
    const/4 v4, 0x0

    .line 1195
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 1199
    .local v0, "addedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1200
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1202
    invoke-direct {p0, v5, v1}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1203
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1192
    .end local v0    # "addedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :goto_0
    return-void

    .line 1205
    :cond_0
    invoke-direct {p0, v5, v1}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    goto :goto_0
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 7
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I

    .prologue
    .line 1359
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const-string/jumbo v5, "LOCKDOWN_VPN"

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1360
    const-string/jumbo v4, "Vpn"

    const-string/jumbo v5, "showNotification : LOCKDOWN_VPN"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return-void

    .line 1363
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1364
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_1

    .line 1365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1367
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/connectivity/Vpn;->createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 1368
    .local v1, "notification":Landroid/app/Notification;
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const v6, 0x1080b08

    invoke-virtual {v0, v5, v6, v1, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1356
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "token":J
    :cond_1
    return-void

    .line 1369
    .restart local v2    # "token":J
    :catchall_0
    move-exception v4

    .line 1370
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1369
    throw v4
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1856
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 1859
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 1860
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1863
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1864
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1855
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private testStrongSwanIntegrity()Z
    .locals 6

    .prologue
    .line 2836
    const/4 v1, 0x0

    .line 2838
    .local v1, "integrityTestPassed":Z
    :try_start_0
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "Doing strongSwan integrity test"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->securityManagerReady()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 2841
    const/4 v2, -0x1

    .line 2843
    .local v2, "verifyResult":I
    :try_start_1
    sget-object v3, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;

    invoke-interface {v3}, Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;->verifyVPN()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 2847
    :goto_0
    :try_start_2
    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "verifyVpn returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 2856
    .end local v2    # "verifyResult":I
    :goto_1
    return v1

    .line 2844
    .restart local v2    # "verifyResult":I
    :catch_0
    move-exception v0

    .line 2845
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "Failed to verifyVPN : exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2853
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "verifyResult":I
    :catch_1
    move-exception v0

    .line 2854
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to do strongSwan integrity test: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2849
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "verifyResult":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2851
    .end local v2    # "verifyResult":I
    :cond_1
    :try_start_3
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "Unable to do strongSwan integrity test: Service not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method private uidRangesForUser(I)Ljava/util/List;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1097
    invoke-static {p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v3

    .line 1098
    .local v3, "userRange":Landroid/net/UidRange;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "range$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    .line 1100
    .local v0, "range":Landroid/net/UidRange;
    invoke-virtual {v3, v0}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1101
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1104
    .end local v0    # "range":Landroid/net/UidRange;
    :cond_1
    return-object v2
.end method

.method private unregisterPackageChangeReceiverLocked()V
    .locals 2

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    .line 399
    :cond_0
    return-void
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 4
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 349
    const-string/jumbo v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, p2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 348
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    monitor-enter p0

    .line 1425
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1426
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1428
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1429
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1430
    return v0

    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .locals 27
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .local p3, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_6

    .line 1011
    const/16 v16, -0x1

    .local v16, "start":I
    const/16 v17, -0x1

    .line 1012
    .local v17, "stop":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "uid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 1013
    .local v20, "uid":I
    const/16 v24, -0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 1014
    move/from16 v16, v20

    .line 1019
    :cond_0
    :goto_1
    move/from16 v17, v20

    goto :goto_0

    .line 1015
    :cond_1
    add-int/lit8 v24, v17, 0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1016
    new-instance v24, Landroid/net/UidRange;

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1017
    move/from16 v16, v20

    goto :goto_1

    .line 1021
    .end local v20    # "uid":I
    :cond_2
    const/16 v24, -0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    new-instance v24, Landroid/net/UidRange;

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1054
    .end local v16    # "start":I
    .end local v17    # "stop":I
    .end local v21    # "uid$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "[Legacy VPN]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 1059
    const/4 v4, 0x0

    .line 1060
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1061
    .local v18, "token":J
    const-string/jumbo v12, ""

    .line 1062
    .local v12, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1064
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1065
    .local v14, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x2080

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1066
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_4

    .line 1067
    invoke-virtual {v4, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1069
    invoke-virtual {v4, v14}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1070
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    if-lez v24, :cond_4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v24

    if-lez v24, :cond_4

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 1072
    const v25, 0x1050005

    .line 1071
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 1073
    .local v23, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 1074
    const v25, 0x1050006

    .line 1073
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1075
    .local v8, "height":I
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v9, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1076
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1077
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1078
    .local v6, "c":Landroid/graphics/Canvas;
    invoke-virtual {v9, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1079
    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v8    # "height":I
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v23    # "width":I
    :cond_4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1087
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v5, v1}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 1008
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "label":Ljava/lang/String;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "token":J
    :cond_5
    :goto_3
    return-void

    .line 1022
    :cond_6
    if-eqz p4, :cond_9

    .line 1024
    invoke-static/range {p2 .. p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v22

    .line 1025
    .local v22, "userRange":Landroid/net/UidRange;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/UidRange;->start:I

    move/from16 v16, v0

    .line 1026
    .restart local v16    # "start":I
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "uid$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 1027
    .restart local v20    # "uid":I
    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 1028
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1030
    :cond_7
    new-instance v24, Landroid/net/UidRange;

    add-int/lit8 v25, v20, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1031
    add-int/lit8 v16, v20, 0x1

    goto :goto_4

    .line 1034
    .end local v20    # "uid":I
    :cond_8
    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/UidRange;->stop:I

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-gt v0, v1, :cond_3

    new-instance v24, Landroid/net/UidRange;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/UidRange;->stop:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/net/UidRange;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1037
    .end local v16    # "start":I
    .end local v21    # "uid$iterator":Ljava/util/Iterator;
    .end local v22    # "userRange":Landroid/net/UidRange;
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1040
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "persona"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1043
    .local v15, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {v15}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v13

    .line 1044
    .local v13, "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_3

    .line 1045
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "info$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 1046
    .local v10, "info":Lcom/samsung/android/knox/SemPersonaInfo;
    invoke-virtual {v10}, Lcom/samsung/android/knox/SemPersonaInfo;->getId()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1047
    const-string/jumbo v24, "Vpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Add UID with prefix "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v10}, Lcom/samsung/android/knox/SemPersonaInfo;->getId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1082
    .end local v10    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v11    # "info$iterator":Ljava/util/Iterator;
    .end local v13    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v15    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v12    # "label":Ljava/lang/String;
    .restart local v18    # "token":J
    :catch_0
    move-exception v7

    .line 1083
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v24, Ljava/lang/IllegalStateException;

    const-string/jumbo v25, "Invalid application"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1084
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v24

    .line 1085
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1084
    throw v24

    .line 1089
    .end local v12    # "label":Ljava/lang/String;
    .end local v18    # "token":J
    :cond_a
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto/16 :goto_3
.end method

.method public declared-synchronized appliesToUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 1484
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    .line 1485
    return v3

    .line 1487
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 1488
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uidRange$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    .line 1489
    .local v0, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v0, p1}, Landroid/net/UidRange;->contains(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1490
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .end local v0    # "uidRange":Landroid/net/UidRange;
    .end local v1    # "uidRange$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 1494
    return v3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public clatIpv4to6(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 2795
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "64:ff9b::"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2796
    .local v0, "clatIpv6addr":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2798
    .local v2, "octets":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 2799
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2800
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 2801
    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2798
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2803
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 8
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1336
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x1040485

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1338
    .local v2, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v4, 0x1040487

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1341
    .local v1, "text":Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1342
    const v4, 0x1080b08

    .line 1341
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1350
    .local v0, "notification":Landroid/app/Notification;
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x62

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 1353
    return-object v0

    .line 1337
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const v5, 0x1040486

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 1339
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v5, v4, v6

    const v5, 0x1040488

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 969
    .local p2, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 972
    .local v0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 975
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 979
    .local v2, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 981
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 983
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 984
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v6, p1, :cond_0

    .line 985
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v6, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 980
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "user$iterator":Ljava/util/Iterator;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    .line 981
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 980
    throw v6

    .line 989
    .end local v2    # "token":J
    :cond_1
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 28
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    monitor-enter p0

    .line 826
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    .line 827
    .local v14, "mgr":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    move/from16 v25, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 828
    const/16 v24, 0x0

    monitor-exit p0

    return-object v24

    .line 831
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v24

    if-nez v24, :cond_1

    .line 832
    const/16 v24, 0x0

    monitor-exit p0

    return-object v24

    .line 835
    :cond_1
    :try_start_2
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v24, "android.net.VpnService"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v20

    .line 840
    .local v20, "token":J
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v23

    .line 841
    .local v23, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 842
    new-instance v24, Ljava/lang/SecurityException;

    const-string/jumbo v25, "Restricted users cannot establish VPNs"

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 853
    .end local v23    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v8

    .line 854
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot find "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 855
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v24

    .line 856
    :try_start_5
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    throw v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "mgr":Landroid/os/UserManager;
    .end local v20    # "token":J
    :catchall_1
    move-exception v24

    monitor-exit p0

    throw v24

    .line 845
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v14    # "mgr":Landroid/os/UserManager;
    .restart local v20    # "token":J
    .restart local v23    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    .line 846
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 845
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v25

    invoke-interface {v0, v12, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 847
    .local v11, "info":Landroid/content/pm/ResolveInfo;
    if-nez v11, :cond_3

    .line 848
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot find "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 850
    :cond_3
    const-string/jumbo v24, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 851
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " does not require "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 856
    :cond_4
    :try_start_7
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 861
    .local v15, "oldConfig":Lcom/android/internal/net/VpnConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 862
    .local v17, "oldInterface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v16, v0

    .line 863
    .local v16, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object/from16 v18, v0

    .line 864
    .local v18, "oldNetworkAgent":Landroid/net/NetworkAgent;
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    move-object/from16 v19, v0

    .line 868
    .local v19, "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->jniCreate(IZ)I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v22

    .line 870
    .local v22, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_8
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v25, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v13

    .line 874
    .local v13, "interfaze":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    .local v6, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "address$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 876
    .local v4, "address":Landroid/net/LinkAddress;
    const-string/jumbo v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 917
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v5    # "address$iterator":Ljava/util/Iterator;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v13    # "interfaze":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 918
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_9
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 919
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 921
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 922
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 923
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    .line 924
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 925
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 926
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 878
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "address$iterator":Ljava/util/Iterator;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v13    # "interfaze":Ljava/lang/String;
    :cond_5
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v13, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 879
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v25, "At least one address must be specified"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 881
    :cond_6
    new-instance v7, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)V

    .line 882
    .local v7, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 884
    new-instance v25, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    .line 883
    const v26, 0x4000001

    .line 882
    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v12, v7, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 885
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot bind "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 888
    :cond_7
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 889
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 894
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 895
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    .line 900
    if-eqz v16, :cond_8

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 906
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    .line 907
    if-eqz v17, :cond_9

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v24

    if-eqz v24, :cond_a

    .line 912
    :cond_9
    :goto_1
    :try_start_b
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v24

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 928
    :try_start_c
    const-string/jumbo v24, "Vpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Established by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " on "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    monitor-exit p0

    .line 929
    return-object v22

    .line 908
    :cond_a
    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    goto :goto_1

    .line 913
    :catch_2
    move-exception v9

    .line 914
    .local v9, "e":Ljava/io/IOException;
    new-instance v24, Ljava/lang/IllegalStateException;

    .line 915
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 914
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 432
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 433
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1906
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 1907
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0

    .line 1909
    :cond_0
    return-object v1
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1

    .prologue
    monitor-enter p0

    .line 1885
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 1886
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 1894
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v2

    .line 1896
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 1897
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 1898
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1899
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1900
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1902
    return-object v0

    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getNetId()I
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget v0, v0, Landroid/net/NetworkAgent;->netId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .locals 1

    .prologue
    monitor-enter p0

    .line 1462
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1463
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1465
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .prologue
    .line 1244
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1245
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .locals 2

    .prologue
    monitor-enter p0

    .line 1473
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1474
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 1477
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    .line 1478
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    .line 1479
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1480
    return-object v0

    .end local v0    # "info":Lcom/android/internal/net/VpnInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hideNotificationForLockdown()V
    .locals 2

    .prologue
    .line 1420
    const-string/jumbo v0, "Vpn"

    const-string/jumbo v1, "hideNotificationForLockdown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    .line 1419
    return-void
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    monitor-enter p0

    .line 1251
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1249
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1252
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public declared-synchronized isBlockingUid(I)Z
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    .line 1505
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    monitor-exit p0

    .line 1506
    return v2

    .line 1509
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1510
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 1512
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uidRange$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    .line 1513
    .local v0, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v0, p1}, Landroid/net/UidRange;->contains(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit p0

    .line 1514
    return v3

    .end local v0    # "uidRange":Landroid/net/UidRange;
    :cond_4
    monitor-exit p0

    .line 1517
    return v2

    .end local v1    # "uidRange$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onUserAdded(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    .line 1120
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1121
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v3, v4, :cond_2

    .line 1122
    monitor-enter p0

    .line 1123
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1125
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 1126
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 1125
    invoke-virtual {p0, v3, p1, v4, v5}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 1127
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v3, :cond_0

    .line 1128
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    move-result-object v1

    .line 1129
    .local v1, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/UidRange;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRange;

    invoke-virtual {v4, v3}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1135
    .end local v1    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v3, :cond_1

    .line 1136
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1118
    :cond_2
    return-void

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1122
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onUserRemoved(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1144
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1145
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v2, v3, :cond_2

    .line 1146
    monitor-enter p0

    .line 1147
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1149
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1154
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_1

    .line 1155
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1142
    :cond_2
    return-void

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "Failed to remove restricted user to owner"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1146
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onUserStopped()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1166
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 1169
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->unregisterPackageChangeReceiverLocked()V

    .line 1171
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1164
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 534
    if-eqz p1, :cond_4

    .line 536
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 543
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 545
    return v2

    :cond_1
    monitor-exit p0

    .line 537
    return v1

    :cond_2
    monitor-exit p0

    .line 547
    return v1

    .line 548
    :cond_3
    :try_start_1
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 549
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 557
    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 558
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 557
    if-eqz v0, :cond_7

    :cond_5
    monitor-exit p0

    .line 559
    return v2

    .line 551
    :cond_6
    :try_start_2
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 552
    return v1

    .line 562
    :cond_7
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 565
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 568
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 569
    return v2

    :cond_9
    monitor-exit p0

    .line 566
    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    monitor-enter p0

    .line 1434
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1435
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1437
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1438
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1439
    return v0

    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized saveAlwaysOnPackage()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 440
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 442
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 443
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "always_on_vpn_app"

    .line 444
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 443
    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 445
    const-string/jumbo v4, "always_on_vpn_lockdown"

    .line 446
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 445
    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 439
    return-void

    .line 446
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 447
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    .line 448
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 447
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v2    # "token":J
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    .line 369
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 370
    const-string/jumbo v1, "[Legacy VPN]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const-string/jumbo v1, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not setting legacy VPN \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" as always-on."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 372
    return v0

    .line 375
    :cond_0
    if-eqz p1, :cond_3

    .line 377
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit p0

    .line 378
    return v0

    .line 380
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 386
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v1, :cond_4

    .end local p2    # "lockdown":Z
    :goto_1
    iput-boolean p2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 387
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 390
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->maybeRegisterPackageChangeReceiverLocked(Ljava/lang/String;)V

    .line 391
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 392
    return v2

    .line 382
    .restart local p2    # "lockdown":Z
    :cond_3
    :try_start_3
    const-string/jumbo p1, "[Legacy VPN]"

    .line 383
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local p2    # "lockdown":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local p2    # "lockdown":Z
    :cond_4
    move p2, v0

    .line 386
    goto :goto_1
.end method

.method public setEnableLockdownVpn(Z)V
    .locals 0
    .param p1, "enableLockdownVpn"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableLockdownVpn:Z

    .line 341
    return-void
.end method

.method public setEnableTeardown(Z)V
    .locals 0
    .param p1, "enableTeardown"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 334
    return-void
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authorized"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 643
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 645
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v5}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v4

    .line 646
    .local v4, "uid":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const-string/jumbo v5, "[Legacy VPN]"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 648
    :cond_0
    return v6

    .line 651
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 654
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "appops"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 656
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-eqz p2, :cond_2

    move v5, v6

    .line 655
    :goto_0
    const/16 v8, 0x2f

    invoke-virtual {v0, v8, v4, p1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    return v7

    :cond_2
    move v5, v7

    .line 656
    goto :goto_0

    .line 658
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    :catch_0
    move-exception v1

    .line 659
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to set app ops for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 663
    return v6

    .line 660
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 661
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    throw v5
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 4
    .param p1, "networks"    # [Landroid/net/Network;

    .prologue
    monitor-enter p0

    .line 1443
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1444
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1446
    :cond_0
    if-nez p1, :cond_2

    .line 1447
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1458
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 1449
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    array-length v2, p1

    new-array v2, v2, [Landroid/net/Network;

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 1450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1451
    aget-object v1, p1, v0

    if-nez v1, :cond_3

    .line 1452
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1450
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1454
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    new-instance v2, Landroid/net/Network;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-direct {v2, v3}, Landroid/net/Network;-><init>(I)V

    aput-object v2, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public showNotificationForLockdown(II)V
    .locals 8
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I

    .prologue
    .line 1391
    const-string/jumbo v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showNotificationForLockdown :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 1396
    .local v4, "user":I
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 1397
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1398
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 1399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1401
    .local v2, "token":J
    :try_start_0
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1403
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1401
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1404
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v7, 0x104048c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1401
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1405
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 1401
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1406
    const/4 v6, 0x0

    .line 1401
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1407
    const/4 v6, 0x1

    .line 1401
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1409
    .local v1, "notification":Landroid/app/Notification;
    iget v5, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x62

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 1412
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    const v7, 0x1080b08

    invoke-virtual {v0, v6, v7, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1390
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "token":J
    :cond_0
    return-void

    .line 1413
    .restart local v2    # "token":J
    :catchall_0
    move-exception v5

    .line 1414
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1413
    throw v5
.end method

.method public startAlwaysOnVpn()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 474
    monitor-enter p0

    .line 475
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 477
    .local v0, "alwaysOnPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    monitor-exit p0

    .line 478
    return v3

    .line 483
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit p0

    .line 484
    return v3

    :cond_1
    monitor-exit p0

    .line 489
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.net.VpnService"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    :try_start_2
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    if-eqz v5, :cond_2

    :goto_0
    return v3

    .line 474
    .end local v0    # "alwaysOnPackage":Ljava/lang/String;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "alwaysOnPackage":Ljava/lang/String;
    .restart local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    move v3, v4

    .line 492
    goto :goto_0

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "VpnService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " failed to start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    return v4
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 1549
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1552
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1554
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1548
    return-void

    .line 1553
    :catchall_0
    move-exception v2

    .line 1554
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1553
    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 44
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 1566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v33

    .line 1567
    .local v33, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v40

    .line 1568
    .local v40, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v40 .. v40}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "no_config_vpn"

    .line 1569
    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 1568
    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1570
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Restricted users cannot establish VPNs"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1573
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v27

    .line 1574
    .local v27, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual/range {v27 .. v27}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    .line 1575
    .local v20, "gateway":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v23

    .line 1576
    .local v23, "iface":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    .line 1577
    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Egress Iface ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") activated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    const-string/jumbo v21, ""

    .line 1581
    .local v21, "hostAddress":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v26

    .line 1582
    .local v26, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static/range {v26 .. v26}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "inetAddress$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/net/InetAddress;

    .line 1583
    .local v24, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    goto :goto_0

    .line 1586
    .end local v24    # "inetAddress":Ljava/net/InetAddress;
    .end local v25    # "inetAddress$iterator":Ljava/util/Iterator;
    .end local v26    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v16

    .line 1587
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startLegacyVpnPrivileged Egress Iface ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v35, ""

    .line 1592
    .local v35, "privateKey":Ljava/lang/String;
    const-string/jumbo v41, ""

    .line 1593
    .local v41, "userCert":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 1594
    .local v10, "caCert":Ljava/lang/String;
    const-string/jumbo v38, ""

    .line 1595
    .local v38, "serverCert":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v42

    .line 1598
    .local v42, "value":[B
    if-nez v42, :cond_7

    const/16 v41, 0x0

    .line 1600
    .end local v41    # "userCert":Ljava/lang/String;
    .end local v42    # "value":[B
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v42

    .line 1602
    .restart local v42    # "value":[B
    if-nez v42, :cond_8

    const/4 v10, 0x0

    .line 1604
    .end local v10    # "caCert":Ljava/lang/String;
    .end local v42    # "value":[B
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v42

    .line 1606
    .restart local v42    # "value":[B
    if-nez v42, :cond_9

    const/16 v38, 0x0

    .line 1608
    .end local v38    # "serverCert":Ljava/lang/String;
    .end local v42    # "value":[B
    :cond_5
    :goto_3
    if-eqz v35, :cond_6

    if-nez v41, :cond_a

    .line 1609
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Cannot load credentials"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1598
    .restart local v10    # "caCert":Ljava/lang/String;
    .restart local v38    # "serverCert":Ljava/lang/String;
    .restart local v41    # "userCert":Ljava/lang/String;
    .restart local v42    # "value":[B
    :cond_7
    new-instance v41, Ljava/lang/String;

    .end local v41    # "userCert":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v41    # "userCert":Ljava/lang/String;
    goto :goto_1

    .line 1602
    .end local v41    # "userCert":Ljava/lang/String;
    :cond_8
    new-instance v10, Ljava/lang/String;

    .end local v10    # "caCert":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v42

    invoke-direct {v10, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v10    # "caCert":Ljava/lang/String;
    goto :goto_2

    .line 1606
    .end local v10    # "caCert":Ljava/lang/String;
    :cond_9
    new-instance v38, Ljava/lang/String;

    .end local v38    # "serverCert":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v38    # "serverCert":Ljava/lang/String;
    goto :goto_3

    .line 1608
    .end local v38    # "serverCert":Ljava/lang/String;
    .end local v42    # "value":[B
    :cond_a
    if-eqz v10, :cond_6

    if-eqz v38, :cond_6

    .line 1612
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1683
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "This profile was not encrypted !"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_b
    :goto_4
    const/16 v36, 0x0

    .line 1688
    .local v36, "racoon":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_0

    .line 1709
    .end local v36    # "racoon":[Ljava/lang/String;
    :goto_5
    const-string/jumbo v3, "security.mdpp"

    const-string/jumbo v4, "None"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1713
    .local v11, "ccModePropertyValue":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1714
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/connectivity/Vpn;->mdppModeEnabled:Z

    .line 1716
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "Initting security manager."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    const-string/jumbo v3, "SecurityManagerService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/service/SecurityManager/ISecurityManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;

    move-result-object v3

    sput-object v3, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;

    .line 1718
    sget-object v3, Lcom/android/server/connectivity/Vpn;->mSecurityManager:Lcom/samsung/android/service/SecurityManager/ISecurityManagerService;

    if-nez v3, :cond_13

    .line 1719
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "SecurityManagerService init failed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    return-void

    .line 1613
    .end local v11    # "ccModePropertyValue":Ljava/lang/String;
    :cond_c
    const/16 v37, 0x0

    .line 1616
    .local v37, "secretkey":Ljava/security/Key;
    :try_start_1
    const-string/jumbo v3, "USRSKEY_VpnSecretKey"

    const/4 v4, -0x1

    .line 1615
    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v37

    .line 1621
    .end local v37    # "secretkey":Ljava/security/Key;
    :goto_6
    if-eqz v37, :cond_b

    .line 1623
    const/16 v28, 0x0

    .line 1625
    .local v28, "isSetBCProvider":Z
    :try_start_2
    const-string/jumbo v3, "AndroidKeyStoreBCWorkaroundProvider"

    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v19

    .line 1626
    .local v19, "expectedProvider":Ljava/security/Provider;
    if-nez v19, :cond_d

    .line 1627
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    .line 1628
    const/16 v28, 0x1

    .line 1631
    :cond_d
    const-string/jumbo v3, "AES/CBC/PKCS7Padding"

    .line 1630
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 1634
    .local v12, "cipher":Ljavax/crypto/Cipher;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1635
    const/16 v29, 0x0

    .line 1636
    .local v29, "ivBase64":Ljava/lang/String;
    new-instance v29, Ljava/lang/String;

    .end local v29    # "ivBase64":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1637
    .local v29, "ivBase64":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v32, v3, 0x2

    .line 1638
    .local v32, "len":I
    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 1639
    .local v30, "ivByte":[B
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_7
    move/from16 v0, v22

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    .line 1640
    mul-int/lit8 v3, v22, 0x2

    mul-int/lit8 v4, v22, 0x2

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v30, v22
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1639
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 1617
    .end local v12    # "cipher":Ljavax/crypto/Cipher;
    .end local v19    # "expectedProvider":Ljava/security/Provider;
    .end local v22    # "i":I
    .end local v28    # "isSetBCProvider":Z
    .end local v29    # "ivBase64":Ljava/lang/String;
    .end local v30    # "ivByte":[B
    .end local v32    # "len":I
    .restart local v37    # "secretkey":Ljava/security/Key;
    :catch_1
    move-exception v18

    .line 1618
    .local v18, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual/range {v18 .. v18}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_6

    .line 1642
    .end local v18    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v37    # "secretkey":Ljava/security/Key;
    .restart local v12    # "cipher":Ljavax/crypto/Cipher;
    .restart local v19    # "expectedProvider":Ljava/security/Provider;
    .restart local v22    # "i":I
    .restart local v28    # "isSetBCProvider":Z
    .restart local v29    # "ivBase64":Ljava/lang/String;
    .restart local v30    # "ivByte":[B
    .restart local v32    # "len":I
    :cond_e
    :try_start_3
    new-instance v31, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1643
    .local v31, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x2

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v12, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1645
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v39

    .line 1646
    .local v39, "targetData":[B
    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    .line 1648
    .local v15, "decrypted":[B
    const/4 v3, 0x2

    invoke-static {v15, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v14

    .line 1649
    .local v14, "decodeData":[B
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v14, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 1650
    const/16 v22, 0x0

    :goto_8
    array-length v3, v14

    move/from16 v0, v22

    if-ge v0, v3, :cond_f

    .line 1651
    const/4 v3, 0x0

    aput-byte v3, v14, v22

    .line 1650
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 1654
    .end local v14    # "decodeData":[B
    .end local v15    # "decrypted":[B
    .end local v22    # "i":I
    .end local v29    # "ivBase64":Ljava/lang/String;
    .end local v30    # "ivByte":[B
    .end local v31    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .end local v32    # "len":I
    .end local v39    # "targetData":[B
    :cond_f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1655
    const/16 v29, 0x0

    .line 1656
    .local v29, "ivBase64":Ljava/lang/String;
    new-instance v29, Ljava/lang/String;

    .end local v29    # "ivBase64":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1657
    .local v29, "ivBase64":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v32, v3, 0x2

    .line 1658
    .restart local v32    # "len":I
    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 1659
    .restart local v30    # "ivByte":[B
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_9
    move/from16 v0, v22

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    .line 1660
    mul-int/lit8 v3, v22, 0x2

    mul-int/lit8 v4, v22, 0x2

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v30, v22

    .line 1659
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 1662
    :cond_10
    new-instance v31, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1663
    .restart local v31    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x2

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v12, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1665
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v39

    .line 1666
    .restart local v39    # "targetData":[B
    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    .line 1668
    .restart local v15    # "decrypted":[B
    const/4 v3, 0x2

    invoke-static {v15, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v14

    .line 1669
    .restart local v14    # "decodeData":[B
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v14, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1670
    const/16 v22, 0x0

    :goto_a
    array-length v3, v14

    move/from16 v0, v22

    if-ge v0, v3, :cond_11

    .line 1671
    const/4 v3, 0x0

    aput-byte v3, v14, v22

    .line 1670
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 1674
    .end local v14    # "decodeData":[B
    .end local v15    # "decrypted":[B
    .end local v22    # "i":I
    .end local v29    # "ivBase64":Ljava/lang/String;
    .end local v30    # "ivByte":[B
    .end local v31    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .end local v32    # "len":I
    .end local v39    # "targetData":[B
    :cond_11
    if-eqz v28, :cond_b

    .line 1675
    const-string/jumbo v3, "AndroidKeyStoreBCWorkaroundProvider"

    invoke-static {v3}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V
    :try_end_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 1678
    .end local v12    # "cipher":Ljavax/crypto/Cipher;
    .end local v19    # "expectedProvider":Ljava/security/Provider;
    :catch_2
    move-exception v17

    .line 1679
    .local v17, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual/range {v17 .. v17}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto/16 :goto_4

    .line 1690
    .end local v17    # "e":Ljava/security/GeneralSecurityException;
    .end local v28    # "isSetBCProvider":Z
    .restart local v36    # "racoon":[Ljava/lang/String;
    :pswitch_0
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    .line 1691
    .end local v36    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v23, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v36, v4

    const-string/jumbo v3, "udppsk"

    const/4 v4, 0x2

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v36, v4

    .line 1692
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v36, v4

    const-string/jumbo v3, "1701"

    const/4 v4, 0x5

    aput-object v3, v36, v4

    .line 1694
    .local v36, "racoon":[Ljava/lang/String;
    goto/16 :goto_5

    .line 1696
    .local v36, "racoon":[Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x8

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    .line 1697
    .end local v36    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v23, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v36, v4

    const-string/jumbo v3, "udprsa"

    const/4 v4, 0x2

    aput-object v3, v36, v4

    const/4 v3, 0x3

    aput-object v35, v36, v3

    const/4 v3, 0x4

    aput-object v41, v36, v3

    .line 1698
    const/4 v3, 0x5

    aput-object v10, v36, v3

    const/4 v3, 0x6

    aput-object v38, v36, v3

    const-string/jumbo v3, "1701"

    const/4 v4, 0x7

    aput-object v3, v36, v4

    .line 1700
    .local v36, "racoon":[Ljava/lang/String;
    goto/16 :goto_5

    .line 1702
    .local v36, "racoon":[Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    .line 1703
    .end local v36    # "racoon":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v23, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v36, v4

    const-string/jumbo v3, "hybridrsa"

    const/4 v4, 0x2

    aput-object v3, v36, v4

    .line 1704
    const/4 v3, 0x3

    aput-object v10, v36, v3

    const/4 v3, 0x4

    aput-object v38, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v3, v36, v4

    const-string/jumbo v3, ""

    const/4 v4, 0x7

    aput-object v3, v36, v4

    const/16 v3, 0x8

    aput-object v20, v36, v3

    .line 1706
    .local v36, "racoon":[Ljava/lang/String;
    goto/16 :goto_5

    .line 1723
    .end local v36    # "racoon":[Ljava/lang/String;
    .restart local v11    # "ccModePropertyValue":Ljava/lang/String;
    :cond_12
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "mdpp mode not enabled."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/connectivity/Vpn;->mdppModeEnabled:Z

    .line 1726
    :cond_13
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1727
    const-string/jumbo v3, ""

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 1731
    :cond_14
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_1

    .line 1797
    :goto_b
    move-object/from16 v43, v36

    .line 1798
    .local v43, "vpnParameters":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnConnectionSecure([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 1801
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string/jumbo v7, "Vpn"

    .line 1802
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Connecting to VPN network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to server address : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1803
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 1802
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1803
    const-string/jumbo v4, " from type "

    .line 1802
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1803
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/net/VpnProfile;->type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/connectivity/Vpn;->getVpnTypeString(I)Ljava/lang/String;

    move-result-object v4

    .line 1802
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1804
    const-string/jumbo v4, " failed - unsecure"

    .line 1802
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1800
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1807
    return-void

    .line 1733
    .end local v43    # "vpnParameters":[Ljava/lang/String;
    :pswitch_3
    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    .line 1734
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v36, v4

    const-string/jumbo v3, "xauthpsk"

    const/4 v4, 0x1

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v36, v4

    .line 1735
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v36, v4

    const/4 v3, 0x4

    aput-object v11, v36, v3

    .line 1736
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_15

    const-string/jumbo v3, "+pfs"

    :goto_c
    const/4 v4, 0x5

    aput-object v3, v36, v4

    const/4 v3, 0x6

    aput-object v21, v36, v3

    .line 1737
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v4, 0x7

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v4, 0x8

    aput-object v3, v36, v4

    .line 1740
    .restart local v36    # "racoon":[Ljava/lang/String;
    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "charon: type = IPSEC_XAUTH_PSK : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1736
    .end local v36    # "racoon":[Ljava/lang/String;
    :cond_15
    const-string/jumbo v3, "nonpfs"

    goto :goto_c

    .line 1743
    :pswitch_4
    const/16 v3, 0xc

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    .line 1744
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v36, v4

    const-string/jumbo v3, "xauthrsa"

    const/4 v4, 0x1

    aput-object v3, v36, v4

    const/4 v3, 0x2

    aput-object v35, v36, v3

    const/4 v3, 0x3

    aput-object v41, v36, v3

    .line 1745
    const/4 v3, 0x4

    aput-object v10, v36, v3

    const/4 v3, 0x5

    aput-object v38, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v3, v36, v4

    const/4 v3, 0x7

    aput-object v11, v36, v3

    .line 1746
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_16

    const-string/jumbo v3, "+pfs"

    :goto_d
    const/16 v4, 0x8

    aput-object v3, v36, v4

    const/16 v3, 0x9

    aput-object v21, v36, v3

    .line 1747
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/16 v4, 0xa

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v4, 0xb

    aput-object v3, v36, v4

    .line 1749
    .restart local v36    # "racoon":[Ljava/lang/String;
    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "charon: type = IPSEC_XAUTH_RSA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1746
    .end local v36    # "racoon":[Ljava/lang/String;
    :cond_16
    const-string/jumbo v3, "nonpfs"

    goto :goto_d

    .line 1752
    :pswitch_5
    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    .line 1753
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v36, v4

    const-string/jumbo v3, "ikev2psk"

    const/4 v4, 0x1

    aput-object v3, v36, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v36, v4

    .line 1754
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v36, v4

    const/4 v3, 0x4

    aput-object v11, v36, v3

    .line 1755
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_17

    const-string/jumbo v3, "+pfs"

    :goto_e
    const/4 v4, 0x5

    aput-object v3, v36, v4

    const/4 v3, 0x6

    aput-object v21, v36, v3

    .line 1757
    .restart local v36    # "racoon":[Ljava/lang/String;
    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "charon: type = IPSEC_IKEV2_PSK : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1755
    .end local v36    # "racoon":[Ljava/lang/String;
    :cond_17
    const-string/jumbo v3, "nonpfs"

    goto :goto_e

    .line 1760
    :pswitch_6
    const/16 v3, 0xa

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v36, v0

    .line 1761
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v36, v4

    const-string/jumbo v3, "ikev2rsa"

    const/4 v4, 0x1

    aput-object v3, v36, v4

    const/4 v3, 0x2

    aput-object v35, v36, v3

    const/4 v3, 0x3

    aput-object v41, v36, v3

    .line 1762
    const/4 v3, 0x4

    aput-object v10, v36, v3

    const/4 v3, 0x5

    aput-object v38, v36, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v3, v36, v4

    const/4 v3, 0x7

    aput-object v11, v36, v3

    .line 1763
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v3, :cond_18

    const-string/jumbo v3, "+pfs"

    :goto_f
    const/16 v4, 0x8

    aput-object v3, v36, v4

    const/16 v3, 0x9

    aput-object v21, v36, v3

    .line 1765
    .restart local v36    # "racoon":[Ljava/lang/String;
    const-string/jumbo v3, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "charon: type = IPSEC_IKEV2_RSA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1763
    .end local v36    # "racoon":[Ljava/lang/String;
    :cond_18
    const-string/jumbo v3, "nonpfs"

    goto :goto_f

    .line 1812
    .restart local v43    # "vpnParameters":[Ljava/lang/String;
    :cond_19
    const/16 v34, 0x0

    .line 1813
    .local v34, "mtpd":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_2

    .line 1834
    .end local v34    # "mtpd":[Ljava/lang/String;
    :goto_10
    new-instance v13, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v13}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1835
    .local v13, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1836
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v3, v13, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1837
    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1838
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v3, v13, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 1840
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v13, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1841
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1d

    .line 1842
    const/4 v3, 0x0

    iput-boolean v3, v13, Lcom/android/internal/net/VpnConfig;->isIKE:Z

    .line 1846
    :goto_11
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1847
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string/jumbo v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v13, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1849
    :cond_1a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1850
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string/jumbo v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v13, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1852
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1565
    return-void

    .line 1815
    .end local v13    # "config":Lcom/android/internal/net/VpnConfig;
    .restart local v34    # "mtpd":[Ljava/lang/String;
    :pswitch_7
    const/16 v3, 0x14

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1816
    .end local v34    # "mtpd":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v23, v34, v3

    const-string/jumbo v3, "pptp"

    const/4 v4, 0x1

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v34, v4

    const-string/jumbo v3, "1723"

    const/4 v4, 0x3

    aput-object v3, v34, v4

    .line 1817
    const-string/jumbo v3, "name"

    const/4 v4, 0x4

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v3, v34, v4

    const-string/jumbo v3, "password"

    const/4 v4, 0x6

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v4, 0x7

    aput-object v3, v34, v4

    .line 1818
    const-string/jumbo v3, "linkname"

    const/16 v4, 0x8

    aput-object v3, v34, v4

    const-string/jumbo v3, "vpn"

    const/16 v4, 0x9

    aput-object v3, v34, v4

    const-string/jumbo v3, "refuse-eap"

    const/16 v4, 0xa

    aput-object v3, v34, v4

    const-string/jumbo v3, "nodefaultroute"

    const/16 v4, 0xb

    aput-object v3, v34, v4

    .line 1819
    const-string/jumbo v3, "usepeerdns"

    const/16 v4, 0xc

    aput-object v3, v34, v4

    const-string/jumbo v3, "idle"

    const/16 v4, 0xd

    aput-object v3, v34, v4

    const-string/jumbo v3, "1800"

    const/16 v4, 0xe

    aput-object v3, v34, v4

    const-string/jumbo v3, "mtu"

    const/16 v4, 0xf

    aput-object v3, v34, v4

    const-string/jumbo v3, "1400"

    const/16 v4, 0x10

    aput-object v3, v34, v4

    const-string/jumbo v3, "mru"

    const/16 v4, 0x11

    aput-object v3, v34, v4

    const-string/jumbo v3, "1400"

    const/16 v4, 0x12

    aput-object v3, v34, v4

    .line 1820
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v3, :cond_1c

    const-string/jumbo v3, "+mppe"

    :goto_12
    const/16 v4, 0x13

    aput-object v3, v34, v4

    .line 1822
    .local v34, "mtpd":[Ljava/lang/String;
    goto/16 :goto_10

    .line 1820
    .end local v34    # "mtpd":[Ljava/lang/String;
    :cond_1c
    const-string/jumbo v3, "nomppe"

    goto :goto_12

    .line 1825
    .local v34, "mtpd":[Ljava/lang/String;
    :pswitch_8
    const/16 v3, 0x14

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1826
    .end local v34    # "mtpd":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v23, v34, v3

    const-string/jumbo v3, "l2tp"

    const/4 v4, 0x1

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v34, v4

    const-string/jumbo v3, "1701"

    const/4 v4, 0x3

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v34, v4

    .line 1827
    const-string/jumbo v3, "name"

    const/4 v4, 0x5

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v3, v34, v4

    const-string/jumbo v3, "password"

    const/4 v4, 0x7

    aput-object v3, v34, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v4, 0x8

    aput-object v3, v34, v4

    .line 1828
    const-string/jumbo v3, "linkname"

    const/16 v4, 0x9

    aput-object v3, v34, v4

    const-string/jumbo v3, "vpn"

    const/16 v4, 0xa

    aput-object v3, v34, v4

    const-string/jumbo v3, "refuse-eap"

    const/16 v4, 0xb

    aput-object v3, v34, v4

    const-string/jumbo v3, "nodefaultroute"

    const/16 v4, 0xc

    aput-object v3, v34, v4

    .line 1829
    const-string/jumbo v3, "usepeerdns"

    const/16 v4, 0xd

    aput-object v3, v34, v4

    const-string/jumbo v3, "idle"

    const/16 v4, 0xe

    aput-object v3, v34, v4

    const-string/jumbo v3, "1800"

    const/16 v4, 0xf

    aput-object v3, v34, v4

    const-string/jumbo v3, "mtu"

    const/16 v4, 0x10

    aput-object v3, v34, v4

    const-string/jumbo v3, "1300"

    const/16 v4, 0x11

    aput-object v3, v34, v4

    const-string/jumbo v3, "mru"

    const/16 v4, 0x12

    aput-object v3, v34, v4

    const-string/jumbo v3, "1300"

    const/16 v4, 0x13

    aput-object v3, v34, v4

    .line 1831
    .local v34, "mtpd":[Ljava/lang/String;
    goto/16 :goto_10

    .line 1844
    .end local v34    # "mtpd":[Ljava/lang/String;
    .restart local v13    # "config":Lcom/android/internal/net/VpnConfig;
    :cond_1d
    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/android/internal/net/VpnConfig;->isIKE:Z

    goto/16 :goto_11

    .line 1688
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1731
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1813
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public declared-synchronized stopLegacyVpnPrivileged()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1869
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1873
    const-string/jumbo v0, "LegacyVpnRunner"

    monitor-enter v0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1868
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
