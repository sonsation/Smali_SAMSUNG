.class public Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
.super Ljava/lang/Object;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;,
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

.field private mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRinging:Z

.field private mScreenOnTimeStamp:J

.field private mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTurnOverLightingPackage:Ljava/lang/String;

.field private mUserId:I

.field private mUserSetupCompleted:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mRinging:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mRinging:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 50
    const-class v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    .line 66
    iput-boolean v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mRinging:Z

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    .line 72
    iput-boolean v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    .line 74
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 89
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    .line 107
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    .line 108
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    .line 109
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 110
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 111
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 112
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->registerReceiver()V

    .line 104
    return-void
.end method

.method private hideEdgeLightingInternal(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 227
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideEdgeLightingInternal : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    .line 226
    return-void
.end method

.method private hideForWakeLockInternal(Ljava/lang/String;II)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v3, 0x4

    .line 653
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 654
    .local v0, "callingUserId":I
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 655
    return-void

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v2, "hideForWakeLockInternal : user setup is not yet completed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void

    .line 661
    :cond_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 662
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 663
    :cond_2
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v2, "hideForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_3
    return-void

    .line 667
    :cond_4
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 668
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    .line 667
    if-eqz v1, :cond_8

    .line 669
    :cond_5
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 670
    :cond_6
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v2, "hideForWakeLockInternal : return false by checking disable policy."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_7
    return-void

    .line 674
    :cond_8
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, p1, v3, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_b

    .line 675
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 676
    :cond_9
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v2, "hideForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_a
    return-void

    .line 680
    :cond_b
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    .line 652
    return-void
.end method

.method private isCallingUserSupported(I)Z
    .locals 3
    .param p1, "callingUserId"    # I

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    .line 128
    .local v0, "isDualAppId":Z
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    if-nez v2, :cond_1

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    if-eq v1, p1, :cond_0

    .end local v0    # "isDualAppId":Z
    :goto_0
    return v0

    .restart local v0    # "isDualAppId":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isEdgeLightingServiceUnbinded()Z
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->existsHosts()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isEdgeLightingSettingEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserSetupCompleted()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->verifyUserSetupCompleted()V

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    return v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method private showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extra"    # Landroid/os/Bundle;
    .param p3, "infiniteLoop"    # Z
    .param p4, "reason"    # I
    .param p5, "range"    # I

    .prologue
    const/4 v4, 0x0

    .line 210
    if-eqz p2, :cond_4

    const-string v2, "color"

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 212
    .local v0, "color":I
    :goto_0
    new-instance v1, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    const/16 v3, 0x7d1

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(I[I)V

    .line 213
    .local v1, "info":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setUserId(I)V

    .line 214
    if-eqz p3, :cond_0

    .line 215
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setRepeatCount(I)V

    .line 217
    :cond_0
    if-eqz p2, :cond_1

    .line 218
    invoke-virtual {v1, p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    .line 220
    :cond_1
    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 221
    :cond_2
    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showEdgeLightingInternal : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_3
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v2, p1, v1, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    .line 208
    return-void

    .line 210
    .end local v0    # "color":I
    .end local v1    # "info":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method private showForNotificationScreenOff(Landroid/service/notification/StatusBarNotification;ZZI)Z
    .locals 10
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isHeadUp"    # Z
    .param p3, "isUpdate"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 354
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "packageName":Ljava/lang/String;
    const/4 v6, 0x6

    .line 356
    .local v6, "condition":I
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    move-result v7

    .line 358
    .local v7, "hostCondition":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "showForNotificationScreenOff : return false by notication disabling edge lighting."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return v3

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 363
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 364
    :cond_1
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "showForNotificationScreenOff : return false by isAvailableEdgeLighting."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2
    return v3

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    .line 369
    if-nez v0, :cond_4

    .line 371
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v0

    .line 369
    if-eqz v0, :cond_5

    .line 372
    :cond_4
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "showForNotificationScreenOff : return false by checking disable policy."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v3

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZ)Landroid/os/Bundle;

    move-result-object v2

    .line 377
    .local v2, "data":Landroid/os/Bundle;
    and-int/lit8 v0, v7, 0x4

    if-eqz v0, :cond_8

    const/4 v8, 0x1

    .line 378
    .local v8, "includeAllApp":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v1, v5, v8, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v0

    if-nez v0, :cond_9

    .line 379
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 380
    :cond_6
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "showForNotificationScreenOff : return false by isAcceptableApplication."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_7
    return v3

    .line 377
    .end local v8    # "includeAllApp":Z
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "includeAllApp":Z
    goto :goto_0

    .line 384
    :cond_9
    const/4 v0, 0x4

    if-ne v7, v0, :cond_a

    move v9, v5

    .line 385
    .local v9, "turnOver":Z
    :goto_1
    if-eqz v9, :cond_b

    const/4 v4, 0x7

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    .line 387
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_c

    :goto_3
    return v5

    .end local v9    # "turnOver":Z
    :cond_a
    move v9, v3

    .line 384
    goto :goto_1

    .restart local v9    # "turnOver":Z
    :cond_b
    move v4, v5

    .line 385
    goto :goto_2

    :cond_c
    move v5, v3

    .line 387
    goto :goto_3
.end method

.method private showForNotificationScreenOn(Landroid/service/notification/StatusBarNotification;ZZI)Z
    .locals 11
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isHeadUp"    # Z
    .param p3, "isUpdate"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 391
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "packageName":Ljava/lang/String;
    const/4 v7, 0x1

    .line 393
    .local v7, "condition":I
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    move-result v9

    .line 395
    .local v9, "hostCondition":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "showForNotificationScreenOn : return false by notication disabling edge lighting."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return v3

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 400
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 401
    :cond_1
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "showForNotificationScreenOn : return false by isAvailableEdgeLighting."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_2
    return v3

    .line 405
    :cond_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/16 v4, 0x100

    invoke-virtual {v0, v1, v4, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v8

    .line 407
    .local v8, "forceHeadUp":Z
    if-nez v8, :cond_4

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEnabledHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 408
    :cond_4
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 409
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    .line 407
    if-nez v0, :cond_5

    .line 410
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    .line 407
    if-nez v0, :cond_5

    .line 411
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v0

    .line 407
    if-eqz v0, :cond_6

    .line 412
    :cond_5
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "showForNotificationScreenOn : return false by checking disable policy."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return v3

    .line 415
    :cond_6
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZ)Landroid/os/Bundle;

    move-result-object v2

    .line 416
    .local v2, "data":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEmptyText(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 417
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "showForNotificationScreenOn : texts are empty."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return v3

    .line 421
    :cond_7
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v1, v5, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_a

    .line 422
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 423
    :cond_8
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "showForNotificationScreenOn : return false by isAcceptableApplication."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_9
    return v3

    .line 426
    :cond_a
    if-nez p2, :cond_b

    .line 427
    move p2, v8

    .line 429
    :cond_b
    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isNotificationForEdgeLighting(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    .line 430
    .local v6, "allowShow":Z
    :goto_0
    if-eqz v6, :cond_c

    .line 431
    const/4 v0, 0x4

    if-ne v9, v0, :cond_e

    move v10, v5

    .line 432
    .local v10, "turnOver":Z
    :goto_1
    if-eqz v10, :cond_f

    const/4 v4, 0x7

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    .line 435
    .end local v10    # "turnOver":Z
    :cond_c
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_10

    .end local v6    # "allowShow":Z
    :goto_3
    return v6

    :cond_d
    move v6, v3

    .line 429
    goto :goto_0

    .restart local v6    # "allowShow":Z
    :cond_e
    move v10, v3

    .line 431
    goto :goto_1

    .restart local v10    # "turnOver":Z
    :cond_f
    move v4, v5

    .line 432
    goto :goto_2

    .end local v10    # "turnOver":Z
    :cond_10
    move v6, v3

    .line 435
    goto :goto_3
.end method

.method private showForTurnOverNotification(ZLjava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 6
    .param p1, "isInteractive"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 319
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v2

    .line 319
    if-nez v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v2

    .line 319
    if-eqz v2, :cond_1

    .line 322
    :cond_0
    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v3, "showForTurnOverNotification : return false by checking disable policy."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 325
    :cond_1
    if-eqz p2, :cond_6

    .line 326
    if-nez p1, :cond_4

    .line 328
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, p2, v3, v3, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v2

    if-nez v2, :cond_6

    .line 329
    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 330
    :cond_2
    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v3, "showForTurnOverNotification : return false by isAcceptableApplication.1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_3
    return-void

    .line 335
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 336
    .local v0, "timeStamp":J
    iget-wide v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 337
    return-void

    .line 340
    :cond_5
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    .line 341
    const/16 v3, 0x400

    .line 340
    invoke-virtual {v2, p2, v3, p4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 342
    return-void

    .line 346
    .end local v0    # "timeStamp":J
    :cond_6
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 317
    :goto_0
    return-void

    .line 347
    :cond_7
    iput-object p2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    .line 348
    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showForTurnOverNotification : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v3, 0x7

    invoke-virtual {v2, p2, v3, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startTurnOverLighting(Ljava/lang/String;ILcom/samsung/android/edge/SemEdgeLightingInfo;)V

    goto :goto_0
.end method

.method private showForWakeLockInternal(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 601
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 602
    .local v6, "callingUserId":I
    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    return v3

    .line 605
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "showForWakeLockInternal : user setup is not yet completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return v3

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 610
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 611
    :cond_2
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "showForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_3
    return v3

    .line 615
    :cond_4
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 616
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    .line 615
    if-eqz v0, :cond_8

    .line 617
    :cond_5
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 618
    :cond_6
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "showForWakeLockInternal : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_7
    return v3

    .line 622
    :cond_8
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, v5, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_b

    .line 623
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 624
    :cond_9
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "showForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_a
    return v3

    .line 628
    :cond_b
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    .line 629
    const/4 v0, 0x1

    return v0
.end method

.method private showForWakeUpInternal(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 547
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 548
    .local v6, "callingUserId":I
    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    return v3

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "showForWakeUpInternal : user setup is not yet completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return v3

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 556
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 557
    :cond_2
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "showForWakeUpInternal : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_3
    return v3

    .line 561
    :cond_4
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 562
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    .line 561
    if-eqz v0, :cond_8

    .line 563
    :cond_5
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 564
    :cond_6
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "showForWakeUpInternal : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_7
    return v3

    .line 568
    :cond_8
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, v5, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_9

    .line 569
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "showForWakeUpInternal : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return v3

    .line 572
    :cond_9
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    .line 573
    const/4 v0, 0x1

    return v0
.end method

.method private verifyUserSetupCompleted()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    .line 122
    return-void
.end method


# virtual methods
.method public bindService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "condition"    # I
    .param p3, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 148
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->bind(Landroid/os/IBinder;ILandroid/content/ComponentName;)V

    .line 146
    return-void
.end method

.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string v1, "disableEdgeLighting"

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 255
    return-void
.end method

.method public disableEdgeLightingNotification(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "disable"    # Z

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->disableEdgeLighting(ILjava/lang/String;Z)V

    .line 261
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 730
    const-string v0, "[EdgeLightingManager]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 733
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public getEdgeLightingState()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->getEdgeLightingState()I

    move-result v0

    return v0
.end method

.method public hideForNotification(Landroid/service/notification/StatusBarNotification;I)Z
    .locals 8
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "callingUid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 439
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-nez v3, :cond_1

    .line 440
    :cond_0
    return v6

    .line 442
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 443
    .local v2, "sbnUserId":I
    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 444
    return v6

    .line 446
    :cond_2
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 447
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "hideForNotification : user setup is not yet completed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v6

    .line 450
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideForNotification : packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 453
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v3

    if-nez v3, :cond_4

    .line 454
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "hideForNotification : isOngoing is false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return v6

    .line 457
    :cond_4
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 458
    .local v0, "isInteractive":Z
    if-eqz v0, :cond_5

    .line 459
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "hideForNotification : isInteractive is true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return v6

    .line 463
    :cond_5
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 464
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v3

    .line 463
    if-nez v3, :cond_6

    .line 465
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, v7, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v3

    .line 463
    if-eqz v3, :cond_7

    .line 466
    :cond_6
    return v6

    .line 468
    :cond_7
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, v1, v7, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_a

    .line 469
    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_9

    .line 470
    :cond_8
    sget-object v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v4, "showForNotification : return false by isAcceptableApplication."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_9
    return v6

    .line 474
    :cond_a
    invoke-direct {p0, v1, v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideEdgeLightingInternal(Ljava/lang/String;I)V

    .line 475
    return v6
.end method

.method public hideForWakeLock(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .prologue
    .line 636
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 637
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideForWakeLock packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideForWakeLockInternal(Ljava/lang/String;II)V

    .line 635
    return-void
.end method

.method public hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    .line 646
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 647
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideForWakeLockByWindow : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->hideForWakeLockInternal(Ljava/lang/String;II)V

    .line 645
    return-void
.end method

.method public isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 238
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 240
    .local v0, "callingUserId":I
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    return v4

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v2

    .line 243
    if-nez v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v2

    .line 243
    if-nez v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v2

    .line 243
    if-nez v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    .line 248
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v1

    return v1

    .line 249
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 250
    :cond_2
    return v4
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->onBootCompleted()V

    .line 137
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mUserId:I

    .line 143
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->onSwitchUser(I)V

    .line 141
    return-void
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 169
    return-void
.end method

.method public showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .locals 13
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "attrs"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 268
    const-string v9, "isHeadUp"

    invoke-virtual {p2, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 269
    .local v3, "isHeadUp":Z
    const-string v9, "isUpdate"

    invoke-virtual {p2, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 270
    .local v6, "isUpdate":Z
    const-string v9, "isInterrupt"

    invoke-virtual {p2, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 271
    .local v5, "isIntercepted":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    if-nez v9, :cond_1

    .line 272
    :cond_0
    return v12

    .line 275
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 276
    .local v8, "sbnUserId":I
    invoke-direct {p0, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 277
    return v12

    .line 279
    :cond_2
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v9

    if-nez v9, :cond_3

    .line 280
    sget-object v9, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v10, "showForNotification : user setup is not yet completed"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v12

    .line 283
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v0, v9, Landroid/app/Notification;->ledARGB:I

    .line 285
    .local v0, "color":I
    iget-object v9, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v9}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    .line 286
    .local v4, "isInteractive":Z
    sget-boolean v9, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v9, :cond_4

    sget-boolean v9, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v9, :cond_6

    .line 287
    :cond_4
    sget-object v9, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showForNotification : isInteractive="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isHeadUp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", color="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 288
    const-string v11, ", sbn = "

    .line 287
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 295
    new-instance v2, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const/4 v9, 0x2

    new-array v9, v9, [I

    aput v0, v9, v12

    const/4 v10, 0x1

    aput v12, v9, v10

    const/16 v10, 0x7d1

    invoke-direct {v2, v10, v9}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(I[I)V

    .line 296
    .local v2, "info":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    iget-object v9, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v9, p1, v3, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZ)Landroid/os/Bundle;

    move-result-object v1

    .line 297
    .local v1, "data":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 298
    invoke-virtual {v2, v1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    .line 300
    :cond_5
    invoke-direct {p0, v4, v7, v2, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForTurnOverNotification(ZLjava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    .line 301
    return v12

    .line 290
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "info":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    :cond_6
    sget-object v9, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showForNotification : isInteractive="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isHeadUp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", color="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 291
    const-string v11, ", packageName = "

    .line 290
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :cond_7
    if-eqz v4, :cond_9

    .line 304
    if-eqz v5, :cond_8

    .line 305
    return v12

    .line 307
    :cond_8
    invoke-direct {p0, p1, v3, v6, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForNotificationScreenOn(Landroid/service/notification/StatusBarNotification;ZZI)Z

    move-result v9

    return v9

    .line 309
    :cond_9
    invoke-direct {p0, p1, v3, v6, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForNotificationScreenOff(Landroid/service/notification/StatusBarNotification;ZZI)Z

    move-result v9

    return v9
.end method

.method public showForResumedActivity(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->setResumedComponent(Landroid/content/ComponentName;)V

    .line 683
    return-void
.end method

.method public showForToast(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    const/4 v8, 0x1

    const/16 v5, 0x200

    const/4 v3, 0x0

    .line 482
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 483
    .local v6, "callingUserId":I
    invoke-direct {p0, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    return v3

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "showForToast : user setup is not yet completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v3

    .line 490
    :cond_1
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 491
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showForToast : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v8}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 496
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 497
    :cond_3
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "showForToast : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_4
    return v3

    .line 492
    :cond_5
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-eqz v0, :cond_2

    .line 493
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showForToast : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 501
    :cond_6
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 502
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    .line 501
    if-eqz v0, :cond_8

    .line 503
    :cond_7
    return v3

    .line 505
    :cond_8
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, v5, v6}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_b

    .line 506
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 507
    :cond_9
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "showForToast : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_a
    return v3

    .line 511
    :cond_b
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 512
    return v3

    .line 514
    :cond_c
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->getValidNotificationData(Ljava/lang/String;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    .line 515
    .local v7, "data":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
    if-eqz v7, :cond_d

    .line 516
    iget-object v2, v7, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    .line 517
    return v8

    .line 519
    :cond_d
    return v3
.end method

.method public showForWakeLock(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .prologue
    .line 580
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 581
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showForWakeLock : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeLockInternal(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 591
    .local v0, "screenOn":Z
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 592
    :cond_0
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showForWakeLockByWindow : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_1
    if-eqz v0, :cond_2

    .line 595
    const/4 v1, 0x0

    return v1

    .line 597
    :cond_2
    const/4 v1, 0x6

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeLockInternal(Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method public showForWakeUp(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .prologue
    .line 526
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showForWakeUp : packageName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeUpInternal(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 537
    .local v0, "screenOn":Z
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 538
    :cond_0
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showForWakeUpByWindow : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_1
    if-eqz v0, :cond_2

    .line 541
    const/4 v1, 0x0

    return v1

    .line 543
    :cond_2
    const/4 v1, 0x5

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->showForWakeUpInternal(Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method public startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string v1, "startEdgeLighting"

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V

    .line 194
    return-void
.end method

.method public statusBarDisabled(II)V
    .locals 1
    .param p1, "state1"    # I
    .param p2, "state2"    # I

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->statusBarDisabled(II)V

    .line 687
    return-void
.end method

.method public stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string v1, "stopEdgeLighting"

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->stopEdgeLighting(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public unbindService(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 157
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->unbind(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 164
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V

    .line 162
    return-void
.end method

.method public updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "policy"    # Lcom/samsung/android/edge/EdgeLightingPolicy;

    .prologue
    .line 184
    if-nez p2, :cond_0

    .line 185
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v1, "updateEdgeLightingPolicy : policy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 189
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->updateEdgeLightingPolicyFromHost(Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    .line 183
    return-void
.end method
